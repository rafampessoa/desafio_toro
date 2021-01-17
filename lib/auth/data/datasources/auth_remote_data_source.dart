import 'package:injectable/injectable.dart';

abstract class AuthRemoteDataSource {
  Future<String> login(String login, String password);
}

@LazySingleton(as: AuthRemoteDataSource)
class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
  @override
  Future<String> login(String login, String password) async {
    //TODO: API CALL
    await Future.delayed(Duration(seconds: 2));
    return "FAKE_TOKEN";
  }
}
