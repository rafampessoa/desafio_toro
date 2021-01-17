import 'package:desafioToro/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BaseRaisedButton extends StatelessWidget {
  final String text;
  final bool isValid, isLoading;
  final Function onTap;
  final Color backgroundColor, textColor;

  const BaseRaisedButton({
    Key key,
    @required this.text,
    this.isValid = true,
    this.isLoading = false,
    @required this.onTap,
    this.backgroundColor,
    this.textColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      color: backgroundColor,
      onPressed: isValid ? onTap : null,
      child: AnimatedSwitcher(
        duration: Duration(milliseconds: 200),
        child: Center(
          child: isLoading
              ? CircularProgressIndicator(
                  backgroundColor: Colors.white,
                  strokeWidth: 1,
                )
              : Text(
                  text,
                  style: TextStyle(
                    color: textColor != null
                        ? textColor
                        : backgroundColor != null
                            ? backgroundColor.computeLuminance() > .5
                                ? AppColors.primary
                                : Colors.white
                            : Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: FontSize.body.sp,
                  ),
                ),
        ),
      ),
    );
  }
}
