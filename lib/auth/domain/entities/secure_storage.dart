import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class SecureStorage extends FlutterSecureStorage {
  const SecureStorage() : super();
}
