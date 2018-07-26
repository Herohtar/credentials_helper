import 'dart:convert';
import 'dart:io';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';

part 'credentials.g.dart';

/// Holds various types of credentials
abstract class Credentials implements Built<Credentials, CredentialsBuilder> {
  @nullable
  @BuiltValueField(wireName: 'api_key')
  String get apiKey;

  @nullable
  String get username;

  @nullable
  String get password;

  Credentials._();

  /// Constructs a new [Credentials] object.
  factory Credentials({String apiKey, String username, String password}) = _$Credentials._;

  static Serializer<Credentials> get serializer => _$credentialsSerializer;
  static Serializers _serializers =
    (new Serializers().toBuilder()..add(serializer)..addPlugin(new StandardJsonPlugin())).build();

  /// Constructs a new [Credentials] object from a JSON map
  factory Credentials.fromJson(Map<String, dynamic> json) {
    return _serializers.deserializeWith(serializer, json);
  }

  /// Constructs a new [Credentials] object from a JSON file
  factory Credentials.fromFile(String fileName) {
    return Credentials.fromJson(json.decode(File(fileName).readAsStringSync()));
  }

  /// Returns a JSON map of the [Credentials]
  Map<String, dynamic> toJson() {
    return _serializers.serializeWith(serializer, this);
  }

  /// Writes the current [Credentials] to a JSON file
  void toFile(String fileName) {
    File(fileName).writeAsStringSync(json.encode(this.toJson()), flush: true);
  }
}
