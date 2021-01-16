import 'package:auto_route/auto_route.dart';
import 'package:desafioToro/assets.dart';
import 'package:desafioToro/auth/presentation/pages/login/bloc/login_bloc.dart';
import 'package:desafioToro/auth/presentation/widgets/password_input.dart';
import 'package:desafioToro/common/presentation/widgets/cpf_input/bloc/cpf_input_bloc.dart';
import 'package:desafioToro/common/presentation/widgets/cpf_input/cpf_input.dart';
import 'package:desafioToro/common/presentation/widgets/email_input/email_input.dart';
import 'package:desafioToro/constant.dart';
import 'package:desafioToro/injection.dart';
import 'package:desafioToro/strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginPage extends StatefulWidget with AutoRouteWrapper {
  LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();

  @override
  Widget wrappedRoute(BuildContext context) => MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => getIt<CpfInputBloc>(),
          ),
          BlocProvider(
            create: (context) => getIt<LoginBloc>(),
          ),
        ],
        child: this,
      );
}

class _LoginPageState extends State<LoginPage>
    with SingleTickerProviderStateMixin {
  final TextEditingController cpfController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    tabController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginBloc, LoginState>(
      listener: _handleLoginSubmit,
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(
                left: 32.w, right: 32.w, bottom: 8.h, top: 80.h),
            child: BlocBuilder<LoginBloc, LoginState>(
              builder: (context, state) {
                return Column(
                  children: [
                    _buildHeader(),
                    SizedBox(height: 32.h),
                    _buildTabSwitcher(state.isCpfLogin),
                    SizedBox(height: 16.h),
                    _buildTabForm(),
                    _buildSignInBtn(state.isValidForm),
                    SizedBox(height: 8.h),
                    _buildSignUpLabel()
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTabForm() {
    return SizedBox(
      height: 200.h,
      child: TabBarView(
        controller: tabController,
        physics: NeverScrollableScrollPhysics(),
        children: [
          _buildCpfLogin(),
          _buildEmailLogin(),
        ],
      ),
    );
  }

  Container _buildTabSwitcher(bool isCpfLogin) {
    return Container(
      height: 45.h,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.grey[350],
        borderRadius: BorderRadius.all(
          Radius.circular(32),
        ),
      ),
      child: Stack(
        fit: StackFit.expand,
        children: [
          _buildAnimationSelect(isCpfLogin),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(
                onTap: () => _onChangeTab(true),
                child: Text(Strings.cpf.toUpperCase()),
              ),
              GestureDetector(
                onTap: () => _onChangeTab(false),
                child: Text(Strings.email),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildAnimationSelect(bool isCpfLogin) {
    return AnimatedPositioned(
      curve: Curves.easeOutExpo,
      duration: Duration(seconds: 1),
      bottom: 5.h,
      top: 5.h,
      left: isCpfLogin ? 5.w : 150.w,
      right: isCpfLogin ? 150.w : 5.w,
      child: GestureDetector(
        onPanEnd: (details) {
          final double _dx = details.velocity.pixelsPerSecond.dx;
          if (_dx > 0) {
            _onChangeTab(false);
          } else {
            _onChangeTab(true);
          }
        },
        child: Container(
          width: double.infinity / 2,
          decoration: BoxDecoration(
            color: Colors.grey[50],
            borderRadius: BorderRadius.all(
              Radius.circular(32),
            ),
          ),
        ),
      ),
    );
  }

  Text _buildSignUpLabel() {
    return Text.rich(
      TextSpan(
        text: Strings.dontHaveAccount + " ",
        children: [
          TextSpan(
            text: Strings.signUp,
            style: TextStyle(
              color: AppColors.primary,
              decoration: TextDecoration.underline,
            ),
          ),
        ],
      ),
    );
  }

  RaisedButton _buildSignInBtn(bool isValidForm) {
    return RaisedButton(
      onPressed: _onSubmit,
      child: Center(
        child: Text(
          Strings.signIn,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  Column _buildCpfLogin() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CpfInput(
          onChange: (v) =>
              _onChangeFormInput(password: passwordController.text, cpf: ""),
          onValidCpf: (v) =>
              _onChangeFormInput(password: passwordController.text, cpf: v),
          textEditingController: cpfController,
        ),
        SizedBox(height: 16.h),
        Flexible(
          child: PasswordInput(
            textEditingController: passwordController,
            onChange: (password) => _onChangeFormInput(
              password: password,
              email: emailController.text,
              cpf: cpfController.text,
            ),
          ),
        ),
        SizedBox(height: 8.h),
        _buildForgotPasswordLabel(),
      ],
    );
  }

  Text _buildForgotPasswordLabel() {
    return Text(
      Strings.forgotPassword,
      style: TextStyle(color: AppColors.primary),
    );
  }

  Column _buildEmailLogin() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        EmailInput(
          onChange: (email) => _onChangeFormInput(
              password: passwordController.text, email: email),
        ),
        SizedBox(height: 16.h),
        PasswordInput(
          textEditingController: passwordController,
          onChange: (password) => _onChangeFormInput(
            password: password,
            email: emailController.text,
            cpf: cpfController.text,
          ),
        ),
        SizedBox(height: 8.h),
        _buildForgotPasswordLabel(),
      ],
    );
  }

  Column _buildHeader() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [_buildLogo(), SizedBox(height: 32.h), _buildLoginLabel()],
    );
  }

  Image _buildLogo() {
    return Image.asset(
      Assets.logoHorizontal,
      height: 30.h,
    );
  }

  Text _buildLoginLabel() {
    return Text.rich(
      TextSpan(
        text: Strings.theEasiestWayTo + " ",
        children: [
          TextSpan(
            text: Strings.invest + " ",
            style: TextStyle(
              color: AppColors.primary,
            ),
          ),
          TextSpan(
            text: Strings.stockExchanges + ".",
          )
        ],
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: FontSize.extraHeader.sp,
        ),
      ),
    );
  }

  void _handleLoginSubmit(BuildContext context, LoginState state) {
    if (state.unexpectedError != null && state.unexpectedError.isNotEmpty) {
      // TODO: SnackBar;
    }

    if (state.isCpfLogin) {
      tabController.animateTo(0);
    } else {
      tabController.animateTo(1);
    }
  }

  void _onChangeTab(bool toCpf) {
    FocusScope.of(context).unfocus();
    passwordController.text = "";
    cpfController.text = "";
    emailController.text = "";

    context.read<LoginBloc>().add(
          LoginEvent.onTabChange(toCpf ? 0 : 1),
        );
  }

  void _onChangeFormInput(
          {String cpf, String email, @required String password}) =>
      context.read<LoginBloc>().add(
            LoginEvent.onChangeForm(
              password: password ?? "",
              email: email ?? "",
              cpf: cpf ?? "",
            ),
          );

  void _onSubmit() => context.read<LoginBloc>().add(
        LoginEvent.onTabLogin(
          password: passwordController.text,
          email: tabController.index == 0 ? null : emailController.text,
          cpf: tabController.index == 0 ? cpfController.text : null,
        ),
      );
}
