// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'credentials.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line
// ignore_for_file: annotate_overrides
// ignore_for_file: avoid_annotating_with_dynamic
// ignore_for_file: avoid_returning_this
// ignore_for_file: omit_local_variable_types
// ignore_for_file: prefer_expression_function_bodies
// ignore_for_file: sort_constructors_first

Serializer<Credentials> _$credentialsSerializer = new _$CredentialsSerializer();

class _$CredentialsSerializer implements StructuredSerializer<Credentials> {
  @override
  final Iterable<Type> types = const [Credentials, _$Credentials];
  @override
  final String wireName = 'Credentials';

  @override
  Iterable serialize(Serializers serializers, Credentials object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.apiKey != null) {
      result
        ..add('api_key')
        ..add(serializers.serialize(object.apiKey,
            specifiedType: const FullType(String)));
    }
    if (object.username != null) {
      result
        ..add('username')
        ..add(serializers.serialize(object.username,
            specifiedType: const FullType(String)));
    }
    if (object.password != null) {
      result
        ..add('password')
        ..add(serializers.serialize(object.password,
            specifiedType: const FullType(String)));
    }

    return result;
  }

  @override
  Credentials deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CredentialsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'api_key':
          result.apiKey = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'username':
          result.username = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'password':
          result.password = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Credentials extends Credentials {
  @override
  final String apiKey;
  @override
  final String username;
  @override
  final String password;

  factory _$Credentials([void updates(CredentialsBuilder b)]) =>
      (new CredentialsBuilder()..update(updates)).build();

  _$Credentials._({this.apiKey, this.username, this.password}) : super._();

  @override
  Credentials rebuild(void updates(CredentialsBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  CredentialsBuilder toBuilder() => new CredentialsBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! Credentials) return false;
    return apiKey == other.apiKey &&
        username == other.username &&
        password == other.password;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc(0, apiKey.hashCode), username.hashCode), password.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Credentials')
          ..add('apiKey', apiKey)
          ..add('username', username)
          ..add('password', password))
        .toString();
  }
}

class CredentialsBuilder implements Builder<Credentials, CredentialsBuilder> {
  _$Credentials _$v;

  String _apiKey;
  String get apiKey => _$this._apiKey;
  set apiKey(String apiKey) => _$this._apiKey = apiKey;

  String _username;
  String get username => _$this._username;
  set username(String username) => _$this._username = username;

  String _password;
  String get password => _$this._password;
  set password(String password) => _$this._password = password;

  CredentialsBuilder();

  CredentialsBuilder get _$this {
    if (_$v != null) {
      _apiKey = _$v.apiKey;
      _username = _$v.username;
      _password = _$v.password;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Credentials other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$Credentials;
  }

  @override
  void update(void updates(CredentialsBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$Credentials build() {
    final _$result = _$v ??
        new _$Credentials._(
            apiKey: apiKey, username: username, password: password);
    replace(_$result);
    return _$result;
  }
}
