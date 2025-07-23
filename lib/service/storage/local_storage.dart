import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class LocalStorage {
  final storage = FlutterSecureStorage();

  Future<bool> setValue({required String key, required String value}) async {
    await storage.write(key: key, value: value);
    return true;
  }

  Future<dynamic> readValue({required dynamic key}) async {
    return await storage.read(key: key);
  }

  Future<bool> clearValue({required dynamic key}) async {
    await storage.delete(key: key);
    return true;
  }
}
