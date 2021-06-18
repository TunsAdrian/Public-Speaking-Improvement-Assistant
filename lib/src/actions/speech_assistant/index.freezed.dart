// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of speech_assistant_actions;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$ListenForInternetStatusTearOff {
  const _$ListenForInternetStatusTearOff();

// ignore: unused_element
  ListenForInternetStatus$ call() {
    return const ListenForInternetStatus$();
  }

// ignore: unused_element
  ListenForInternetStatusSuccessful successful(bool hasInternetConnection) {
    return ListenForInternetStatusSuccessful(
      hasInternetConnection,
    );
  }

// ignore: unused_element
  ListenForInternetStatusError error(Object error) {
    return ListenForInternetStatusError(
      error,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ListenForInternetStatus = _$ListenForInternetStatusTearOff();

/// @nodoc
mixin _$ListenForInternetStatus {
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(), {
    @required Result successful(bool hasInternetConnection),
    @required Result error(Object error),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(), {
    Result successful(bool hasInternetConnection),
    Result error(Object error),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(ListenForInternetStatus$ value), {
    @required Result successful(ListenForInternetStatusSuccessful value),
    @required Result error(ListenForInternetStatusError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(ListenForInternetStatus$ value), {
    Result successful(ListenForInternetStatusSuccessful value),
    Result error(ListenForInternetStatusError value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $ListenForInternetStatusCopyWith<$Res> {
  factory $ListenForInternetStatusCopyWith(ListenForInternetStatus value,
          $Res Function(ListenForInternetStatus) then) =
      _$ListenForInternetStatusCopyWithImpl<$Res>;
}

/// @nodoc
class _$ListenForInternetStatusCopyWithImpl<$Res>
    implements $ListenForInternetStatusCopyWith<$Res> {
  _$ListenForInternetStatusCopyWithImpl(this._value, this._then);

  final ListenForInternetStatus _value;
  // ignore: unused_field
  final $Res Function(ListenForInternetStatus) _then;
}

/// @nodoc
abstract class $ListenForInternetStatus$CopyWith<$Res> {
  factory $ListenForInternetStatus$CopyWith(ListenForInternetStatus$ value,
          $Res Function(ListenForInternetStatus$) then) =
      _$ListenForInternetStatus$CopyWithImpl<$Res>;
}

/// @nodoc
class _$ListenForInternetStatus$CopyWithImpl<$Res>
    extends _$ListenForInternetStatusCopyWithImpl<$Res>
    implements $ListenForInternetStatus$CopyWith<$Res> {
  _$ListenForInternetStatus$CopyWithImpl(ListenForInternetStatus$ _value,
      $Res Function(ListenForInternetStatus$) _then)
      : super(_value, (v) => _then(v as ListenForInternetStatus$));

  @override
  ListenForInternetStatus$ get _value =>
      super._value as ListenForInternetStatus$;
}

/// @nodoc
class _$ListenForInternetStatus$ implements ListenForInternetStatus$ {
  const _$ListenForInternetStatus$();

  @override
  String toString() {
    return 'ListenForInternetStatus()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ListenForInternetStatus$);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(), {
    @required Result successful(bool hasInternetConnection),
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
    Result successful(bool hasInternetConnection),
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
    Result $default(ListenForInternetStatus$ value), {
    @required Result successful(ListenForInternetStatusSuccessful value),
    @required Result error(ListenForInternetStatusError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return $default(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(ListenForInternetStatus$ value), {
    Result successful(ListenForInternetStatusSuccessful value),
    Result error(ListenForInternetStatusError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class ListenForInternetStatus$ implements ListenForInternetStatus {
  const factory ListenForInternetStatus$() = _$ListenForInternetStatus$;
}

/// @nodoc
abstract class $ListenForInternetStatusSuccessfulCopyWith<$Res> {
  factory $ListenForInternetStatusSuccessfulCopyWith(
          ListenForInternetStatusSuccessful value,
          $Res Function(ListenForInternetStatusSuccessful) then) =
      _$ListenForInternetStatusSuccessfulCopyWithImpl<$Res>;
  $Res call({bool hasInternetConnection});
}

/// @nodoc
class _$ListenForInternetStatusSuccessfulCopyWithImpl<$Res>
    extends _$ListenForInternetStatusCopyWithImpl<$Res>
    implements $ListenForInternetStatusSuccessfulCopyWith<$Res> {
  _$ListenForInternetStatusSuccessfulCopyWithImpl(
      ListenForInternetStatusSuccessful _value,
      $Res Function(ListenForInternetStatusSuccessful) _then)
      : super(_value, (v) => _then(v as ListenForInternetStatusSuccessful));

  @override
  ListenForInternetStatusSuccessful get _value =>
      super._value as ListenForInternetStatusSuccessful;

  @override
  $Res call({
    Object hasInternetConnection = freezed,
  }) {
    return _then(ListenForInternetStatusSuccessful(
      hasInternetConnection == freezed
          ? _value.hasInternetConnection
          : hasInternetConnection as bool,
    ));
  }
}

/// @nodoc
class _$ListenForInternetStatusSuccessful
    implements ListenForInternetStatusSuccessful {
  const _$ListenForInternetStatusSuccessful(this.hasInternetConnection)
      : assert(hasInternetConnection != null);

  @override
  final bool hasInternetConnection;

  @override
  String toString() {
    return 'ListenForInternetStatus.successful(hasInternetConnection: $hasInternetConnection)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ListenForInternetStatusSuccessful &&
            (identical(other.hasInternetConnection, hasInternetConnection) ||
                const DeepCollectionEquality().equals(
                    other.hasInternetConnection, hasInternetConnection)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(hasInternetConnection);

  @override
  $ListenForInternetStatusSuccessfulCopyWith<ListenForInternetStatusSuccessful>
      get copyWith => _$ListenForInternetStatusSuccessfulCopyWithImpl<
          ListenForInternetStatusSuccessful>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(), {
    @required Result successful(bool hasInternetConnection),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful(hasInternetConnection);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(), {
    Result successful(bool hasInternetConnection),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful(hasInternetConnection);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(ListenForInternetStatus$ value), {
    @required Result successful(ListenForInternetStatusSuccessful value),
    @required Result error(ListenForInternetStatusError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(ListenForInternetStatus$ value), {
    Result successful(ListenForInternetStatusSuccessful value),
    Result error(ListenForInternetStatusError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class ListenForInternetStatusSuccessful
    implements ListenForInternetStatus {
  const factory ListenForInternetStatusSuccessful(bool hasInternetConnection) =
      _$ListenForInternetStatusSuccessful;

  bool get hasInternetConnection;
  $ListenForInternetStatusSuccessfulCopyWith<ListenForInternetStatusSuccessful>
      get copyWith;
}

/// @nodoc
abstract class $ListenForInternetStatusErrorCopyWith<$Res> {
  factory $ListenForInternetStatusErrorCopyWith(
          ListenForInternetStatusError value,
          $Res Function(ListenForInternetStatusError) then) =
      _$ListenForInternetStatusErrorCopyWithImpl<$Res>;
  $Res call({Object error});
}

/// @nodoc
class _$ListenForInternetStatusErrorCopyWithImpl<$Res>
    extends _$ListenForInternetStatusCopyWithImpl<$Res>
    implements $ListenForInternetStatusErrorCopyWith<$Res> {
  _$ListenForInternetStatusErrorCopyWithImpl(
      ListenForInternetStatusError _value,
      $Res Function(ListenForInternetStatusError) _then)
      : super(_value, (v) => _then(v as ListenForInternetStatusError));

  @override
  ListenForInternetStatusError get _value =>
      super._value as ListenForInternetStatusError;

  @override
  $Res call({
    Object error = freezed,
  }) {
    return _then(ListenForInternetStatusError(
      error == freezed ? _value.error : error,
    ));
  }
}

@Implements(ErrorAction)

/// @nodoc
class _$ListenForInternetStatusError implements ListenForInternetStatusError {
  const _$ListenForInternetStatusError(this.error) : assert(error != null);

  @override
  final Object error;

  @override
  String toString() {
    return 'ListenForInternetStatus.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ListenForInternetStatusError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @override
  $ListenForInternetStatusErrorCopyWith<ListenForInternetStatusError>
      get copyWith => _$ListenForInternetStatusErrorCopyWithImpl<
          ListenForInternetStatusError>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(), {
    @required Result successful(bool hasInternetConnection),
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
    Result successful(bool hasInternetConnection),
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
    Result $default(ListenForInternetStatus$ value), {
    @required Result successful(ListenForInternetStatusSuccessful value),
    @required Result error(ListenForInternetStatusError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(ListenForInternetStatus$ value), {
    Result successful(ListenForInternetStatusSuccessful value),
    Result error(ListenForInternetStatusError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ListenForInternetStatusError
    implements ListenForInternetStatus, ErrorAction {
  const factory ListenForInternetStatusError(Object error) =
      _$ListenForInternetStatusError;

  Object get error;
  $ListenForInternetStatusErrorCopyWith<ListenForInternetStatusError>
      get copyWith;
}

/// @nodoc
class _$StopListeningForInternetStatusTearOff {
  const _$StopListeningForInternetStatusTearOff();

// ignore: unused_element
  StopListeningForInternetStatus$ call() {
    return const StopListeningForInternetStatus$();
  }
}

/// @nodoc
// ignore: unused_element
const $StopListeningForInternetStatus =
    _$StopListeningForInternetStatusTearOff();

/// @nodoc
mixin _$StopListeningForInternetStatus {}

/// @nodoc
abstract class $StopListeningForInternetStatusCopyWith<$Res> {
  factory $StopListeningForInternetStatusCopyWith(
          StopListeningForInternetStatus value,
          $Res Function(StopListeningForInternetStatus) then) =
      _$StopListeningForInternetStatusCopyWithImpl<$Res>;
}

/// @nodoc
class _$StopListeningForInternetStatusCopyWithImpl<$Res>
    implements $StopListeningForInternetStatusCopyWith<$Res> {
  _$StopListeningForInternetStatusCopyWithImpl(this._value, this._then);

  final StopListeningForInternetStatus _value;
  // ignore: unused_field
  final $Res Function(StopListeningForInternetStatus) _then;
}

/// @nodoc
abstract class $StopListeningForInternetStatus$CopyWith<$Res> {
  factory $StopListeningForInternetStatus$CopyWith(
          StopListeningForInternetStatus$ value,
          $Res Function(StopListeningForInternetStatus$) then) =
      _$StopListeningForInternetStatus$CopyWithImpl<$Res>;
}

/// @nodoc
class _$StopListeningForInternetStatus$CopyWithImpl<$Res>
    extends _$StopListeningForInternetStatusCopyWithImpl<$Res>
    implements $StopListeningForInternetStatus$CopyWith<$Res> {
  _$StopListeningForInternetStatus$CopyWithImpl(
      StopListeningForInternetStatus$ _value,
      $Res Function(StopListeningForInternetStatus$) _then)
      : super(_value, (v) => _then(v as StopListeningForInternetStatus$));

  @override
  StopListeningForInternetStatus$ get _value =>
      super._value as StopListeningForInternetStatus$;
}

/// @nodoc
class _$StopListeningForInternetStatus$
    implements StopListeningForInternetStatus$ {
  const _$StopListeningForInternetStatus$();

  @override
  String toString() {
    return 'StopListeningForInternetStatus()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is StopListeningForInternetStatus$);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class StopListeningForInternetStatus$
    implements StopListeningForInternetStatus {
  const factory StopListeningForInternetStatus$() =
      _$StopListeningForInternetStatus$;
}
