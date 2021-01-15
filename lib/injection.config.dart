// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'auth/presentation/bloc/auth_bloc.dart';
import 'auth/data/datasources/auth_local_data_source.dart';
import 'auth/domain/repository/auth_repository.dart';
import 'auth/data/repository/auth_repository_impl.dart';
import 'auth/domain/usecases/is_logged_use_case.dart';
import 'auth/domain/usecases/is_logged_use_case_impl.dart';
import 'auth/domain/entities/secure_storage.dart';

/// adds generated dependencies
/// to the provided [GetIt] instance

GetIt $initGetIt(
  GetIt get, {
  String environment,
  EnvironmentFilter environmentFilter,
}) {
  final gh = GetItHelper(get, environment, environmentFilter);
  gh.lazySingleton<SecureStorage>(() => SecureStorage());
  gh.lazySingleton<AuthLocalDataSource>(
      () => AuthLocalDataSourceImpl(get<SecureStorage>()));
  gh.lazySingleton<AuthRepository>(
      () => AuthRepositoryImpl(get<AuthLocalDataSource>()));
  gh.lazySingleton<IsLoggedUseCase>(
      () => IsLoggedUseCaseImpl(get<AuthRepository>()));
  gh.lazySingleton<AuthBloc>(() => AuthBloc(get<IsLoggedUseCase>()));
  return get;
}
