import 'package:desafioToro/common/domain/usecases/is_valid_email_use_case.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IsValidEmailUseCase)
class IsValidCpfUseCaseImpl implements IsValidEmailUseCase {
  @override
  bool call(String email) => RegExp(
          r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
      .hasMatch(email);
}
