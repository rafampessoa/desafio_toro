import 'package:desafioToro/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BaseTextField extends StatefulWidget {
  final String labelText, errorText;
  final TextInputType textInputType;
  final List<TextInputFormatter> inputFormatters;
  final Function(String) onChanged;
  final bool obscureText, readOnly, autofocus;
  final TextEditingController textEditingController;
  final double fontSize;
  final FocusNode focusNode;

  const BaseTextField({
    @required this.labelText,
    this.textInputType,
    this.inputFormatters,
    this.onChanged,
    this.errorText,
    this.obscureText = false,
    this.textEditingController,
    this.fontSize,
    this.readOnly = false,
    this.focusNode,
    this.autofocus = false,
  });

  @override
  _BaseTextFieldState createState() => _BaseTextFieldState();
}

class _BaseTextFieldState extends State<BaseTextField> {
  bool _obscureText;

  @override
  void initState() {
    super.initState();
    _obscureText = widget.obscureText;
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      autofocus: widget.autofocus,
      focusNode: widget.focusNode,
      readOnly: widget.readOnly,
      controller: widget.textEditingController,
      obscureText: _obscureText,
      onChanged: widget.onChanged,
      inputFormatters: widget.inputFormatters,
      keyboardType: widget.textInputType,
      style: TextStyle(
        color: widget.errorText == null ? Colors.black : AppColors.invalidField,
        fontSize: widget.fontSize ?? FontSize.body.sp,
        fontWeight: FontWeight.bold,
      ),
      decoration: InputDecoration(
        errorText: widget.errorText,
        errorStyle: TextStyle(
          color: AppColors.invalidField,
          fontSize: FontSize.body.sp,
        ),
        suffixIcon: widget.obscureText
            ? IconButton(
                icon: Icon(_obscureText
                    ? Icons.visibility_outlined
                    : Icons.visibility_off_outlined),
                onPressed: onTapObscureText,
              )
            : null,
        isDense: true,
        labelText: widget.labelText,
        labelStyle: TextStyle(
          fontSize: FontSize.body.sp,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  void onTapObscureText() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }
}
