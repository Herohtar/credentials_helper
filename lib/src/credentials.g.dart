// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'credentials.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Credentials _$CredentialsFromJson(Map<String, dynamic> json) {
  return Credentials(
      apiKey: json['api_key'] as String,
      username: json['username'] as String,
      password: json['password'] as String);
}

Map<String, dynamic> _$CredentialsToJson(Credentials instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('api_key', instance.apiKey);
  writeNotNull('username', instance.username);
  writeNotNull('password', instance.password);
  return val;
}
