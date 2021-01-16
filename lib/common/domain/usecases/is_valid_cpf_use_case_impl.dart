import 'package:cpf_cnpj_validator/cpf_validator.dart';
import 'package:desafioToro/common/domain/usecases/is_valid_cpf_use_case.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IsValidCpfUseCase)
class IsValidCpfUseCaseImpl implements IsValidCpfUseCase {
  @override
  bool call(String cpf) => CPFValidator.isValid(cpf);
}
