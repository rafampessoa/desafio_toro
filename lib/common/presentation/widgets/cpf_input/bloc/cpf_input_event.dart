part of 'cpf_input_bloc.dart';

@freezed
abstract class CpfInputEvent with _$CpfInputEvent {
  const factory CpfInputEvent.onChange(String cpf) = _CpfInputOnChange;
}
