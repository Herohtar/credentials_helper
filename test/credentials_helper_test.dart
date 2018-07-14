import 'dart:convert';
import 'dart:io';

import 'package:test/test.dart';
import 'package:credentials_helper/credentials_helper.dart';

void main() {
  const String apiKey = 'test-api-key';
  const String username = 'testUserName';
  const String password = 'testPassword';
  const String fileName = 'test_credentials.json';
  const String jsonString = '{"apiKey":"$apiKey","username":"$username","password":"$password"}';

  test('tests the default constructor', () {
    Credentials credentials = Credentials(
      apiKey: apiKey,
      username: username,
      password: password
    );

    expect(credentials.apiKey, apiKey);
    expect(credentials.username, username);
    expect(credentials.password, password);
    expect(json.encode(credentials.toJson()), jsonString);
  });

  test('tests the .fromJson constructor', () {
    Credentials credentials = Credentials.fromJson(json.decode(jsonString));

    expect(credentials.apiKey, apiKey);
    expect(credentials.username, username);
    expect(credentials.password, password);
    expect(json.encode(credentials.toJson()), jsonString);
  });

  test('tests .toFile and .fromFile', () {
    Credentials originalCredentials = Credentials.fromJson(json.decode(jsonString));

    if (File(fileName).existsSync()) {
      File(fileName).deleteSync();
    }

    originalCredentials.toFile(fileName);
    expect(File(fileName).existsSync(), true);
    expect(File(fileName).readAsStringSync(), jsonString);

    Credentials newCredentials = Credentials.fromFile(fileName);
    expect(newCredentials.apiKey, originalCredentials.apiKey);
    expect(newCredentials.username, originalCredentials.username);
    expect(newCredentials.password, originalCredentials.password);

    File(fileName).deleteSync();
  });
}
