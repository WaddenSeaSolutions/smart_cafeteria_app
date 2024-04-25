import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class JWTTokenStorage {
  // Create an instance of FlutterSecureStorage
  final FlutterSecureStorage _storage = FlutterSecureStorage();

  // Key for the JWT token
  final String _jwtKey = 'jwt_token';

  // Method to store the JWT token
  Future<void> storeJWTToken(String token) async {
    await _storage.write(key: _jwtKey, value: token);
  }

  // Method to retrieve the JWT token
  Future<String?> retrieveJWTToken() async {
    return await _storage.read(key: _jwtKey);
  }

  // Method to delete the JWT token
  Future<void> deleteJWTToken() async {
    await _storage.delete(key: _jwtKey);
  }
}
