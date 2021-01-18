import 'package:desafioToro/common/domain/usecases/is_valid_cpf_use_case_impl.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Invalid CPF should return false', () async {
    IsValidCpfUseCaseImpl isValidCpfUseCase = IsValidCpfUseCaseImpl();
    final invalidCpf = "33333333333";
    final bool isValid = isValidCpfUseCase(invalidCpf);

    expect(isValid, false);
  });

  test('valid CPF should return true', () async {
    IsValidCpfUseCaseImpl isValidCpfUseCase = IsValidCpfUseCaseImpl();
    final validCpf = "03984490585";
    final bool isValid = isValidCpfUseCase(validCpf);

    expect(isValid, true);
  });
}
