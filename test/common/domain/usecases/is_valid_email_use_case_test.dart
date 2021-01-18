import 'package:desafioToro/common/domain/usecases/is_valid_email_use_case_impl.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Invalid Email should return false', () async {
    IsValidEmailUseCaseImpl isValidEmailUseCase = IsValidEmailUseCaseImpl();
    final invalidEmail = "33333333333";
    final bool isValid = isValidEmailUseCase(invalidEmail);

    expect(isValid, false);
  });

  test('valid CPF should return true', () async {
    IsValidEmailUseCaseImpl isValidEmailUseCase = IsValidEmailUseCaseImpl();
    final validEmail = "rafael@teste.asd";
    final bool isValid = isValidEmailUseCase(validEmail);

    expect(isValid, true);
  });
}
