import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class LocalStorage {
  final storage = FlutterSecureStorage();

  Future<bool> setValue({required String key, required String value}) async {
    print("key:$key  value:$value ");
    await storage.write(key: key, value: value);
    return true;
  }

  Future<dynamic> readValue({required dynamic key}) async {
    print("readValue :$key");
    var readValue = await storage.read(key: key);
    print("readValue :$readValue");
    return readValue;
  }

  Future<bool> clearValue({required dynamic key}) async {
    await storage.delete(key: key);
    return true;
  }
}
