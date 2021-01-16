import 'package:auto_route/auto_route.dart';
import 'package:desafioToro/assets.dart';
import 'package:desafioToro/constant.dart';
import 'package:desafioToro/router.gr.dart';
import 'package:desafioToro/strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class OnboardingPage extends StatefulWidget {
  @override
  _OnboardingPageState createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
        child: Column(
          children: [
            SizedBox(
              height: 80.h,
            ),
            _buildPageView(),
            _buildDots(),
            SizedBox(
              height: 24.h,
            ),
            _buildButtons(),
          ],
        ),
      ),
    );
  }

  Row _buildDots() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _buildDot(isSelected: currentPage == 0),
        _buildDot(isSelected: currentPage == 1),
        _buildDot(isSelected: currentPage == 2),
        _buildDot(isSelected: currentPage == 3),
      ],
    );
  }

  Padding _buildDot({bool isSelected = false}) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 4.w),
      child: AnimatedContainer(
        duration: Duration(milliseconds: 200),
        height: 10,
        width: 10,
        decoration: BoxDecoration(
          color: isSelected ? AppColors.primary : AppColors.grey,
          shape: BoxShape.circle,
        ),
      ),
    );
  }

  Expanded _buildButtons() {
    return Expanded(
      flex: 2,
      child: Column(
        children: [
          _buildOpenAccountBtn(),
          SizedBox(
            height: 8.h,
          ),
          _buildSignInBtn(),
        ],
      ),
    );
  }

  Expanded _buildPageView() {
    return Expanded(
      flex: 7,
      child: PageView(
        onPageChanged: (int page) {
          setState(() {
            currentPage = page;
          });
        },
        children: [
          _buildStepOne(),
          _buildStepTwo(),
          _buildStepThree(),
          _buildStepFour(),
        ],
      ),
    );
  }

  Column _buildStepOne() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        _buildPageViewTitle(Strings.onboardingStep01Label),
        _buildPageViewImage(Assets.onBoardingStep1),
      ],
    );
  }

  Text _buildPageViewTitle(String text) {
    return Text(
      text,
      style: TextStyle(
        fontSize: FontSize.header.sp,
      ),
      textAlign: TextAlign.center,
    );
  }

  Column _buildStepTwo() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        _buildPageViewImage(Assets.onBoardingStep2),
        Column(
          children: [
            _buildPageViewTitle(
              Strings.onboardingStep02Title,
            ),
            SizedBox(
              height: 8.h,
            ),
            Text(
              Strings.onboardingStep02Description,
              style: TextStyle(
                fontSize: FontSize.body.sp,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ],
    );
  }

  Column _buildStepThree() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        _buildPageViewImage(Assets.onBoardingStep3),
        Column(
          children: [
            _buildPageViewTitle(
              Strings.onboardingStep03Title,
            ),
            SizedBox(
              height: 8.h,
            ),
            Text(
              Strings.onboardingStep03Description,
              style: TextStyle(
                fontSize: FontSize.body.sp,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ],
    );
  }

  Column _buildStepFour() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        _buildPageViewImage(Assets.onBoardingStep4),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            _buildPageViewTitle(
              Strings.onboardingStep04Title,
            ),
            SizedBox(
              height: 8.h,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildStepFourRow(Strings.onboardingStep04Tip01),
                _buildStepFourRow(Strings.onboardingStep04Tip02),
                _buildStepFourRow(Strings.onboardingStep04Tip03),
              ],
            )
          ],
        ),
      ],
    );
  }

  Row _buildStepFourRow(String text) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(
          Icons.check,
          color: AppColors.primary,
        ),
        SizedBox(
          width: 6.w,
        ),
        Text(text)
      ],
    );
  }

  SvgPicture _buildPageViewImage(String path) {
    return SvgPicture.asset(
      path,
      height: 250.h,
    );
  }

  OutlineButton _buildSignInBtn() {
    return OutlineButton(
      onPressed: () => ExtendedNavigator.of(context).replace(Routes.loginPage),
      borderSide: BorderSide(
        color: AppColors.primary,
      ),
      child: Center(
        child: Text(
          Strings.signIn,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: AppColors.primary,
          ),
        ),
      ),
    );
  }

  RaisedButton _buildOpenAccountBtn() {
    return RaisedButton(
      onPressed: () => null,
      child: Center(
        child: Text(
          Strings.openYourAccount,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
