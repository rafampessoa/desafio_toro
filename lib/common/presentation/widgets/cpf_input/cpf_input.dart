import 'package:desafioToro/common/presentation/widgets/cpf_input/base_text_field.dart';
import 'package:desafioToro/common/presentation/widgets/cpf_input/bloc/cpf_input_bloc.dart';
import 'package:desafioToro/strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class CpfInput extends StatefulWidget {
  final String errorText;
  final Function(String) onValidCpf, onChange;
  final TextEditingController textEditingController;

  const CpfInput({
    Key key,
    this.errorText,
    this.onValidCpf,
    this.onChange,
    this.textEditingController,
  }) : super(key: key);

  @override
  _CpfInputState createState() => _CpfInputState();
}

class _CpfInputState extends State<CpfInput> {
  final mask = MaskTextInputFormatter(
      mask: '###.###.###-##', filter: {"#": RegExp(r'[0-9]')});

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CpfInputBloc, CpfInputState>(
      listener: (prevState, state) => _reactToValidCpf(state),
      builder: (context, state) {
        return BaseTextField(
          textEditingController: widget.textEditingController,
          onChanged: (cpf) {
            context.read<CpfInputBloc>().add(CpfInputEvent.onChange(cpf));
            if (widget.onChange != null) {
              widget.onChange(cpf);
            }
          },
          labelText: Strings.cpf.toUpperCase(),
          textInputType: TextInputType.number,
          inputFormatters: [mask],
          errorText: state.isInitial
              ? null
              : widget.errorText ?? (state.isValid ? null : Strings.invalidCpf),
        );
      },
    );
  }

  void _reactToValidCpf(CpfInputState state) {
    if (!state.isInitial) {
      if (state.isValid && widget.onValidCpf != null) {
        widget.onValidCpf(
          mask.getUnmaskedText(),
        );
      }
    }
  }
}
