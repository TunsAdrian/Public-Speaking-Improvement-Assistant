// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of auth_actions;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$GetUserTearOff {
  const _$GetUserTearOff();

// ignore: unused_element
  GetUser$ call(String uid) {
    return GetUser$(
      uid,
    );
  }

// ignore: unused_element
  GetUserSuccessful successful(AppUser user) {
    return GetUserSuccessful(
      user,
    );
  }

// ignore: unused_element
  GetUserError error(Object error) {
    return GetUserError(
      error,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $GetUser = _$GetUserTearOff();

/// @nodoc
mixin _$GetUser {
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String uid), {
    @required Result successful(AppUser user),
    @required Result error(Object error),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String uid), {
    Result successful(AppUser user),
    Result error(Object error),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(GetUser$ value), {
    @required Result successful(GetUserSuccessful value),
    @required Result error(GetUserError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(GetUser$ value), {
    Result successful(GetUserSuccessful value),
    Result error(GetUserError value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $GetUserCopyWith<$Res> {
  factory $GetUserCopyWith(GetUser value, $Res Function(GetUser) then) =
      _$GetUserCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetUserCopyWithImpl<$Res> implements $GetUserCopyWith<$Res> {
  _$GetUserCopyWithImpl(this._value, this._then);

  final GetUser _value;
  // ignore: unused_field
  final $Res Function(GetUser) _then;
}

/// @nodoc
abstract class $GetUser$CopyWith<$Res> {
  factory $GetUser$CopyWith(GetUser$ value, $Res Function(GetUser$) then) =
      _$GetUser$CopyWithImpl<$Res>;
  $Res call({String uid});
}

/// @nodoc
class _$GetUser$CopyWithImpl<$Res> extends _$GetUserCopyWithImpl<$Res>
    implements $GetUser$CopyWith<$Res> {
  _$GetUser$CopyWithImpl(GetUser$ _value, $Res Function(GetUser$) _then)
      : super(_value, (v) => _then(v as GetUser$));

  @override
  GetUser$ get _value => super._value as GetUser$;

  @override
  $Res call({
    Object uid = freezed,
  }) {
    return _then(GetUser$(
      uid == freezed ? _value.uid : uid as String,
    ));
  }
}

/// @nodoc
class _$GetUser$ implements GetUser$ {
  const _$GetUser$(this.uid) : assert(uid != null);

  @override
  final String uid;

  @override
  String toString() {
    return 'GetUser(uid: $uid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetUser$ &&
            (identical(other.uid, uid) ||
                const DeepCollectionEquality().equals(other.uid, uid)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(uid);

  @override
  $GetUser$CopyWith<GetUser$> get copyWith =>
      _$GetUser$CopyWithImpl<GetUser$>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String uid), {
    @required Result successful(AppUser user),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return $default(uid);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String uid), {
    Result successful(AppUser user),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(uid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(GetUser$ value), {
    @required Result successful(GetUserSuccessful value),
    @required Result error(GetUserError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return $default(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(GetUser$ value), {
    Result successful(GetUserSuccessful value),
    Result error(GetUserError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class GetUser$ implements GetUser {
  const factory GetUser$(String uid) = _$GetUser$;

  String get uid;
  $GetUser$CopyWith<GetUser$> get copyWith;
}

/// @nodoc
abstract class $GetUserSuccessfulCopyWith<$Res> {
  factory $GetUserSuccessfulCopyWith(
          GetUserSuccessful value, $Res Function(GetUserSuccessful) then) =
      _$GetUserSuccessfulCopyWithImpl<$Res>;
  $Res call({AppUser user});
}

/// @nodoc
class _$GetUserSuccessfulCopyWithImpl<$Res> extends _$GetUserCopyWithImpl<$Res>
    implements $GetUserSuccessfulCopyWith<$Res> {
  _$GetUserSuccessfulCopyWithImpl(
      GetUserSuccessful _value, $Res Function(GetUserSuccessful) _then)
      : super(_value, (v) => _then(v as GetUserSuccessful));

  @override
  GetUserSuccessful get _value => super._value as GetUserSuccessful;

  @override
  $Res call({
    Object user = freezed,
  }) {
    return _then(GetUserSuccessful(
      user == freezed ? _value.user : user as AppUser,
    ));
  }
}

/// @nodoc
class _$GetUserSuccessful implements GetUserSuccessful {
  const _$GetUserSuccessful(this.user) : assert(user != null);

  @override
  final AppUser user;

  @override
  String toString() {
    return 'GetUser.successful(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetUserSuccessful &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(user);

  @override
  $GetUserSuccessfulCopyWith<GetUserSuccessful> get copyWith =>
      _$GetUserSuccessfulCopyWithImpl<GetUserSuccessful>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String uid), {
    @required Result successful(AppUser user),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful(user);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String uid), {
    Result successful(AppUser user),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(GetUser$ value), {
    @required Result successful(GetUserSuccessful value),
    @required Result error(GetUserError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(GetUser$ value), {
    Result successful(GetUserSuccessful value),
    Result error(GetUserError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class GetUserSuccessful implements GetUser {
  const factory GetUserSuccessful(AppUser user) = _$GetUserSuccessful;

  AppUser get user;
  $GetUserSuccessfulCopyWith<GetUserSuccessful> get copyWith;
}

/// @nodoc
abstract class $GetUserErrorCopyWith<$Res> {
  factory $GetUserErrorCopyWith(
          GetUserError value, $Res Function(GetUserError) then) =
      _$GetUserErrorCopyWithImpl<$Res>;
  $Res call({Object error});
}

/// @nodoc
class _$GetUserErrorCopyWithImpl<$Res> extends _$GetUserCopyWithImpl<$Res>
    implements $GetUserErrorCopyWith<$Res> {
  _$GetUserErrorCopyWithImpl(
      GetUserError _value, $Res Function(GetUserError) _then)
      : super(_value, (v) => _then(v as GetUserError));

  @override
  GetUserError get _value => super._value as GetUserError;

  @override
  $Res call({
    Object error = freezed,
  }) {
    return _then(GetUserError(
      error == freezed ? _value.error : error,
    ));
  }
}

@Implements(ErrorAction)

/// @nodoc
class _$GetUserError implements GetUserError {
  const _$GetUserError(this.error) : assert(error != null);

  @override
  final Object error;

  @override
  String toString() {
    return 'GetUser.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetUserError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @override
  $GetUserErrorCopyWith<GetUserError> get copyWith =>
      _$GetUserErrorCopyWithImpl<GetUserError>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String uid), {
    @required Result successful(AppUser user),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String uid), {
    Result successful(AppUser user),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(GetUser$ value), {
    @required Result successful(GetUserSuccessful value),
    @required Result error(GetUserError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(GetUser$ value), {
    Result successful(GetUserSuccessful value),
    Result error(GetUserError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class GetUserError implements GetUser, ErrorAction {
  const factory GetUserError(Object error) = _$GetUserError;

  Object get error;
  $GetUserErrorCopyWith<GetUserError> get copyWith;
}

/// @nodoc
class _$GetCurrentUserTearOff {
  const _$GetCurrentUserTearOff();

// ignore: unused_element
  GetCurrentUser$ call() {
    return const GetCurrentUser$();
  }

// ignore: unused_element
  GetCurrentUserSuccessful successful(@nullable AppUser user) {
    return GetCurrentUserSuccessful(
      user,
    );
  }

// ignore: unused_element
  GetCurrentUserError error(Object error) {
    return GetCurrentUserError(
      error,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $GetCurrentUser = _$GetCurrentUserTearOff();

/// @nodoc
mixin _$GetCurrentUser {
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(), {
    @required Result successful(@nullable AppUser user),
    @required Result error(Object error),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(), {
    Result successful(@nullable AppUser user),
    Result error(Object error),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(GetCurrentUser$ value), {
    @required Result successful(GetCurrentUserSuccessful value),
    @required Result error(GetCurrentUserError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(GetCurrentUser$ value), {
    Result successful(GetCurrentUserSuccessful value),
    Result error(GetCurrentUserError value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $GetCurrentUserCopyWith<$Res> {
  factory $GetCurrentUserCopyWith(
          GetCurrentUser value, $Res Function(GetCurrentUser) then) =
      _$GetCurrentUserCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetCurrentUserCopyWithImpl<$Res>
    implements $GetCurrentUserCopyWith<$Res> {
  _$GetCurrentUserCopyWithImpl(this._value, this._then);

  final GetCurrentUser _value;
  // ignore: unused_field
  final $Res Function(GetCurrentUser) _then;
}

/// @nodoc
abstract class $GetCurrentUser$CopyWith<$Res> {
  factory $GetCurrentUser$CopyWith(
          GetCurrentUser$ value, $Res Function(GetCurrentUser$) then) =
      _$GetCurrentUser$CopyWithImpl<$Res>;
}

/// @nodoc
class _$GetCurrentUser$CopyWithImpl<$Res>
    extends _$GetCurrentUserCopyWithImpl<$Res>
    implements $GetCurrentUser$CopyWith<$Res> {
  _$GetCurrentUser$CopyWithImpl(
      GetCurrentUser$ _value, $Res Function(GetCurrentUser$) _then)
      : super(_value, (v) => _then(v as GetCurrentUser$));

  @override
  GetCurrentUser$ get _value => super._value as GetCurrentUser$;
}

/// @nodoc
class _$GetCurrentUser$ implements GetCurrentUser$ {
  const _$GetCurrentUser$();

  @override
  String toString() {
    return 'GetCurrentUser()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is GetCurrentUser$);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(), {
    @required Result successful(@nullable AppUser user),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return $default();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(), {
    Result successful(@nullable AppUser user),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(GetCurrentUser$ value), {
    @required Result successful(GetCurrentUserSuccessful value),
    @required Result error(GetCurrentUserError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return $default(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(GetCurrentUser$ value), {
    Result successful(GetCurrentUserSuccessful value),
    Result error(GetCurrentUserError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class GetCurrentUser$ implements GetCurrentUser {
  const factory GetCurrentUser$() = _$GetCurrentUser$;
}

/// @nodoc
abstract class $GetCurrentUserSuccessfulCopyWith<$Res> {
  factory $GetCurrentUserSuccessfulCopyWith(GetCurrentUserSuccessful value,
          $Res Function(GetCurrentUserSuccessful) then) =
      _$GetCurrentUserSuccessfulCopyWithImpl<$Res>;
  $Res call({@nullable AppUser user});
}

/// @nodoc
class _$GetCurrentUserSuccessfulCopyWithImpl<$Res>
    extends _$GetCurrentUserCopyWithImpl<$Res>
    implements $GetCurrentUserSuccessfulCopyWith<$Res> {
  _$GetCurrentUserSuccessfulCopyWithImpl(GetCurrentUserSuccessful _value,
      $Res Function(GetCurrentUserSuccessful) _then)
      : super(_value, (v) => _then(v as GetCurrentUserSuccessful));

  @override
  GetCurrentUserSuccessful get _value =>
      super._value as GetCurrentUserSuccessful;

  @override
  $Res call({
    Object user = freezed,
  }) {
    return _then(GetCurrentUserSuccessful(
      user == freezed ? _value.user : user as AppUser,
    ));
  }
}

/// @nodoc
class _$GetCurrentUserSuccessful implements GetCurrentUserSuccessful {
  const _$GetCurrentUserSuccessful(@nullable this.user);

  @override
  @nullable
  final AppUser user;

  @override
  String toString() {
    return 'GetCurrentUser.successful(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetCurrentUserSuccessful &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(user);

  @override
  $GetCurrentUserSuccessfulCopyWith<GetCurrentUserSuccessful> get copyWith =>
      _$GetCurrentUserSuccessfulCopyWithImpl<GetCurrentUserSuccessful>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(), {
    @required Result successful(@nullable AppUser user),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful(user);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(), {
    Result successful(@nullable AppUser user),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(GetCurrentUser$ value), {
    @required Result successful(GetCurrentUserSuccessful value),
    @required Result error(GetCurrentUserError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(GetCurrentUser$ value), {
    Result successful(GetCurrentUserSuccessful value),
    Result error(GetCurrentUserError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class GetCurrentUserSuccessful implements GetCurrentUser {
  const factory GetCurrentUserSuccessful(@nullable AppUser user) =
      _$GetCurrentUserSuccessful;

  @nullable
  AppUser get user;
  $GetCurrentUserSuccessfulCopyWith<GetCurrentUserSuccessful> get copyWith;
}

/// @nodoc
abstract class $GetCurrentUserErrorCopyWith<$Res> {
  factory $GetCurrentUserErrorCopyWith(
          GetCurrentUserError value, $Res Function(GetCurrentUserError) then) =
      _$GetCurrentUserErrorCopyWithImpl<$Res>;
  $Res call({Object error});
}

/// @nodoc
class _$GetCurrentUserErrorCopyWithImpl<$Res>
    extends _$GetCurrentUserCopyWithImpl<$Res>
    implements $GetCurrentUserErrorCopyWith<$Res> {
  _$GetCurrentUserErrorCopyWithImpl(
      GetCurrentUserError _value, $Res Function(GetCurrentUserError) _then)
      : super(_value, (v) => _then(v as GetCurrentUserError));

  @override
  GetCurrentUserError get _value => super._value as GetCurrentUserError;

  @override
  $Res call({
    Object error = freezed,
  }) {
    return _then(GetCurrentUserError(
      error == freezed ? _value.error : error,
    ));
  }
}

@Implements(ErrorAction)

/// @nodoc
class _$GetCurrentUserError implements GetCurrentUserError {
  const _$GetCurrentUserError(this.error) : assert(error != null);

  @override
  final Object error;

  @override
  String toString() {
    return 'GetCurrentUser.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetCurrentUserError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @override
  $GetCurrentUserErrorCopyWith<GetCurrentUserError> get copyWith =>
      _$GetCurrentUserErrorCopyWithImpl<GetCurrentUserError>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(), {
    @required Result successful(@nullable AppUser user),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(), {
    Result successful(@nullable AppUser user),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(GetCurrentUser$ value), {
    @required Result successful(GetCurrentUserSuccessful value),
    @required Result error(GetCurrentUserError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(GetCurrentUser$ value), {
    Result successful(GetCurrentUserSuccessful value),
    Result error(GetCurrentUserError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class GetCurrentUserError implements GetCurrentUser, ErrorAction {
  const factory GetCurrentUserError(Object error) = _$GetCurrentUserError;

  Object get error;
  $GetCurrentUserErrorCopyWith<GetCurrentUserError> get copyWith;
}

/// @nodoc
class _$LoginTearOff {
  const _$LoginTearOff();

// ignore: unused_element
  Login$ call(
      {@required String email,
      @required String password,
      @required void Function(AppAction) response}) {
    return Login$(
      email: email,
      password: password,
      response: response,
    );
  }

// ignore: unused_element
  LoginSuccessful successful(AppUser user) {
    return LoginSuccessful(
      user,
    );
  }

// ignore: unused_element
  LoginError error(Object error) {
    return LoginError(
      error,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $Login = _$LoginTearOff();

/// @nodoc
mixin _$Login {
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(
        String email, String password, void Function(AppAction) response), {
    @required Result successful(AppUser user),
    @required Result error(Object error),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(
        String email, String password, void Function(AppAction) response), {
    Result successful(AppUser user),
    Result error(Object error),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(Login$ value), {
    @required Result successful(LoginSuccessful value),
    @required Result error(LoginError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(Login$ value), {
    Result successful(LoginSuccessful value),
    Result error(LoginError value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $LoginCopyWith<$Res> {
  factory $LoginCopyWith(Login value, $Res Function(Login) then) =
      _$LoginCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoginCopyWithImpl<$Res> implements $LoginCopyWith<$Res> {
  _$LoginCopyWithImpl(this._value, this._then);

  final Login _value;
  // ignore: unused_field
  final $Res Function(Login) _then;
}

/// @nodoc
abstract class $Login$CopyWith<$Res> {
  factory $Login$CopyWith(Login$ value, $Res Function(Login$) then) =
      _$Login$CopyWithImpl<$Res>;
  $Res call({String email, String password, void Function(AppAction) response});
}

/// @nodoc
class _$Login$CopyWithImpl<$Res> extends _$LoginCopyWithImpl<$Res>
    implements $Login$CopyWith<$Res> {
  _$Login$CopyWithImpl(Login$ _value, $Res Function(Login$) _then)
      : super(_value, (v) => _then(v as Login$));

  @override
  Login$ get _value => super._value as Login$;

  @override
  $Res call({
    Object email = freezed,
    Object password = freezed,
    Object response = freezed,
  }) {
    return _then(Login$(
      email: email == freezed ? _value.email : email as String,
      password: password == freezed ? _value.password : password as String,
      response: response == freezed
          ? _value.response
          : response as void Function(AppAction),
    ));
  }
}

/// @nodoc
class _$Login$ implements Login$ {
  const _$Login$(
      {@required this.email, @required this.password, @required this.response})
      : assert(email != null),
        assert(password != null),
        assert(response != null);

  @override
  final String email;
  @override
  final String password;
  @override
  final void Function(AppAction) response;

  @override
  String toString() {
    return 'Login(email: $email, password: $password, response: $response)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Login$ &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)) &&
            (identical(other.response, response) ||
                const DeepCollectionEquality()
                    .equals(other.response, response)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(response);

  @override
  $Login$CopyWith<Login$> get copyWith =>
      _$Login$CopyWithImpl<Login$>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(
        String email, String password, void Function(AppAction) response), {
    @required Result successful(AppUser user),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return $default(email, password, response);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(
        String email, String password, void Function(AppAction) response), {
    Result successful(AppUser user),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(email, password, response);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(Login$ value), {
    @required Result successful(LoginSuccessful value),
    @required Result error(LoginError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return $default(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(Login$ value), {
    Result successful(LoginSuccessful value),
    Result error(LoginError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class Login$ implements Login {
  const factory Login$(
      {@required String email,
      @required String password,
      @required void Function(AppAction) response}) = _$Login$;

  String get email;
  String get password;
  void Function(AppAction) get response;
  $Login$CopyWith<Login$> get copyWith;
}

/// @nodoc
abstract class $LoginSuccessfulCopyWith<$Res> {
  factory $LoginSuccessfulCopyWith(
          LoginSuccessful value, $Res Function(LoginSuccessful) then) =
      _$LoginSuccessfulCopyWithImpl<$Res>;
  $Res call({AppUser user});
}

/// @nodoc
class _$LoginSuccessfulCopyWithImpl<$Res> extends _$LoginCopyWithImpl<$Res>
    implements $LoginSuccessfulCopyWith<$Res> {
  _$LoginSuccessfulCopyWithImpl(
      LoginSuccessful _value, $Res Function(LoginSuccessful) _then)
      : super(_value, (v) => _then(v as LoginSuccessful));

  @override
  LoginSuccessful get _value => super._value as LoginSuccessful;

  @override
  $Res call({
    Object user = freezed,
  }) {
    return _then(LoginSuccessful(
      user == freezed ? _value.user : user as AppUser,
    ));
  }
}

/// @nodoc
class _$LoginSuccessful implements LoginSuccessful {
  const _$LoginSuccessful(this.user) : assert(user != null);

  @override
  final AppUser user;

  @override
  String toString() {
    return 'Login.successful(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LoginSuccessful &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(user);

  @override
  $LoginSuccessfulCopyWith<LoginSuccessful> get copyWith =>
      _$LoginSuccessfulCopyWithImpl<LoginSuccessful>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(
        String email, String password, void Function(AppAction) response), {
    @required Result successful(AppUser user),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful(user);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(
        String email, String password, void Function(AppAction) response), {
    Result successful(AppUser user),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(Login$ value), {
    @required Result successful(LoginSuccessful value),
    @required Result error(LoginError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(Login$ value), {
    Result successful(LoginSuccessful value),
    Result error(LoginError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class LoginSuccessful implements Login {
  const factory LoginSuccessful(AppUser user) = _$LoginSuccessful;

  AppUser get user;
  $LoginSuccessfulCopyWith<LoginSuccessful> get copyWith;
}

/// @nodoc
abstract class $LoginErrorCopyWith<$Res> {
  factory $LoginErrorCopyWith(
          LoginError value, $Res Function(LoginError) then) =
      _$LoginErrorCopyWithImpl<$Res>;
  $Res call({Object error});
}

/// @nodoc
class _$LoginErrorCopyWithImpl<$Res> extends _$LoginCopyWithImpl<$Res>
    implements $LoginErrorCopyWith<$Res> {
  _$LoginErrorCopyWithImpl(LoginError _value, $Res Function(LoginError) _then)
      : super(_value, (v) => _then(v as LoginError));

  @override
  LoginError get _value => super._value as LoginError;

  @override
  $Res call({
    Object error = freezed,
  }) {
    return _then(LoginError(
      error == freezed ? _value.error : error,
    ));
  }
}

@Implements(ErrorAction)

/// @nodoc
class _$LoginError implements LoginError {
  const _$LoginError(this.error) : assert(error != null);

  @override
  final Object error;

  @override
  String toString() {
    return 'Login.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LoginError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @override
  $LoginErrorCopyWith<LoginError> get copyWith =>
      _$LoginErrorCopyWithImpl<LoginError>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(
        String email, String password, void Function(AppAction) response), {
    @required Result successful(AppUser user),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(
        String email, String password, void Function(AppAction) response), {
    Result successful(AppUser user),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(Login$ value), {
    @required Result successful(LoginSuccessful value),
    @required Result error(LoginError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(Login$ value), {
    Result successful(LoginSuccessful value),
    Result error(LoginError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class LoginError implements Login, ErrorAction {
  const factory LoginError(Object error) = _$LoginError;

  Object get error;
  $LoginErrorCopyWith<LoginError> get copyWith;
}

/// @nodoc
class _$ResetPasswordTearOff {
  const _$ResetPasswordTearOff();

// ignore: unused_element
  ResetPassword$ call(String email) {
    return ResetPassword$(
      email,
    );
  }

// ignore: unused_element
  ResetPasswordSuccessful successful() {
    return const ResetPasswordSuccessful();
  }

// ignore: unused_element
  ResetPasswordError error(Object error) {
    return ResetPasswordError(
      error,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ResetPassword = _$ResetPasswordTearOff();

/// @nodoc
mixin _$ResetPassword {
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String email), {
    @required Result successful(),
    @required Result error(Object error),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String email), {
    Result successful(),
    Result error(Object error),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(ResetPassword$ value), {
    @required Result successful(ResetPasswordSuccessful value),
    @required Result error(ResetPasswordError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(ResetPassword$ value), {
    Result successful(ResetPasswordSuccessful value),
    Result error(ResetPasswordError value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $ResetPasswordCopyWith<$Res> {
  factory $ResetPasswordCopyWith(
          ResetPassword value, $Res Function(ResetPassword) then) =
      _$ResetPasswordCopyWithImpl<$Res>;
}

/// @nodoc
class _$ResetPasswordCopyWithImpl<$Res>
    implements $ResetPasswordCopyWith<$Res> {
  _$ResetPasswordCopyWithImpl(this._value, this._then);

  final ResetPassword _value;
  // ignore: unused_field
  final $Res Function(ResetPassword) _then;
}

/// @nodoc
abstract class $ResetPassword$CopyWith<$Res> {
  factory $ResetPassword$CopyWith(
          ResetPassword$ value, $Res Function(ResetPassword$) then) =
      _$ResetPassword$CopyWithImpl<$Res>;
  $Res call({String email});
}

/// @nodoc
class _$ResetPassword$CopyWithImpl<$Res>
    extends _$ResetPasswordCopyWithImpl<$Res>
    implements $ResetPassword$CopyWith<$Res> {
  _$ResetPassword$CopyWithImpl(
      ResetPassword$ _value, $Res Function(ResetPassword$) _then)
      : super(_value, (v) => _then(v as ResetPassword$));

  @override
  ResetPassword$ get _value => super._value as ResetPassword$;

  @override
  $Res call({
    Object email = freezed,
  }) {
    return _then(ResetPassword$(
      email == freezed ? _value.email : email as String,
    ));
  }
}

/// @nodoc
class _$ResetPassword$ implements ResetPassword$ {
  const _$ResetPassword$(this.email) : assert(email != null);

  @override
  final String email;

  @override
  String toString() {
    return 'ResetPassword(email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ResetPassword$ &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(email);

  @override
  $ResetPassword$CopyWith<ResetPassword$> get copyWith =>
      _$ResetPassword$CopyWithImpl<ResetPassword$>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String email), {
    @required Result successful(),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return $default(email);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String email), {
    Result successful(),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(ResetPassword$ value), {
    @required Result successful(ResetPasswordSuccessful value),
    @required Result error(ResetPasswordError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return $default(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(ResetPassword$ value), {
    Result successful(ResetPasswordSuccessful value),
    Result error(ResetPasswordError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class ResetPassword$ implements ResetPassword {
  const factory ResetPassword$(String email) = _$ResetPassword$;

  String get email;
  $ResetPassword$CopyWith<ResetPassword$> get copyWith;
}

/// @nodoc
abstract class $ResetPasswordSuccessfulCopyWith<$Res> {
  factory $ResetPasswordSuccessfulCopyWith(ResetPasswordSuccessful value,
          $Res Function(ResetPasswordSuccessful) then) =
      _$ResetPasswordSuccessfulCopyWithImpl<$Res>;
}

/// @nodoc
class _$ResetPasswordSuccessfulCopyWithImpl<$Res>
    extends _$ResetPasswordCopyWithImpl<$Res>
    implements $ResetPasswordSuccessfulCopyWith<$Res> {
  _$ResetPasswordSuccessfulCopyWithImpl(ResetPasswordSuccessful _value,
      $Res Function(ResetPasswordSuccessful) _then)
      : super(_value, (v) => _then(v as ResetPasswordSuccessful));

  @override
  ResetPasswordSuccessful get _value => super._value as ResetPasswordSuccessful;
}

/// @nodoc
class _$ResetPasswordSuccessful implements ResetPasswordSuccessful {
  const _$ResetPasswordSuccessful();

  @override
  String toString() {
    return 'ResetPassword.successful()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ResetPasswordSuccessful);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String email), {
    @required Result successful(),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String email), {
    Result successful(),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(ResetPassword$ value), {
    @required Result successful(ResetPasswordSuccessful value),
    @required Result error(ResetPasswordError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(ResetPassword$ value), {
    Result successful(ResetPasswordSuccessful value),
    Result error(ResetPasswordError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class ResetPasswordSuccessful implements ResetPassword {
  const factory ResetPasswordSuccessful() = _$ResetPasswordSuccessful;
}

/// @nodoc
abstract class $ResetPasswordErrorCopyWith<$Res> {
  factory $ResetPasswordErrorCopyWith(
          ResetPasswordError value, $Res Function(ResetPasswordError) then) =
      _$ResetPasswordErrorCopyWithImpl<$Res>;
  $Res call({Object error});
}

/// @nodoc
class _$ResetPasswordErrorCopyWithImpl<$Res>
    extends _$ResetPasswordCopyWithImpl<$Res>
    implements $ResetPasswordErrorCopyWith<$Res> {
  _$ResetPasswordErrorCopyWithImpl(
      ResetPasswordError _value, $Res Function(ResetPasswordError) _then)
      : super(_value, (v) => _then(v as ResetPasswordError));

  @override
  ResetPasswordError get _value => super._value as ResetPasswordError;

  @override
  $Res call({
    Object error = freezed,
  }) {
    return _then(ResetPasswordError(
      error == freezed ? _value.error : error,
    ));
  }
}

@Implements(ErrorAction)

/// @nodoc
class _$ResetPasswordError implements ResetPasswordError {
  const _$ResetPasswordError(this.error) : assert(error != null);

  @override
  final Object error;

  @override
  String toString() {
    return 'ResetPassword.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ResetPasswordError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @override
  $ResetPasswordErrorCopyWith<ResetPasswordError> get copyWith =>
      _$ResetPasswordErrorCopyWithImpl<ResetPasswordError>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String email), {
    @required Result successful(),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String email), {
    Result successful(),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(ResetPassword$ value), {
    @required Result successful(ResetPasswordSuccessful value),
    @required Result error(ResetPasswordError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(ResetPassword$ value), {
    Result successful(ResetPasswordSuccessful value),
    Result error(ResetPasswordError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ResetPasswordError implements ResetPassword, ErrorAction {
  const factory ResetPasswordError(Object error) = _$ResetPasswordError;

  Object get error;
  $ResetPasswordErrorCopyWith<ResetPasswordError> get copyWith;
}

/// @nodoc
class _$UpdateRegistrationInfoTearOff {
  const _$UpdateRegistrationInfoTearOff();

// ignore: unused_element
  UpdateRegistrationInfo$ call(
      {String email, String password, String firstName, String lastName}) {
    return UpdateRegistrationInfo$(
      email: email,
      password: password,
      firstName: firstName,
      lastName: lastName,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $UpdateRegistrationInfo = _$UpdateRegistrationInfoTearOff();

/// @nodoc
mixin _$UpdateRegistrationInfo {
  String get email;
  String get password;
  String get firstName;
  String get lastName;

  $UpdateRegistrationInfoCopyWith<UpdateRegistrationInfo> get copyWith;
}

/// @nodoc
abstract class $UpdateRegistrationInfoCopyWith<$Res> {
  factory $UpdateRegistrationInfoCopyWith(UpdateRegistrationInfo value,
          $Res Function(UpdateRegistrationInfo) then) =
      _$UpdateRegistrationInfoCopyWithImpl<$Res>;
  $Res call({String email, String password, String firstName, String lastName});
}

/// @nodoc
class _$UpdateRegistrationInfoCopyWithImpl<$Res>
    implements $UpdateRegistrationInfoCopyWith<$Res> {
  _$UpdateRegistrationInfoCopyWithImpl(this._value, this._then);

  final UpdateRegistrationInfo _value;
  // ignore: unused_field
  final $Res Function(UpdateRegistrationInfo) _then;

  @override
  $Res call({
    Object email = freezed,
    Object password = freezed,
    Object firstName = freezed,
    Object lastName = freezed,
  }) {
    return _then(_value.copyWith(
      email: email == freezed ? _value.email : email as String,
      password: password == freezed ? _value.password : password as String,
      firstName: firstName == freezed ? _value.firstName : firstName as String,
      lastName: lastName == freezed ? _value.lastName : lastName as String,
    ));
  }
}

/// @nodoc
abstract class $UpdateRegistrationInfo$CopyWith<$Res>
    implements $UpdateRegistrationInfoCopyWith<$Res> {
  factory $UpdateRegistrationInfo$CopyWith(UpdateRegistrationInfo$ value,
          $Res Function(UpdateRegistrationInfo$) then) =
      _$UpdateRegistrationInfo$CopyWithImpl<$Res>;
  @override
  $Res call({String email, String password, String firstName, String lastName});
}

/// @nodoc
class _$UpdateRegistrationInfo$CopyWithImpl<$Res>
    extends _$UpdateRegistrationInfoCopyWithImpl<$Res>
    implements $UpdateRegistrationInfo$CopyWith<$Res> {
  _$UpdateRegistrationInfo$CopyWithImpl(UpdateRegistrationInfo$ _value,
      $Res Function(UpdateRegistrationInfo$) _then)
      : super(_value, (v) => _then(v as UpdateRegistrationInfo$));

  @override
  UpdateRegistrationInfo$ get _value => super._value as UpdateRegistrationInfo$;

  @override
  $Res call({
    Object email = freezed,
    Object password = freezed,
    Object firstName = freezed,
    Object lastName = freezed,
  }) {
    return _then(UpdateRegistrationInfo$(
      email: email == freezed ? _value.email : email as String,
      password: password == freezed ? _value.password : password as String,
      firstName: firstName == freezed ? _value.firstName : firstName as String,
      lastName: lastName == freezed ? _value.lastName : lastName as String,
    ));
  }
}

/// @nodoc
class _$UpdateRegistrationInfo$ implements UpdateRegistrationInfo$ {
  const _$UpdateRegistrationInfo$(
      {this.email, this.password, this.firstName, this.lastName});

  @override
  final String email;
  @override
  final String password;
  @override
  final String firstName;
  @override
  final String lastName;

  @override
  String toString() {
    return 'UpdateRegistrationInfo(email: $email, password: $password, firstName: $firstName, lastName: $lastName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UpdateRegistrationInfo$ &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)) &&
            (identical(other.firstName, firstName) ||
                const DeepCollectionEquality()
                    .equals(other.firstName, firstName)) &&
            (identical(other.lastName, lastName) ||
                const DeepCollectionEquality()
                    .equals(other.lastName, lastName)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(firstName) ^
      const DeepCollectionEquality().hash(lastName);

  @override
  $UpdateRegistrationInfo$CopyWith<UpdateRegistrationInfo$> get copyWith =>
      _$UpdateRegistrationInfo$CopyWithImpl<UpdateRegistrationInfo$>(
          this, _$identity);
}

abstract class UpdateRegistrationInfo$ implements UpdateRegistrationInfo {
  const factory UpdateRegistrationInfo$(
      {String email,
      String password,
      String firstName,
      String lastName}) = _$UpdateRegistrationInfo$;

  @override
  String get email;
  @override
  String get password;
  @override
  String get firstName;
  @override
  String get lastName;
  @override
  $UpdateRegistrationInfo$CopyWith<UpdateRegistrationInfo$> get copyWith;
}

/// @nodoc
class _$SignOutTearOff {
  const _$SignOutTearOff();

// ignore: unused_element
  SignOut$ call() {
    return const SignOut$();
  }

// ignore: unused_element
  SignOutSuccessful successful() {
    return const SignOutSuccessful();
  }

// ignore: unused_element
  SignOutError error(Object error) {
    return SignOutError(
      error,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $SignOut = _$SignOutTearOff();

/// @nodoc
mixin _$SignOut {
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(), {
    @required Result successful(),
    @required Result error(Object error),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(), {
    Result successful(),
    Result error(Object error),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(SignOut$ value), {
    @required Result successful(SignOutSuccessful value),
    @required Result error(SignOutError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(SignOut$ value), {
    Result successful(SignOutSuccessful value),
    Result error(SignOutError value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $SignOutCopyWith<$Res> {
  factory $SignOutCopyWith(SignOut value, $Res Function(SignOut) then) =
      _$SignOutCopyWithImpl<$Res>;
}

/// @nodoc
class _$SignOutCopyWithImpl<$Res> implements $SignOutCopyWith<$Res> {
  _$SignOutCopyWithImpl(this._value, this._then);

  final SignOut _value;
  // ignore: unused_field
  final $Res Function(SignOut) _then;
}

/// @nodoc
abstract class $SignOut$CopyWith<$Res> {
  factory $SignOut$CopyWith(SignOut$ value, $Res Function(SignOut$) then) =
      _$SignOut$CopyWithImpl<$Res>;
}

/// @nodoc
class _$SignOut$CopyWithImpl<$Res> extends _$SignOutCopyWithImpl<$Res>
    implements $SignOut$CopyWith<$Res> {
  _$SignOut$CopyWithImpl(SignOut$ _value, $Res Function(SignOut$) _then)
      : super(_value, (v) => _then(v as SignOut$));

  @override
  SignOut$ get _value => super._value as SignOut$;
}

/// @nodoc
class _$SignOut$ implements SignOut$ {
  const _$SignOut$();

  @override
  String toString() {
    return 'SignOut()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SignOut$);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(), {
    @required Result successful(),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return $default();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(), {
    Result successful(),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(SignOut$ value), {
    @required Result successful(SignOutSuccessful value),
    @required Result error(SignOutError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return $default(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(SignOut$ value), {
    Result successful(SignOutSuccessful value),
    Result error(SignOutError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class SignOut$ implements SignOut {
  const factory SignOut$() = _$SignOut$;
}

/// @nodoc
abstract class $SignOutSuccessfulCopyWith<$Res> {
  factory $SignOutSuccessfulCopyWith(
          SignOutSuccessful value, $Res Function(SignOutSuccessful) then) =
      _$SignOutSuccessfulCopyWithImpl<$Res>;
}

/// @nodoc
class _$SignOutSuccessfulCopyWithImpl<$Res> extends _$SignOutCopyWithImpl<$Res>
    implements $SignOutSuccessfulCopyWith<$Res> {
  _$SignOutSuccessfulCopyWithImpl(
      SignOutSuccessful _value, $Res Function(SignOutSuccessful) _then)
      : super(_value, (v) => _then(v as SignOutSuccessful));

  @override
  SignOutSuccessful get _value => super._value as SignOutSuccessful;
}

/// @nodoc
class _$SignOutSuccessful implements SignOutSuccessful {
  const _$SignOutSuccessful();

  @override
  String toString() {
    return 'SignOut.successful()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SignOutSuccessful);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(), {
    @required Result successful(),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(), {
    Result successful(),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(SignOut$ value), {
    @required Result successful(SignOutSuccessful value),
    @required Result error(SignOutError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(SignOut$ value), {
    Result successful(SignOutSuccessful value),
    Result error(SignOutError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class SignOutSuccessful implements SignOut {
  const factory SignOutSuccessful() = _$SignOutSuccessful;
}

/// @nodoc
abstract class $SignOutErrorCopyWith<$Res> {
  factory $SignOutErrorCopyWith(
          SignOutError value, $Res Function(SignOutError) then) =
      _$SignOutErrorCopyWithImpl<$Res>;
  $Res call({Object error});
}

/// @nodoc
class _$SignOutErrorCopyWithImpl<$Res> extends _$SignOutCopyWithImpl<$Res>
    implements $SignOutErrorCopyWith<$Res> {
  _$SignOutErrorCopyWithImpl(
      SignOutError _value, $Res Function(SignOutError) _then)
      : super(_value, (v) => _then(v as SignOutError));

  @override
  SignOutError get _value => super._value as SignOutError;

  @override
  $Res call({
    Object error = freezed,
  }) {
    return _then(SignOutError(
      error == freezed ? _value.error : error,
    ));
  }
}

@Implements(ErrorAction)

/// @nodoc
class _$SignOutError implements SignOutError {
  const _$SignOutError(this.error) : assert(error != null);

  @override
  final Object error;

  @override
  String toString() {
    return 'SignOut.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SignOutError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @override
  $SignOutErrorCopyWith<SignOutError> get copyWith =>
      _$SignOutErrorCopyWithImpl<SignOutError>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(), {
    @required Result successful(),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(), {
    Result successful(),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(SignOut$ value), {
    @required Result successful(SignOutSuccessful value),
    @required Result error(SignOutError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(SignOut$ value), {
    Result successful(SignOutSuccessful value),
    Result error(SignOutError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class SignOutError implements SignOut, ErrorAction {
  const factory SignOutError(Object error) = _$SignOutError;

  Object get error;
  $SignOutErrorCopyWith<SignOutError> get copyWith;
}

/// @nodoc
class _$SignupTearOff {
  const _$SignupTearOff();

// ignore: unused_element
  Signup$ call(void Function(AppAction) response) {
    return Signup$(
      response,
    );
  }

// ignore: unused_element
  SignupSuccessful successful(AppUser user) {
    return SignupSuccessful(
      user,
    );
  }

// ignore: unused_element
  SignupError error(Object error) {
    return SignupError(
      error,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $Signup = _$SignupTearOff();

/// @nodoc
mixin _$Signup {
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(void Function(AppAction) response), {
    @required Result successful(AppUser user),
    @required Result error(Object error),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(void Function(AppAction) response), {
    Result successful(AppUser user),
    Result error(Object error),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(Signup$ value), {
    @required Result successful(SignupSuccessful value),
    @required Result error(SignupError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(Signup$ value), {
    Result successful(SignupSuccessful value),
    Result error(SignupError value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $SignupCopyWith<$Res> {
  factory $SignupCopyWith(Signup value, $Res Function(Signup) then) =
      _$SignupCopyWithImpl<$Res>;
}

/// @nodoc
class _$SignupCopyWithImpl<$Res> implements $SignupCopyWith<$Res> {
  _$SignupCopyWithImpl(this._value, this._then);

  final Signup _value;
  // ignore: unused_field
  final $Res Function(Signup) _then;
}

/// @nodoc
abstract class $Signup$CopyWith<$Res> {
  factory $Signup$CopyWith(Signup$ value, $Res Function(Signup$) then) =
      _$Signup$CopyWithImpl<$Res>;
  $Res call({void Function(AppAction) response});
}

/// @nodoc
class _$Signup$CopyWithImpl<$Res> extends _$SignupCopyWithImpl<$Res>
    implements $Signup$CopyWith<$Res> {
  _$Signup$CopyWithImpl(Signup$ _value, $Res Function(Signup$) _then)
      : super(_value, (v) => _then(v as Signup$));

  @override
  Signup$ get _value => super._value as Signup$;

  @override
  $Res call({
    Object response = freezed,
  }) {
    return _then(Signup$(
      response == freezed
          ? _value.response
          : response as void Function(AppAction),
    ));
  }
}

/// @nodoc
class _$Signup$ implements Signup$ {
  const _$Signup$(this.response) : assert(response != null);

  @override
  final void Function(AppAction) response;

  @override
  String toString() {
    return 'Signup(response: $response)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Signup$ &&
            (identical(other.response, response) ||
                const DeepCollectionEquality()
                    .equals(other.response, response)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(response);

  @override
  $Signup$CopyWith<Signup$> get copyWith =>
      _$Signup$CopyWithImpl<Signup$>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(void Function(AppAction) response), {
    @required Result successful(AppUser user),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return $default(response);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(void Function(AppAction) response), {
    Result successful(AppUser user),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(response);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(Signup$ value), {
    @required Result successful(SignupSuccessful value),
    @required Result error(SignupError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return $default(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(Signup$ value), {
    Result successful(SignupSuccessful value),
    Result error(SignupError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class Signup$ implements Signup {
  const factory Signup$(void Function(AppAction) response) = _$Signup$;

  void Function(AppAction) get response;
  $Signup$CopyWith<Signup$> get copyWith;
}

/// @nodoc
abstract class $SignupSuccessfulCopyWith<$Res> {
  factory $SignupSuccessfulCopyWith(
          SignupSuccessful value, $Res Function(SignupSuccessful) then) =
      _$SignupSuccessfulCopyWithImpl<$Res>;
  $Res call({AppUser user});
}

/// @nodoc
class _$SignupSuccessfulCopyWithImpl<$Res> extends _$SignupCopyWithImpl<$Res>
    implements $SignupSuccessfulCopyWith<$Res> {
  _$SignupSuccessfulCopyWithImpl(
      SignupSuccessful _value, $Res Function(SignupSuccessful) _then)
      : super(_value, (v) => _then(v as SignupSuccessful));

  @override
  SignupSuccessful get _value => super._value as SignupSuccessful;

  @override
  $Res call({
    Object user = freezed,
  }) {
    return _then(SignupSuccessful(
      user == freezed ? _value.user : user as AppUser,
    ));
  }
}

/// @nodoc
class _$SignupSuccessful implements SignupSuccessful {
  const _$SignupSuccessful(this.user) : assert(user != null);

  @override
  final AppUser user;

  @override
  String toString() {
    return 'Signup.successful(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SignupSuccessful &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(user);

  @override
  $SignupSuccessfulCopyWith<SignupSuccessful> get copyWith =>
      _$SignupSuccessfulCopyWithImpl<SignupSuccessful>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(void Function(AppAction) response), {
    @required Result successful(AppUser user),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful(user);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(void Function(AppAction) response), {
    Result successful(AppUser user),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(Signup$ value), {
    @required Result successful(SignupSuccessful value),
    @required Result error(SignupError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(Signup$ value), {
    Result successful(SignupSuccessful value),
    Result error(SignupError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class SignupSuccessful implements Signup {
  const factory SignupSuccessful(AppUser user) = _$SignupSuccessful;

  AppUser get user;
  $SignupSuccessfulCopyWith<SignupSuccessful> get copyWith;
}

/// @nodoc
abstract class $SignupErrorCopyWith<$Res> {
  factory $SignupErrorCopyWith(
          SignupError value, $Res Function(SignupError) then) =
      _$SignupErrorCopyWithImpl<$Res>;
  $Res call({Object error});
}

/// @nodoc
class _$SignupErrorCopyWithImpl<$Res> extends _$SignupCopyWithImpl<$Res>
    implements $SignupErrorCopyWith<$Res> {
  _$SignupErrorCopyWithImpl(
      SignupError _value, $Res Function(SignupError) _then)
      : super(_value, (v) => _then(v as SignupError));

  @override
  SignupError get _value => super._value as SignupError;

  @override
  $Res call({
    Object error = freezed,
  }) {
    return _then(SignupError(
      error == freezed ? _value.error : error,
    ));
  }
}

@Implements(ErrorAction)

/// @nodoc
class _$SignupError implements SignupError {
  const _$SignupError(this.error) : assert(error != null);

  @override
  final Object error;

  @override
  String toString() {
    return 'Signup.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SignupError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @override
  $SignupErrorCopyWith<SignupError> get copyWith =>
      _$SignupErrorCopyWithImpl<SignupError>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(void Function(AppAction) response), {
    @required Result successful(AppUser user),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(void Function(AppAction) response), {
    Result successful(AppUser user),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(Signup$ value), {
    @required Result successful(SignupSuccessful value),
    @required Result error(SignupError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(Signup$ value), {
    Result successful(SignupSuccessful value),
    Result error(SignupError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class SignupError implements Signup, ErrorAction {
  const factory SignupError(Object error) = _$SignupError;

  Object get error;
  $SignupErrorCopyWith<SignupError> get copyWith;
}

/// @nodoc
class _$SignUpWithGoogleTearOff {
  const _$SignUpWithGoogleTearOff();

// ignore: unused_element
  SignUpWithGoogle$ call(void Function(AppAction) response) {
    return SignUpWithGoogle$(
      response,
    );
  }

// ignore: unused_element
  SignUpWithGoogleSuccessful successful(AppUser user) {
    return SignUpWithGoogleSuccessful(
      user,
    );
  }

// ignore: unused_element
  SignUpWithGoogleError error(Object error) {
    return SignUpWithGoogleError(
      error,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $SignUpWithGoogle = _$SignUpWithGoogleTearOff();

/// @nodoc
mixin _$SignUpWithGoogle {
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(void Function(AppAction) response), {
    @required Result successful(AppUser user),
    @required Result error(Object error),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(void Function(AppAction) response), {
    Result successful(AppUser user),
    Result error(Object error),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(SignUpWithGoogle$ value), {
    @required Result successful(SignUpWithGoogleSuccessful value),
    @required Result error(SignUpWithGoogleError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(SignUpWithGoogle$ value), {
    Result successful(SignUpWithGoogleSuccessful value),
    Result error(SignUpWithGoogleError value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $SignUpWithGoogleCopyWith<$Res> {
  factory $SignUpWithGoogleCopyWith(
          SignUpWithGoogle value, $Res Function(SignUpWithGoogle) then) =
      _$SignUpWithGoogleCopyWithImpl<$Res>;
}

/// @nodoc
class _$SignUpWithGoogleCopyWithImpl<$Res>
    implements $SignUpWithGoogleCopyWith<$Res> {
  _$SignUpWithGoogleCopyWithImpl(this._value, this._then);

  final SignUpWithGoogle _value;
  // ignore: unused_field
  final $Res Function(SignUpWithGoogle) _then;
}

/// @nodoc
abstract class $SignUpWithGoogle$CopyWith<$Res> {
  factory $SignUpWithGoogle$CopyWith(
          SignUpWithGoogle$ value, $Res Function(SignUpWithGoogle$) then) =
      _$SignUpWithGoogle$CopyWithImpl<$Res>;
  $Res call({void Function(AppAction) response});
}

/// @nodoc
class _$SignUpWithGoogle$CopyWithImpl<$Res>
    extends _$SignUpWithGoogleCopyWithImpl<$Res>
    implements $SignUpWithGoogle$CopyWith<$Res> {
  _$SignUpWithGoogle$CopyWithImpl(
      SignUpWithGoogle$ _value, $Res Function(SignUpWithGoogle$) _then)
      : super(_value, (v) => _then(v as SignUpWithGoogle$));

  @override
  SignUpWithGoogle$ get _value => super._value as SignUpWithGoogle$;

  @override
  $Res call({
    Object response = freezed,
  }) {
    return _then(SignUpWithGoogle$(
      response == freezed
          ? _value.response
          : response as void Function(AppAction),
    ));
  }
}

/// @nodoc
class _$SignUpWithGoogle$ implements SignUpWithGoogle$ {
  const _$SignUpWithGoogle$(this.response) : assert(response != null);

  @override
  final void Function(AppAction) response;

  @override
  String toString() {
    return 'SignUpWithGoogle(response: $response)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SignUpWithGoogle$ &&
            (identical(other.response, response) ||
                const DeepCollectionEquality()
                    .equals(other.response, response)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(response);

  @override
  $SignUpWithGoogle$CopyWith<SignUpWithGoogle$> get copyWith =>
      _$SignUpWithGoogle$CopyWithImpl<SignUpWithGoogle$>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(void Function(AppAction) response), {
    @required Result successful(AppUser user),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return $default(response);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(void Function(AppAction) response), {
    Result successful(AppUser user),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(response);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(SignUpWithGoogle$ value), {
    @required Result successful(SignUpWithGoogleSuccessful value),
    @required Result error(SignUpWithGoogleError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return $default(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(SignUpWithGoogle$ value), {
    Result successful(SignUpWithGoogleSuccessful value),
    Result error(SignUpWithGoogleError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class SignUpWithGoogle$ implements SignUpWithGoogle {
  const factory SignUpWithGoogle$(void Function(AppAction) response) =
      _$SignUpWithGoogle$;

  void Function(AppAction) get response;
  $SignUpWithGoogle$CopyWith<SignUpWithGoogle$> get copyWith;
}

/// @nodoc
abstract class $SignUpWithGoogleSuccessfulCopyWith<$Res> {
  factory $SignUpWithGoogleSuccessfulCopyWith(SignUpWithGoogleSuccessful value,
          $Res Function(SignUpWithGoogleSuccessful) then) =
      _$SignUpWithGoogleSuccessfulCopyWithImpl<$Res>;
  $Res call({AppUser user});
}

/// @nodoc
class _$SignUpWithGoogleSuccessfulCopyWithImpl<$Res>
    extends _$SignUpWithGoogleCopyWithImpl<$Res>
    implements $SignUpWithGoogleSuccessfulCopyWith<$Res> {
  _$SignUpWithGoogleSuccessfulCopyWithImpl(SignUpWithGoogleSuccessful _value,
      $Res Function(SignUpWithGoogleSuccessful) _then)
      : super(_value, (v) => _then(v as SignUpWithGoogleSuccessful));

  @override
  SignUpWithGoogleSuccessful get _value =>
      super._value as SignUpWithGoogleSuccessful;

  @override
  $Res call({
    Object user = freezed,
  }) {
    return _then(SignUpWithGoogleSuccessful(
      user == freezed ? _value.user : user as AppUser,
    ));
  }
}

/// @nodoc
class _$SignUpWithGoogleSuccessful implements SignUpWithGoogleSuccessful {
  const _$SignUpWithGoogleSuccessful(this.user) : assert(user != null);

  @override
  final AppUser user;

  @override
  String toString() {
    return 'SignUpWithGoogle.successful(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SignUpWithGoogleSuccessful &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(user);

  @override
  $SignUpWithGoogleSuccessfulCopyWith<SignUpWithGoogleSuccessful>
      get copyWith =>
          _$SignUpWithGoogleSuccessfulCopyWithImpl<SignUpWithGoogleSuccessful>(
              this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(void Function(AppAction) response), {
    @required Result successful(AppUser user),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful(user);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(void Function(AppAction) response), {
    Result successful(AppUser user),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(SignUpWithGoogle$ value), {
    @required Result successful(SignUpWithGoogleSuccessful value),
    @required Result error(SignUpWithGoogleError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(SignUpWithGoogle$ value), {
    Result successful(SignUpWithGoogleSuccessful value),
    Result error(SignUpWithGoogleError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class SignUpWithGoogleSuccessful implements SignUpWithGoogle {
  const factory SignUpWithGoogleSuccessful(AppUser user) =
      _$SignUpWithGoogleSuccessful;

  AppUser get user;
  $SignUpWithGoogleSuccessfulCopyWith<SignUpWithGoogleSuccessful> get copyWith;
}

/// @nodoc
abstract class $SignUpWithGoogleErrorCopyWith<$Res> {
  factory $SignUpWithGoogleErrorCopyWith(SignUpWithGoogleError value,
          $Res Function(SignUpWithGoogleError) then) =
      _$SignUpWithGoogleErrorCopyWithImpl<$Res>;
  $Res call({Object error});
}

/// @nodoc
class _$SignUpWithGoogleErrorCopyWithImpl<$Res>
    extends _$SignUpWithGoogleCopyWithImpl<$Res>
    implements $SignUpWithGoogleErrorCopyWith<$Res> {
  _$SignUpWithGoogleErrorCopyWithImpl(
      SignUpWithGoogleError _value, $Res Function(SignUpWithGoogleError) _then)
      : super(_value, (v) => _then(v as SignUpWithGoogleError));

  @override
  SignUpWithGoogleError get _value => super._value as SignUpWithGoogleError;

  @override
  $Res call({
    Object error = freezed,
  }) {
    return _then(SignUpWithGoogleError(
      error == freezed ? _value.error : error,
    ));
  }
}

@Implements(ErrorAction)

/// @nodoc
class _$SignUpWithGoogleError implements SignUpWithGoogleError {
  const _$SignUpWithGoogleError(this.error) : assert(error != null);

  @override
  final Object error;

  @override
  String toString() {
    return 'SignUpWithGoogle.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SignUpWithGoogleError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @override
  $SignUpWithGoogleErrorCopyWith<SignUpWithGoogleError> get copyWith =>
      _$SignUpWithGoogleErrorCopyWithImpl<SignUpWithGoogleError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(void Function(AppAction) response), {
    @required Result successful(AppUser user),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(void Function(AppAction) response), {
    Result successful(AppUser user),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(SignUpWithGoogle$ value), {
    @required Result successful(SignUpWithGoogleSuccessful value),
    @required Result error(SignUpWithGoogleError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(SignUpWithGoogle$ value), {
    Result successful(SignUpWithGoogleSuccessful value),
    Result error(SignUpWithGoogleError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class SignUpWithGoogleError implements SignUpWithGoogle, ErrorAction {
  const factory SignUpWithGoogleError(Object error) = _$SignUpWithGoogleError;

  Object get error;
  $SignUpWithGoogleErrorCopyWith<SignUpWithGoogleError> get copyWith;
}

/// @nodoc
class _$SyncSpeechResultTearOff {
  const _$SyncSpeechResultTearOff();

// ignore: unused_element
  SyncSpeechResult$ call(
      {@required SpeechResult speechResult, @required bool isSynced}) {
    return SyncSpeechResult$(
      speechResult: speechResult,
      isSynced: isSynced,
    );
  }

// ignore: unused_element
  SyncSpeechResultSuccessful successful(List<SpeechResult> speechResultList) {
    return SyncSpeechResultSuccessful(
      speechResultList,
    );
  }

// ignore: unused_element
  SyncSpeechResultError error(StateError error) {
    return SyncSpeechResultError(
      error,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $SyncSpeechResult = _$SyncSpeechResultTearOff();

/// @nodoc
mixin _$SyncSpeechResult {
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(SpeechResult speechResult, bool isSynced), {
    @required Result successful(List<SpeechResult> speechResultList),
    @required Result error(StateError error),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(SpeechResult speechResult, bool isSynced), {
    Result successful(List<SpeechResult> speechResultList),
    Result error(StateError error),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(SyncSpeechResult$ value), {
    @required Result successful(SyncSpeechResultSuccessful value),
    @required Result error(SyncSpeechResultError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(SyncSpeechResult$ value), {
    Result successful(SyncSpeechResultSuccessful value),
    Result error(SyncSpeechResultError value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $SyncSpeechResultCopyWith<$Res> {
  factory $SyncSpeechResultCopyWith(
          SyncSpeechResult value, $Res Function(SyncSpeechResult) then) =
      _$SyncSpeechResultCopyWithImpl<$Res>;
}

/// @nodoc
class _$SyncSpeechResultCopyWithImpl<$Res>
    implements $SyncSpeechResultCopyWith<$Res> {
  _$SyncSpeechResultCopyWithImpl(this._value, this._then);

  final SyncSpeechResult _value;
  // ignore: unused_field
  final $Res Function(SyncSpeechResult) _then;
}

/// @nodoc
abstract class $SyncSpeechResult$CopyWith<$Res> {
  factory $SyncSpeechResult$CopyWith(
          SyncSpeechResult$ value, $Res Function(SyncSpeechResult$) then) =
      _$SyncSpeechResult$CopyWithImpl<$Res>;
  $Res call({SpeechResult speechResult, bool isSynced});
}

/// @nodoc
class _$SyncSpeechResult$CopyWithImpl<$Res>
    extends _$SyncSpeechResultCopyWithImpl<$Res>
    implements $SyncSpeechResult$CopyWith<$Res> {
  _$SyncSpeechResult$CopyWithImpl(
      SyncSpeechResult$ _value, $Res Function(SyncSpeechResult$) _then)
      : super(_value, (v) => _then(v as SyncSpeechResult$));

  @override
  SyncSpeechResult$ get _value => super._value as SyncSpeechResult$;

  @override
  $Res call({
    Object speechResult = freezed,
    Object isSynced = freezed,
  }) {
    return _then(SyncSpeechResult$(
      speechResult: speechResult == freezed
          ? _value.speechResult
          : speechResult as SpeechResult,
      isSynced: isSynced == freezed ? _value.isSynced : isSynced as bool,
    ));
  }
}

/// @nodoc
class _$SyncSpeechResult$ implements SyncSpeechResult$ {
  const _$SyncSpeechResult$(
      {@required this.speechResult, @required this.isSynced})
      : assert(speechResult != null),
        assert(isSynced != null);

  @override
  final SpeechResult speechResult;
  @override
  final bool isSynced;

  @override
  String toString() {
    return 'SyncSpeechResult(speechResult: $speechResult, isSynced: $isSynced)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SyncSpeechResult$ &&
            (identical(other.speechResult, speechResult) ||
                const DeepCollectionEquality()
                    .equals(other.speechResult, speechResult)) &&
            (identical(other.isSynced, isSynced) ||
                const DeepCollectionEquality()
                    .equals(other.isSynced, isSynced)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(speechResult) ^
      const DeepCollectionEquality().hash(isSynced);

  @override
  $SyncSpeechResult$CopyWith<SyncSpeechResult$> get copyWith =>
      _$SyncSpeechResult$CopyWithImpl<SyncSpeechResult$>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(SpeechResult speechResult, bool isSynced), {
    @required Result successful(List<SpeechResult> speechResultList),
    @required Result error(StateError error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return $default(speechResult, isSynced);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(SpeechResult speechResult, bool isSynced), {
    Result successful(List<SpeechResult> speechResultList),
    Result error(StateError error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(speechResult, isSynced);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(SyncSpeechResult$ value), {
    @required Result successful(SyncSpeechResultSuccessful value),
    @required Result error(SyncSpeechResultError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return $default(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(SyncSpeechResult$ value), {
    Result successful(SyncSpeechResultSuccessful value),
    Result error(SyncSpeechResultError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class SyncSpeechResult$ implements SyncSpeechResult {
  const factory SyncSpeechResult$(
      {@required SpeechResult speechResult,
      @required bool isSynced}) = _$SyncSpeechResult$;

  SpeechResult get speechResult;
  bool get isSynced;
  $SyncSpeechResult$CopyWith<SyncSpeechResult$> get copyWith;
}

/// @nodoc
abstract class $SyncSpeechResultSuccessfulCopyWith<$Res> {
  factory $SyncSpeechResultSuccessfulCopyWith(SyncSpeechResultSuccessful value,
          $Res Function(SyncSpeechResultSuccessful) then) =
      _$SyncSpeechResultSuccessfulCopyWithImpl<$Res>;
  $Res call({List<SpeechResult> speechResultList});
}

/// @nodoc
class _$SyncSpeechResultSuccessfulCopyWithImpl<$Res>
    extends _$SyncSpeechResultCopyWithImpl<$Res>
    implements $SyncSpeechResultSuccessfulCopyWith<$Res> {
  _$SyncSpeechResultSuccessfulCopyWithImpl(SyncSpeechResultSuccessful _value,
      $Res Function(SyncSpeechResultSuccessful) _then)
      : super(_value, (v) => _then(v as SyncSpeechResultSuccessful));

  @override
  SyncSpeechResultSuccessful get _value =>
      super._value as SyncSpeechResultSuccessful;

  @override
  $Res call({
    Object speechResultList = freezed,
  }) {
    return _then(SyncSpeechResultSuccessful(
      speechResultList == freezed
          ? _value.speechResultList
          : speechResultList as List<SpeechResult>,
    ));
  }
}

/// @nodoc
class _$SyncSpeechResultSuccessful implements SyncSpeechResultSuccessful {
  const _$SyncSpeechResultSuccessful(this.speechResultList)
      : assert(speechResultList != null);

  @override
  final List<SpeechResult> speechResultList;

  @override
  String toString() {
    return 'SyncSpeechResult.successful(speechResultList: $speechResultList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SyncSpeechResultSuccessful &&
            (identical(other.speechResultList, speechResultList) ||
                const DeepCollectionEquality()
                    .equals(other.speechResultList, speechResultList)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(speechResultList);

  @override
  $SyncSpeechResultSuccessfulCopyWith<SyncSpeechResultSuccessful>
      get copyWith =>
          _$SyncSpeechResultSuccessfulCopyWithImpl<SyncSpeechResultSuccessful>(
              this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(SpeechResult speechResult, bool isSynced), {
    @required Result successful(List<SpeechResult> speechResultList),
    @required Result error(StateError error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful(speechResultList);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(SpeechResult speechResult, bool isSynced), {
    Result successful(List<SpeechResult> speechResultList),
    Result error(StateError error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful(speechResultList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(SyncSpeechResult$ value), {
    @required Result successful(SyncSpeechResultSuccessful value),
    @required Result error(SyncSpeechResultError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(SyncSpeechResult$ value), {
    Result successful(SyncSpeechResultSuccessful value),
    Result error(SyncSpeechResultError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class SyncSpeechResultSuccessful implements SyncSpeechResult {
  const factory SyncSpeechResultSuccessful(
      List<SpeechResult> speechResultList) = _$SyncSpeechResultSuccessful;

  List<SpeechResult> get speechResultList;
  $SyncSpeechResultSuccessfulCopyWith<SyncSpeechResultSuccessful> get copyWith;
}

/// @nodoc
abstract class $SyncSpeechResultErrorCopyWith<$Res> {
  factory $SyncSpeechResultErrorCopyWith(SyncSpeechResultError value,
          $Res Function(SyncSpeechResultError) then) =
      _$SyncSpeechResultErrorCopyWithImpl<$Res>;
  $Res call({StateError error});
}

/// @nodoc
class _$SyncSpeechResultErrorCopyWithImpl<$Res>
    extends _$SyncSpeechResultCopyWithImpl<$Res>
    implements $SyncSpeechResultErrorCopyWith<$Res> {
  _$SyncSpeechResultErrorCopyWithImpl(
      SyncSpeechResultError _value, $Res Function(SyncSpeechResultError) _then)
      : super(_value, (v) => _then(v as SyncSpeechResultError));

  @override
  SyncSpeechResultError get _value => super._value as SyncSpeechResultError;

  @override
  $Res call({
    Object error = freezed,
  }) {
    return _then(SyncSpeechResultError(
      error == freezed ? _value.error : error as StateError,
    ));
  }
}

@Implements(ErrorAction)

/// @nodoc
class _$SyncSpeechResultError implements SyncSpeechResultError {
  const _$SyncSpeechResultError(this.error) : assert(error != null);

  @override
  final StateError error;

  @override
  String toString() {
    return 'SyncSpeechResult.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SyncSpeechResultError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @override
  $SyncSpeechResultErrorCopyWith<SyncSpeechResultError> get copyWith =>
      _$SyncSpeechResultErrorCopyWithImpl<SyncSpeechResultError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(SpeechResult speechResult, bool isSynced), {
    @required Result successful(List<SpeechResult> speechResultList),
    @required Result error(StateError error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(SpeechResult speechResult, bool isSynced), {
    Result successful(List<SpeechResult> speechResultList),
    Result error(StateError error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(SyncSpeechResult$ value), {
    @required Result successful(SyncSpeechResultSuccessful value),
    @required Result error(SyncSpeechResultError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(SyncSpeechResult$ value), {
    Result successful(SyncSpeechResultSuccessful value),
    Result error(SyncSpeechResultError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class SyncSpeechResultError implements SyncSpeechResult, ErrorAction {
  const factory SyncSpeechResultError(StateError error) =
      _$SyncSpeechResultError;

  StateError get error;
  $SyncSpeechResultErrorCopyWith<SyncSpeechResultError> get copyWith;
}

/// @nodoc
class _$GetSyncedSpeechResultsTearOff {
  const _$GetSyncedSpeechResultsTearOff();

// ignore: unused_element
  GetSyncedSpeechResults$ call() {
    return const GetSyncedSpeechResults$();
  }

// ignore: unused_element
  GetSyncedSpeechResultsSuccessful successful(
      List<SpeechResult> speechResultList) {
    return GetSyncedSpeechResultsSuccessful(
      speechResultList,
    );
  }

// ignore: unused_element
  GetSyncedSpeechResultsError error(StateError error) {
    return GetSyncedSpeechResultsError(
      error,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $GetSyncedSpeechResults = _$GetSyncedSpeechResultsTearOff();

/// @nodoc
mixin _$GetSyncedSpeechResults {
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(), {
    @required Result successful(List<SpeechResult> speechResultList),
    @required Result error(StateError error),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(), {
    Result successful(List<SpeechResult> speechResultList),
    Result error(StateError error),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(GetSyncedSpeechResults$ value), {
    @required Result successful(GetSyncedSpeechResultsSuccessful value),
    @required Result error(GetSyncedSpeechResultsError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(GetSyncedSpeechResults$ value), {
    Result successful(GetSyncedSpeechResultsSuccessful value),
    Result error(GetSyncedSpeechResultsError value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $GetSyncedSpeechResultsCopyWith<$Res> {
  factory $GetSyncedSpeechResultsCopyWith(GetSyncedSpeechResults value,
          $Res Function(GetSyncedSpeechResults) then) =
      _$GetSyncedSpeechResultsCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetSyncedSpeechResultsCopyWithImpl<$Res>
    implements $GetSyncedSpeechResultsCopyWith<$Res> {
  _$GetSyncedSpeechResultsCopyWithImpl(this._value, this._then);

  final GetSyncedSpeechResults _value;
  // ignore: unused_field
  final $Res Function(GetSyncedSpeechResults) _then;
}

/// @nodoc
abstract class $GetSyncedSpeechResults$CopyWith<$Res> {
  factory $GetSyncedSpeechResults$CopyWith(GetSyncedSpeechResults$ value,
          $Res Function(GetSyncedSpeechResults$) then) =
      _$GetSyncedSpeechResults$CopyWithImpl<$Res>;
}

/// @nodoc
class _$GetSyncedSpeechResults$CopyWithImpl<$Res>
    extends _$GetSyncedSpeechResultsCopyWithImpl<$Res>
    implements $GetSyncedSpeechResults$CopyWith<$Res> {
  _$GetSyncedSpeechResults$CopyWithImpl(GetSyncedSpeechResults$ _value,
      $Res Function(GetSyncedSpeechResults$) _then)
      : super(_value, (v) => _then(v as GetSyncedSpeechResults$));

  @override
  GetSyncedSpeechResults$ get _value => super._value as GetSyncedSpeechResults$;
}

/// @nodoc
class _$GetSyncedSpeechResults$ implements GetSyncedSpeechResults$ {
  const _$GetSyncedSpeechResults$();

  @override
  String toString() {
    return 'GetSyncedSpeechResults()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is GetSyncedSpeechResults$);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(), {
    @required Result successful(List<SpeechResult> speechResultList),
    @required Result error(StateError error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return $default();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(), {
    Result successful(List<SpeechResult> speechResultList),
    Result error(StateError error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(GetSyncedSpeechResults$ value), {
    @required Result successful(GetSyncedSpeechResultsSuccessful value),
    @required Result error(GetSyncedSpeechResultsError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return $default(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(GetSyncedSpeechResults$ value), {
    Result successful(GetSyncedSpeechResultsSuccessful value),
    Result error(GetSyncedSpeechResultsError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class GetSyncedSpeechResults$ implements GetSyncedSpeechResults {
  const factory GetSyncedSpeechResults$() = _$GetSyncedSpeechResults$;
}

/// @nodoc
abstract class $GetSyncedSpeechResultsSuccessfulCopyWith<$Res> {
  factory $GetSyncedSpeechResultsSuccessfulCopyWith(
          GetSyncedSpeechResultsSuccessful value,
          $Res Function(GetSyncedSpeechResultsSuccessful) then) =
      _$GetSyncedSpeechResultsSuccessfulCopyWithImpl<$Res>;
  $Res call({List<SpeechResult> speechResultList});
}

/// @nodoc
class _$GetSyncedSpeechResultsSuccessfulCopyWithImpl<$Res>
    extends _$GetSyncedSpeechResultsCopyWithImpl<$Res>
    implements $GetSyncedSpeechResultsSuccessfulCopyWith<$Res> {
  _$GetSyncedSpeechResultsSuccessfulCopyWithImpl(
      GetSyncedSpeechResultsSuccessful _value,
      $Res Function(GetSyncedSpeechResultsSuccessful) _then)
      : super(_value, (v) => _then(v as GetSyncedSpeechResultsSuccessful));

  @override
  GetSyncedSpeechResultsSuccessful get _value =>
      super._value as GetSyncedSpeechResultsSuccessful;

  @override
  $Res call({
    Object speechResultList = freezed,
  }) {
    return _then(GetSyncedSpeechResultsSuccessful(
      speechResultList == freezed
          ? _value.speechResultList
          : speechResultList as List<SpeechResult>,
    ));
  }
}

/// @nodoc
class _$GetSyncedSpeechResultsSuccessful
    implements GetSyncedSpeechResultsSuccessful {
  const _$GetSyncedSpeechResultsSuccessful(this.speechResultList)
      : assert(speechResultList != null);

  @override
  final List<SpeechResult> speechResultList;

  @override
  String toString() {
    return 'GetSyncedSpeechResults.successful(speechResultList: $speechResultList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetSyncedSpeechResultsSuccessful &&
            (identical(other.speechResultList, speechResultList) ||
                const DeepCollectionEquality()
                    .equals(other.speechResultList, speechResultList)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(speechResultList);

  @override
  $GetSyncedSpeechResultsSuccessfulCopyWith<GetSyncedSpeechResultsSuccessful>
      get copyWith => _$GetSyncedSpeechResultsSuccessfulCopyWithImpl<
          GetSyncedSpeechResultsSuccessful>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(), {
    @required Result successful(List<SpeechResult> speechResultList),
    @required Result error(StateError error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful(speechResultList);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(), {
    Result successful(List<SpeechResult> speechResultList),
    Result error(StateError error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful(speechResultList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(GetSyncedSpeechResults$ value), {
    @required Result successful(GetSyncedSpeechResultsSuccessful value),
    @required Result error(GetSyncedSpeechResultsError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(GetSyncedSpeechResults$ value), {
    Result successful(GetSyncedSpeechResultsSuccessful value),
    Result error(GetSyncedSpeechResultsError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class GetSyncedSpeechResultsSuccessful
    implements GetSyncedSpeechResults {
  const factory GetSyncedSpeechResultsSuccessful(
      List<SpeechResult> speechResultList) = _$GetSyncedSpeechResultsSuccessful;

  List<SpeechResult> get speechResultList;
  $GetSyncedSpeechResultsSuccessfulCopyWith<GetSyncedSpeechResultsSuccessful>
      get copyWith;
}

/// @nodoc
abstract class $GetSyncedSpeechResultsErrorCopyWith<$Res> {
  factory $GetSyncedSpeechResultsErrorCopyWith(
          GetSyncedSpeechResultsError value,
          $Res Function(GetSyncedSpeechResultsError) then) =
      _$GetSyncedSpeechResultsErrorCopyWithImpl<$Res>;
  $Res call({StateError error});
}

/// @nodoc
class _$GetSyncedSpeechResultsErrorCopyWithImpl<$Res>
    extends _$GetSyncedSpeechResultsCopyWithImpl<$Res>
    implements $GetSyncedSpeechResultsErrorCopyWith<$Res> {
  _$GetSyncedSpeechResultsErrorCopyWithImpl(GetSyncedSpeechResultsError _value,
      $Res Function(GetSyncedSpeechResultsError) _then)
      : super(_value, (v) => _then(v as GetSyncedSpeechResultsError));

  @override
  GetSyncedSpeechResultsError get _value =>
      super._value as GetSyncedSpeechResultsError;

  @override
  $Res call({
    Object error = freezed,
  }) {
    return _then(GetSyncedSpeechResultsError(
      error == freezed ? _value.error : error as StateError,
    ));
  }
}

@Implements(ErrorAction)

/// @nodoc
class _$GetSyncedSpeechResultsError implements GetSyncedSpeechResultsError {
  const _$GetSyncedSpeechResultsError(this.error) : assert(error != null);

  @override
  final StateError error;

  @override
  String toString() {
    return 'GetSyncedSpeechResults.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetSyncedSpeechResultsError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @override
  $GetSyncedSpeechResultsErrorCopyWith<GetSyncedSpeechResultsError>
      get copyWith => _$GetSyncedSpeechResultsErrorCopyWithImpl<
          GetSyncedSpeechResultsError>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(), {
    @required Result successful(List<SpeechResult> speechResultList),
    @required Result error(StateError error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(), {
    Result successful(List<SpeechResult> speechResultList),
    Result error(StateError error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(GetSyncedSpeechResults$ value), {
    @required Result successful(GetSyncedSpeechResultsSuccessful value),
    @required Result error(GetSyncedSpeechResultsError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(GetSyncedSpeechResults$ value), {
    Result successful(GetSyncedSpeechResultsSuccessful value),
    Result error(GetSyncedSpeechResultsError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class GetSyncedSpeechResultsError
    implements GetSyncedSpeechResults, ErrorAction {
  const factory GetSyncedSpeechResultsError(StateError error) =
      _$GetSyncedSpeechResultsError;

  StateError get error;
  $GetSyncedSpeechResultsErrorCopyWith<GetSyncedSpeechResultsError>
      get copyWith;
}
