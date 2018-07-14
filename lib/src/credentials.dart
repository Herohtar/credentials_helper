import 'dart:convert';
import 'dart:io';

import 'package:json_annotation/json_annotation.dart';

part 'credentials.g.dart';

/// Holds various types of credentials
@JsonSerializable(includeIfNull: false)
class Credentials extends Object with _$CredentialsSerializerMixin {
  final String apiKey;

  final String username;

  final String password;

  /// Constructs a new [Credentials] object.
  Credentials(
    {
      this.apiKey,
      this.username,
      this.password
    }
  );

  /// Constructs a new [Credentials] object from a JSON map
  factory Credentials.fromJson(Map<String, dynamic> json) => _$CredentialsFromJson(json);

  /// Constructs a new [Credentials] object from a JSON file
  factory Credentials.fromFile(String fileName) {
    return Credentials.fromJson(json.decode(File(fileName).readAsStringSync()));
  }

  /// Writes the current [Credentials] to a JSON file
  void toFile(String fileName) {
    File(fileName).writeAsStringSync(json.encode(this.toJson()), flush: true);
  }
}
