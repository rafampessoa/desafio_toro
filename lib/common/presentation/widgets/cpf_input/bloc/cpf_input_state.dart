part of 'cpf_input_bloc.dart';

@freezed
abstract class CpfInputState with _$CpfInputState {
  const factory CpfInputState({
    bool isInitial,
    bool isValid,
  }) = _CpfInputState;

  factory CpfInputState.initial() =>
      CpfInputState(isValid: false, isInitial: true);
}
