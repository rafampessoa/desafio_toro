// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'auth/presentation/bloc/auth_bloc.dart';
import 'auth/data/datasources/auth_local_data_source.dart';
import 'auth/data/datasources/auth_remote_data_source.dart';
import 'auth/domain/repository/auth_repository.dart';
import 'auth/data/repository/auth_repository_impl.dart';
import 'common/presentation/widgets/cpf_input/bloc/cpf_input_bloc.dart';
import 'auth/domain/usecases/is_logged_use_case.dart';
import 'auth/domain/usecases/is_logged_use_case_impl.dart';
import 'common/domain/usecases/is_valid_cpf_use_case.dart';
import 'common/domain/usecases/is_valid_cpf_use_case_impl.dart';
import 'common/domain/usecases/is_valid_email_use_case_impl.dart'
    as desafioToro;
import 'common/domain/usecases/is_valid_email_use_case.dart';
import 'auth/presentation/pages/login/bloc/login_bloc.dart';
import 'auth/domain/usecases/login_use_case.dart';
import 'auth/domain/usecases/login_use_case_impl.dart';
import 'auth/domain/usecases/logout_use_case.dart';
import 'auth/domain/usecases/logout_use_case_impl.dart';
import 'auth/domain/entities/secure_storage.dart';

/// adds generated dependencies
/// to the provided [GetIt] instance

GetIt $initGetIt(
  GetIt get, {
  String environment,
  EnvironmentFilter environmentFilter,
}) {
  final gh = GetItHelper(get, environment, environmentFilter);
  gh.lazySingleton<AuthRemoteDataSource>(() => AuthRemoteDataSourceImpl());
  gh.lazySingleton<IsValidCpfUseCase>(() => IsValidCpfUseCaseImpl());
  gh.lazySingleton<IsValidEmailUseCase>(
      () => desafioToro.IsValidCpfUseCaseImpl());
  gh.lazySingleton<SecureStorage>(() => SecureStorage());
  gh.lazySingleton<AuthLocalDataSource>(
      () => AuthLocalDataSourceImpl(get<SecureStorage>()));
  gh.lazySingleton<AuthRepository>(() => AuthRepositoryImpl(
      get<AuthLocalDataSource>(), get<AuthRemoteDataSource>()));
  gh.factory<CpfInputBloc>(() => CpfInputBloc(get<IsValidCpfUseCase>()));
  gh.lazySingleton<IsLoggedUseCase>(
      () => IsLoggedUseCaseImpl(get<AuthRepository>()));
  gh.lazySingleton<LoginUseCase>(() => LoginUseCaseImpl(get<AuthRepository>()));
  gh.lazySingleton<LogoutUseCase>(
      () => LogoutUseCaseImpl(get<AuthRepository>()));
  gh.lazySingleton<AuthBloc>(
      () => AuthBloc(get<IsLoggedUseCase>(), get<LogoutUseCase>()));
  gh.factory<LoginBloc>(() => LoginBloc(
        get<IsValidEmailUseCase>(),
        get<LoginUseCase>(),
        get<AuthBloc>(),
      ));
  return get;
}
