import 'package:desafioToro/strings.dart';
import 'package:flushbar/flushbar.dart';
import 'package:flutter/material.dart';

void showErrorSnackbar(BuildContext context, {String title, String text}) {
  Flushbar(
    title: title ?? Strings.unexpectedError,
    message: text ?? Strings.unexpectedErrorDescription,
    duration: Duration(seconds: 3),
    flushbarStyle: FlushbarStyle.FLOATING,
    margin: EdgeInsets.all(8),
    borderRadius: 8,
    flushbarPosition: FlushbarPosition.TOP,
  )..show(context);
}
