import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:desafioToro/common/domain/usecases/is_valid_cpf_use_case.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'cpf_input_event.dart';
part 'cpf_input_state.dart';
part 'cpf_input_bloc.freezed.dart';

@injectable
class CpfInputBloc extends Bloc<CpfInputEvent, CpfInputState> {
  final IsValidCpfUseCase isValidCpfUseCase;
  CpfInputBloc(this.isValidCpfUseCase) : super(CpfInputState.initial());

  @override
  Stream<CpfInputState> mapEventToState(
    CpfInputEvent event,
  ) async* {
    yield* event.map(onChange: _mapEventToValidCpf);
  }

  Stream<CpfInputState> _mapEventToValidCpf(_CpfInputOnChange event) async* {
    if (event.cpf.length < 14) {
      yield CpfInputState.initial();
      return;
    }

    final isValid = isValidCpfUseCase(event.cpf);
    if (isValid) {
      yield state.copyWith(isValid: true, isInitial: false);
    } else {
      yield state.copyWith(isValid: false, isInitial: false);
    }
  }
}
