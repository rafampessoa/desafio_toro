import 'package:desafioToro/common/presentation/widgets/cpf_input/base_text_field.dart';
import 'package:desafioToro/strings.dart';
import 'package:flutter/material.dart';

class EmailInput extends StatelessWidget {
  final Function(String) onChange;
  final TextEditingController textEditingController;
  final String label;
  final bool invalidEmail;

  const EmailInput({
    Key key,
    this.textEditingController,
    this.onChange,
    this.label,
    this.invalidEmail = false,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BaseTextField(
      textEditingController: textEditingController,
      labelText: label ?? Strings.email,
      textInputType: TextInputType.emailAddress,
      onChanged: (v) => onChange == null ? null : onChange(v),
      errorText: invalidEmail ? Strings.invalidEmail : null,
    );
  }
}
