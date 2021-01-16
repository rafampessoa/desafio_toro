import 'package:desafioToro/common/presentation/widgets/cpf_input/base_text_field.dart';
import 'package:desafioToro/strings.dart';
import 'package:flutter/material.dart';

class PasswordInput extends StatelessWidget {
  final Function(String) onChange;
  final TextEditingController textEditingController;
  final String label, errorText;

  const PasswordInput({
    Key key,
    this.textEditingController,
    this.onChange,
    this.label,
    this.errorText,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BaseTextField(
      textEditingController: textEditingController,
      labelText: label ?? Strings.password,
      obscureText: true,
      onChanged: (v) => onChange == null ? null : onChange(v),
      errorText: errorText,
    );
  }
}
