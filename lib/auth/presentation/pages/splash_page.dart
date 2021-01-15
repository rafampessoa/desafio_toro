import 'package:desafioToro/assets.dart';
import 'package:desafioToro/constant.dart';
import 'package:desafioToro/strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;
  Animation<double> _animation;

  static final Animatable<double> _offsetTween =
      Tween<double>(begin: 0, end: 1).chain(CurveTween(curve: Curves.easeOut));

  @override
  void initState() {
    _controller =
        AnimationController(vsync: this, duration: Duration(seconds: 2));
    _animation = _offsetTween.animate(_controller);

    _controller.forward();
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: _buildGradient(),
        ),
        child: _buildContent(),
      ),
    );
  }

  Center _buildContent() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _buildLogo(),
          _buildAnimation(),
        ],
      ),
    );
  }

  AnimatedBuilder _buildAnimation() {
    return AnimatedBuilder(
      animation: _animation,
      builder: (_, child) {
        return Transform.translate(
          offset: Offset(0, _animation.value * 40),
          child: Opacity(
            opacity: _animation.value,
            child: child,
          ),
        );
      },
      child: _buildText(),
    );
  }

  Text _buildText() {
    return Text(
      Strings.toroInvestimentos,
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: FontSize.bigHeader.sp,
        color: Colors.white.withOpacity(.9),
        letterSpacing: 3,
      ),
    );
  }

  ClipRRect _buildLogo() {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: Image.asset(
        Assets.logo,
        height: 200.h,
      ),
    );
  }

  LinearGradient _buildGradient() => LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        stops: [.3, 1],
        colors: [
          AppColors.primary,
          AppColors.secondary,
        ],
      );
}
