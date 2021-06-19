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

/// @nodoc
class _$ListenForSpeechTearOff {
  const _$ListenForSpeechTearOff();

// ignore: unused_element
  ListenForSpeech$ call(
      {@required String languageCode, @required String serviceAccount}) {
    return ListenForSpeech$(
      languageCode: languageCode,
      serviceAccount: serviceAccount,
    );
  }

// ignore: unused_element
  ListenForSpeechSuccessful successful(String recognizedText) {
    return ListenForSpeechSuccessful(
      recognizedText,
    );
  }

// ignore: unused_element
  ListenForSpeechError error(Object error) {
    return ListenForSpeechError(
      error,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ListenForSpeech = _$ListenForSpeechTearOff();

/// @nodoc
mixin _$ListenForSpeech {
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String languageCode, String serviceAccount), {
    @required Result successful(String recognizedText),
    @required Result error(Object error),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String languageCode, String serviceAccount), {
    Result successful(String recognizedText),
    Result error(Object error),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(ListenForSpeech$ value), {
    @required Result successful(ListenForSpeechSuccessful value),
    @required Result error(ListenForSpeechError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(ListenForSpeech$ value), {
    Result successful(ListenForSpeechSuccessful value),
    Result error(ListenForSpeechError value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $ListenForSpeechCopyWith<$Res> {
  factory $ListenForSpeechCopyWith(
          ListenForSpeech value, $Res Function(ListenForSpeech) then) =
      _$ListenForSpeechCopyWithImpl<$Res>;
}

/// @nodoc
class _$ListenForSpeechCopyWithImpl<$Res>
    implements $ListenForSpeechCopyWith<$Res> {
  _$ListenForSpeechCopyWithImpl(this._value, this._then);

  final ListenForSpeech _value;
  // ignore: unused_field
  final $Res Function(ListenForSpeech) _then;
}

/// @nodoc
abstract class $ListenForSpeech$CopyWith<$Res> {
  factory $ListenForSpeech$CopyWith(
          ListenForSpeech$ value, $Res Function(ListenForSpeech$) then) =
      _$ListenForSpeech$CopyWithImpl<$Res>;
  $Res call({String languageCode, String serviceAccount});
}

/// @nodoc
class _$ListenForSpeech$CopyWithImpl<$Res>
    extends _$ListenForSpeechCopyWithImpl<$Res>
    implements $ListenForSpeech$CopyWith<$Res> {
  _$ListenForSpeech$CopyWithImpl(
      ListenForSpeech$ _value, $Res Function(ListenForSpeech$) _then)
      : super(_value, (v) => _then(v as ListenForSpeech$));

  @override
  ListenForSpeech$ get _value => super._value as ListenForSpeech$;

  @override
  $Res call({
    Object languageCode = freezed,
    Object serviceAccount = freezed,
  }) {
    return _then(ListenForSpeech$(
      languageCode: languageCode == freezed
          ? _value.languageCode
          : languageCode as String,
      serviceAccount: serviceAccount == freezed
          ? _value.serviceAccount
          : serviceAccount as String,
    ));
  }
}

/// @nodoc
class _$ListenForSpeech$ implements ListenForSpeech$ {
  const _$ListenForSpeech$(
      {@required this.languageCode, @required this.serviceAccount})
      : assert(languageCode != null),
        assert(serviceAccount != null);

  @override
  final String languageCode;
  @override
  final String serviceAccount;

  @override
  String toString() {
    return 'ListenForSpeech(languageCode: $languageCode, serviceAccount: $serviceAccount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ListenForSpeech$ &&
            (identical(other.languageCode, languageCode) ||
                const DeepCollectionEquality()
                    .equals(other.languageCode, languageCode)) &&
            (identical(other.serviceAccount, serviceAccount) ||
                const DeepCollectionEquality()
                    .equals(other.serviceAccount, serviceAccount)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(languageCode) ^
      const DeepCollectionEquality().hash(serviceAccount);

  @override
  $ListenForSpeech$CopyWith<ListenForSpeech$> get copyWith =>
      _$ListenForSpeech$CopyWithImpl<ListenForSpeech$>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String languageCode, String serviceAccount), {
    @required Result successful(String recognizedText),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return $default(languageCode, serviceAccount);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String languageCode, String serviceAccount), {
    Result successful(String recognizedText),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(languageCode, serviceAccount);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(ListenForSpeech$ value), {
    @required Result successful(ListenForSpeechSuccessful value),
    @required Result error(ListenForSpeechError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return $default(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(ListenForSpeech$ value), {
    Result successful(ListenForSpeechSuccessful value),
    Result error(ListenForSpeechError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class ListenForSpeech$ implements ListenForSpeech {
  const factory ListenForSpeech$(
      {@required String languageCode,
      @required String serviceAccount}) = _$ListenForSpeech$;

  String get languageCode;
  String get serviceAccount;
  $ListenForSpeech$CopyWith<ListenForSpeech$> get copyWith;
}

/// @nodoc
abstract class $ListenForSpeechSuccessfulCopyWith<$Res> {
  factory $ListenForSpeechSuccessfulCopyWith(ListenForSpeechSuccessful value,
          $Res Function(ListenForSpeechSuccessful) then) =
      _$ListenForSpeechSuccessfulCopyWithImpl<$Res>;
  $Res call({String recognizedText});
}

/// @nodoc
class _$ListenForSpeechSuccessfulCopyWithImpl<$Res>
    extends _$ListenForSpeechCopyWithImpl<$Res>
    implements $ListenForSpeechSuccessfulCopyWith<$Res> {
  _$ListenForSpeechSuccessfulCopyWithImpl(ListenForSpeechSuccessful _value,
      $Res Function(ListenForSpeechSuccessful) _then)
      : super(_value, (v) => _then(v as ListenForSpeechSuccessful));

  @override
  ListenForSpeechSuccessful get _value =>
      super._value as ListenForSpeechSuccessful;

  @override
  $Res call({
    Object recognizedText = freezed,
  }) {
    return _then(ListenForSpeechSuccessful(
      recognizedText == freezed
          ? _value.recognizedText
          : recognizedText as String,
    ));
  }
}

/// @nodoc
class _$ListenForSpeechSuccessful implements ListenForSpeechSuccessful {
  const _$ListenForSpeechSuccessful(this.recognizedText)
      : assert(recognizedText != null);

  @override
  final String recognizedText;

  @override
  String toString() {
    return 'ListenForSpeech.successful(recognizedText: $recognizedText)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ListenForSpeechSuccessful &&
            (identical(other.recognizedText, recognizedText) ||
                const DeepCollectionEquality()
                    .equals(other.recognizedText, recognizedText)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(recognizedText);

  @override
  $ListenForSpeechSuccessfulCopyWith<ListenForSpeechSuccessful> get copyWith =>
      _$ListenForSpeechSuccessfulCopyWithImpl<ListenForSpeechSuccessful>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String languageCode, String serviceAccount), {
    @required Result successful(String recognizedText),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful(recognizedText);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String languageCode, String serviceAccount), {
    Result successful(String recognizedText),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful(recognizedText);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(ListenForSpeech$ value), {
    @required Result successful(ListenForSpeechSuccessful value),
    @required Result error(ListenForSpeechError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(ListenForSpeech$ value), {
    Result successful(ListenForSpeechSuccessful value),
    Result error(ListenForSpeechError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class ListenForSpeechSuccessful implements ListenForSpeech {
  const factory ListenForSpeechSuccessful(String recognizedText) =
      _$ListenForSpeechSuccessful;

  String get recognizedText;
  $ListenForSpeechSuccessfulCopyWith<ListenForSpeechSuccessful> get copyWith;
}

/// @nodoc
abstract class $ListenForSpeechErrorCopyWith<$Res> {
  factory $ListenForSpeechErrorCopyWith(ListenForSpeechError value,
          $Res Function(ListenForSpeechError) then) =
      _$ListenForSpeechErrorCopyWithImpl<$Res>;
  $Res call({Object error});
}

/// @nodoc
class _$ListenForSpeechErrorCopyWithImpl<$Res>
    extends _$ListenForSpeechCopyWithImpl<$Res>
    implements $ListenForSpeechErrorCopyWith<$Res> {
  _$ListenForSpeechErrorCopyWithImpl(
      ListenForSpeechError _value, $Res Function(ListenForSpeechError) _then)
      : super(_value, (v) => _then(v as ListenForSpeechError));

  @override
  ListenForSpeechError get _value => super._value as ListenForSpeechError;

  @override
  $Res call({
    Object error = freezed,
  }) {
    return _then(ListenForSpeechError(
      error == freezed ? _value.error : error,
    ));
  }
}

@Implements(ErrorAction)

/// @nodoc
class _$ListenForSpeechError implements ListenForSpeechError {
  const _$ListenForSpeechError(this.error) : assert(error != null);

  @override
  final Object error;

  @override
  String toString() {
    return 'ListenForSpeech.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ListenForSpeechError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @override
  $ListenForSpeechErrorCopyWith<ListenForSpeechError> get copyWith =>
      _$ListenForSpeechErrorCopyWithImpl<ListenForSpeechError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String languageCode, String serviceAccount), {
    @required Result successful(String recognizedText),
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
    Result $default(String languageCode, String serviceAccount), {
    Result successful(String recognizedText),
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
    Result $default(ListenForSpeech$ value), {
    @required Result successful(ListenForSpeechSuccessful value),
    @required Result error(ListenForSpeechError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(ListenForSpeech$ value), {
    Result successful(ListenForSpeechSuccessful value),
    Result error(ListenForSpeechError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ListenForSpeechError implements ListenForSpeech, ErrorAction {
  const factory ListenForSpeechError(Object error) = _$ListenForSpeechError;

  Object get error;
  $ListenForSpeechErrorCopyWith<ListenForSpeechError> get copyWith;
}

/// @nodoc
class _$StopListeningForSpeechTearOff {
  const _$StopListeningForSpeechTearOff();

// ignore: unused_element
  StopListeningForSpeech$ call() {
    return const StopListeningForSpeech$();
  }
}

/// @nodoc
// ignore: unused_element
const $StopListeningForSpeech = _$StopListeningForSpeechTearOff();

/// @nodoc
mixin _$StopListeningForSpeech {}

/// @nodoc
abstract class $StopListeningForSpeechCopyWith<$Res> {
  factory $StopListeningForSpeechCopyWith(StopListeningForSpeech value,
          $Res Function(StopListeningForSpeech) then) =
      _$StopListeningForSpeechCopyWithImpl<$Res>;
}

/// @nodoc
class _$StopListeningForSpeechCopyWithImpl<$Res>
    implements $StopListeningForSpeechCopyWith<$Res> {
  _$StopListeningForSpeechCopyWithImpl(this._value, this._then);

  final StopListeningForSpeech _value;
  // ignore: unused_field
  final $Res Function(StopListeningForSpeech) _then;
}

/// @nodoc
abstract class $StopListeningForSpeech$CopyWith<$Res> {
  factory $StopListeningForSpeech$CopyWith(StopListeningForSpeech$ value,
          $Res Function(StopListeningForSpeech$) then) =
      _$StopListeningForSpeech$CopyWithImpl<$Res>;
}

/// @nodoc
class _$StopListeningForSpeech$CopyWithImpl<$Res>
    extends _$StopListeningForSpeechCopyWithImpl<$Res>
    implements $StopListeningForSpeech$CopyWith<$Res> {
  _$StopListeningForSpeech$CopyWithImpl(StopListeningForSpeech$ _value,
      $Res Function(StopListeningForSpeech$) _then)
      : super(_value, (v) => _then(v as StopListeningForSpeech$));

  @override
  StopListeningForSpeech$ get _value => super._value as StopListeningForSpeech$;
}

/// @nodoc
class _$StopListeningForSpeech$ implements StopListeningForSpeech$ {
  const _$StopListeningForSpeech$();

  @override
  String toString() {
    return 'StopListeningForSpeech()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is StopListeningForSpeech$);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class StopListeningForSpeech$ implements StopListeningForSpeech {
  const factory StopListeningForSpeech$() = _$StopListeningForSpeech$;
}

/// @nodoc
class _$InitializeRecorderTearOff {
  const _$InitializeRecorderTearOff();

// ignore: unused_element
  InitializeRecorder$ call() {
    return const InitializeRecorder$();
  }

// ignore: unused_element
  InitializeRecorderSuccessful successful() {
    return const InitializeRecorderSuccessful();
  }

// ignore: unused_element
  InitializeRecorderError error(Object error) {
    return InitializeRecorderError(
      error,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $InitializeRecorder = _$InitializeRecorderTearOff();

/// @nodoc
mixin _$InitializeRecorder {
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
    Result $default(InitializeRecorder$ value), {
    @required Result successful(InitializeRecorderSuccessful value),
    @required Result error(InitializeRecorderError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(InitializeRecorder$ value), {
    Result successful(InitializeRecorderSuccessful value),
    Result error(InitializeRecorderError value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $InitializeRecorderCopyWith<$Res> {
  factory $InitializeRecorderCopyWith(
          InitializeRecorder value, $Res Function(InitializeRecorder) then) =
      _$InitializeRecorderCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitializeRecorderCopyWithImpl<$Res>
    implements $InitializeRecorderCopyWith<$Res> {
  _$InitializeRecorderCopyWithImpl(this._value, this._then);

  final InitializeRecorder _value;
  // ignore: unused_field
  final $Res Function(InitializeRecorder) _then;
}

/// @nodoc
abstract class $InitializeRecorder$CopyWith<$Res> {
  factory $InitializeRecorder$CopyWith(
          InitializeRecorder$ value, $Res Function(InitializeRecorder$) then) =
      _$InitializeRecorder$CopyWithImpl<$Res>;
}

/// @nodoc
class _$InitializeRecorder$CopyWithImpl<$Res>
    extends _$InitializeRecorderCopyWithImpl<$Res>
    implements $InitializeRecorder$CopyWith<$Res> {
  _$InitializeRecorder$CopyWithImpl(
      InitializeRecorder$ _value, $Res Function(InitializeRecorder$) _then)
      : super(_value, (v) => _then(v as InitializeRecorder$));

  @override
  InitializeRecorder$ get _value => super._value as InitializeRecorder$;
}

/// @nodoc
class _$InitializeRecorder$ implements InitializeRecorder$ {
  const _$InitializeRecorder$();

  @override
  String toString() {
    return 'InitializeRecorder()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is InitializeRecorder$);
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
    Result $default(InitializeRecorder$ value), {
    @required Result successful(InitializeRecorderSuccessful value),
    @required Result error(InitializeRecorderError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return $default(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(InitializeRecorder$ value), {
    Result successful(InitializeRecorderSuccessful value),
    Result error(InitializeRecorderError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class InitializeRecorder$ implements InitializeRecorder {
  const factory InitializeRecorder$() = _$InitializeRecorder$;
}

/// @nodoc
abstract class $InitializeRecorderSuccessfulCopyWith<$Res> {
  factory $InitializeRecorderSuccessfulCopyWith(
          InitializeRecorderSuccessful value,
          $Res Function(InitializeRecorderSuccessful) then) =
      _$InitializeRecorderSuccessfulCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitializeRecorderSuccessfulCopyWithImpl<$Res>
    extends _$InitializeRecorderCopyWithImpl<$Res>
    implements $InitializeRecorderSuccessfulCopyWith<$Res> {
  _$InitializeRecorderSuccessfulCopyWithImpl(
      InitializeRecorderSuccessful _value,
      $Res Function(InitializeRecorderSuccessful) _then)
      : super(_value, (v) => _then(v as InitializeRecorderSuccessful));

  @override
  InitializeRecorderSuccessful get _value =>
      super._value as InitializeRecorderSuccessful;
}

/// @nodoc
class _$InitializeRecorderSuccessful implements InitializeRecorderSuccessful {
  const _$InitializeRecorderSuccessful();

  @override
  String toString() {
    return 'InitializeRecorder.successful()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is InitializeRecorderSuccessful);
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
    Result $default(InitializeRecorder$ value), {
    @required Result successful(InitializeRecorderSuccessful value),
    @required Result error(InitializeRecorderError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(InitializeRecorder$ value), {
    Result successful(InitializeRecorderSuccessful value),
    Result error(InitializeRecorderError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class InitializeRecorderSuccessful implements InitializeRecorder {
  const factory InitializeRecorderSuccessful() = _$InitializeRecorderSuccessful;
}

/// @nodoc
abstract class $InitializeRecorderErrorCopyWith<$Res> {
  factory $InitializeRecorderErrorCopyWith(InitializeRecorderError value,
          $Res Function(InitializeRecorderError) then) =
      _$InitializeRecorderErrorCopyWithImpl<$Res>;
  $Res call({Object error});
}

/// @nodoc
class _$InitializeRecorderErrorCopyWithImpl<$Res>
    extends _$InitializeRecorderCopyWithImpl<$Res>
    implements $InitializeRecorderErrorCopyWith<$Res> {
  _$InitializeRecorderErrorCopyWithImpl(InitializeRecorderError _value,
      $Res Function(InitializeRecorderError) _then)
      : super(_value, (v) => _then(v as InitializeRecorderError));

  @override
  InitializeRecorderError get _value => super._value as InitializeRecorderError;

  @override
  $Res call({
    Object error = freezed,
  }) {
    return _then(InitializeRecorderError(
      error == freezed ? _value.error : error,
    ));
  }
}

@Implements(ErrorAction)

/// @nodoc
class _$InitializeRecorderError implements InitializeRecorderError {
  const _$InitializeRecorderError(this.error) : assert(error != null);

  @override
  final Object error;

  @override
  String toString() {
    return 'InitializeRecorder.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InitializeRecorderError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @override
  $InitializeRecorderErrorCopyWith<InitializeRecorderError> get copyWith =>
      _$InitializeRecorderErrorCopyWithImpl<InitializeRecorderError>(
          this, _$identity);

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
    Result $default(InitializeRecorder$ value), {
    @required Result successful(InitializeRecorderSuccessful value),
    @required Result error(InitializeRecorderError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(InitializeRecorder$ value), {
    Result successful(InitializeRecorderSuccessful value),
    Result error(InitializeRecorderError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class InitializeRecorderError
    implements InitializeRecorder, ErrorAction {
  const factory InitializeRecorderError(Object error) =
      _$InitializeRecorderError;

  Object get error;
  $InitializeRecorderErrorCopyWith<InitializeRecorderError> get copyWith;
}

/// @nodoc
class _$StartRecorderTearOff {
  const _$StartRecorderTearOff();

// ignore: unused_element
  StartRecorder$ call() {
    return const StartRecorder$();
  }

// ignore: unused_element
  StartRecorderSuccessful successful(bool isListening) {
    return StartRecorderSuccessful(
      isListening,
    );
  }

// ignore: unused_element
  StartRecorderError error(Object error) {
    return StartRecorderError(
      error,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $StartRecorder = _$StartRecorderTearOff();

/// @nodoc
mixin _$StartRecorder {
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(), {
    @required Result successful(bool isListening),
    @required Result error(Object error),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(), {
    Result successful(bool isListening),
    Result error(Object error),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(StartRecorder$ value), {
    @required Result successful(StartRecorderSuccessful value),
    @required Result error(StartRecorderError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(StartRecorder$ value), {
    Result successful(StartRecorderSuccessful value),
    Result error(StartRecorderError value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $StartRecorderCopyWith<$Res> {
  factory $StartRecorderCopyWith(
          StartRecorder value, $Res Function(StartRecorder) then) =
      _$StartRecorderCopyWithImpl<$Res>;
}

/// @nodoc
class _$StartRecorderCopyWithImpl<$Res>
    implements $StartRecorderCopyWith<$Res> {
  _$StartRecorderCopyWithImpl(this._value, this._then);

  final StartRecorder _value;
  // ignore: unused_field
  final $Res Function(StartRecorder) _then;
}

/// @nodoc
abstract class $StartRecorder$CopyWith<$Res> {
  factory $StartRecorder$CopyWith(
          StartRecorder$ value, $Res Function(StartRecorder$) then) =
      _$StartRecorder$CopyWithImpl<$Res>;
}

/// @nodoc
class _$StartRecorder$CopyWithImpl<$Res>
    extends _$StartRecorderCopyWithImpl<$Res>
    implements $StartRecorder$CopyWith<$Res> {
  _$StartRecorder$CopyWithImpl(
      StartRecorder$ _value, $Res Function(StartRecorder$) _then)
      : super(_value, (v) => _then(v as StartRecorder$));

  @override
  StartRecorder$ get _value => super._value as StartRecorder$;
}

/// @nodoc
class _$StartRecorder$ implements StartRecorder$ {
  const _$StartRecorder$();

  @override
  String toString() {
    return 'StartRecorder()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is StartRecorder$);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(), {
    @required Result successful(bool isListening),
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
    Result successful(bool isListening),
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
    Result $default(StartRecorder$ value), {
    @required Result successful(StartRecorderSuccessful value),
    @required Result error(StartRecorderError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return $default(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(StartRecorder$ value), {
    Result successful(StartRecorderSuccessful value),
    Result error(StartRecorderError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class StartRecorder$ implements StartRecorder {
  const factory StartRecorder$() = _$StartRecorder$;
}

/// @nodoc
abstract class $StartRecorderSuccessfulCopyWith<$Res> {
  factory $StartRecorderSuccessfulCopyWith(StartRecorderSuccessful value,
          $Res Function(StartRecorderSuccessful) then) =
      _$StartRecorderSuccessfulCopyWithImpl<$Res>;
  $Res call({bool isListening});
}

/// @nodoc
class _$StartRecorderSuccessfulCopyWithImpl<$Res>
    extends _$StartRecorderCopyWithImpl<$Res>
    implements $StartRecorderSuccessfulCopyWith<$Res> {
  _$StartRecorderSuccessfulCopyWithImpl(StartRecorderSuccessful _value,
      $Res Function(StartRecorderSuccessful) _then)
      : super(_value, (v) => _then(v as StartRecorderSuccessful));

  @override
  StartRecorderSuccessful get _value => super._value as StartRecorderSuccessful;

  @override
  $Res call({
    Object isListening = freezed,
  }) {
    return _then(StartRecorderSuccessful(
      isListening == freezed ? _value.isListening : isListening as bool,
    ));
  }
}

/// @nodoc
class _$StartRecorderSuccessful implements StartRecorderSuccessful {
  const _$StartRecorderSuccessful(this.isListening)
      : assert(isListening != null);

  @override
  final bool isListening;

  @override
  String toString() {
    return 'StartRecorder.successful(isListening: $isListening)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is StartRecorderSuccessful &&
            (identical(other.isListening, isListening) ||
                const DeepCollectionEquality()
                    .equals(other.isListening, isListening)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(isListening);

  @override
  $StartRecorderSuccessfulCopyWith<StartRecorderSuccessful> get copyWith =>
      _$StartRecorderSuccessfulCopyWithImpl<StartRecorderSuccessful>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(), {
    @required Result successful(bool isListening),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful(isListening);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(), {
    Result successful(bool isListening),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful(isListening);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(StartRecorder$ value), {
    @required Result successful(StartRecorderSuccessful value),
    @required Result error(StartRecorderError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(StartRecorder$ value), {
    Result successful(StartRecorderSuccessful value),
    Result error(StartRecorderError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class StartRecorderSuccessful implements StartRecorder {
  const factory StartRecorderSuccessful(bool isListening) =
      _$StartRecorderSuccessful;

  bool get isListening;
  $StartRecorderSuccessfulCopyWith<StartRecorderSuccessful> get copyWith;
}

/// @nodoc
abstract class $StartRecorderErrorCopyWith<$Res> {
  factory $StartRecorderErrorCopyWith(
          StartRecorderError value, $Res Function(StartRecorderError) then) =
      _$StartRecorderErrorCopyWithImpl<$Res>;
  $Res call({Object error});
}

/// @nodoc
class _$StartRecorderErrorCopyWithImpl<$Res>
    extends _$StartRecorderCopyWithImpl<$Res>
    implements $StartRecorderErrorCopyWith<$Res> {
  _$StartRecorderErrorCopyWithImpl(
      StartRecorderError _value, $Res Function(StartRecorderError) _then)
      : super(_value, (v) => _then(v as StartRecorderError));

  @override
  StartRecorderError get _value => super._value as StartRecorderError;

  @override
  $Res call({
    Object error = freezed,
  }) {
    return _then(StartRecorderError(
      error == freezed ? _value.error : error,
    ));
  }
}

@Implements(ErrorAction)

/// @nodoc
class _$StartRecorderError implements StartRecorderError {
  const _$StartRecorderError(this.error) : assert(error != null);

  @override
  final Object error;

  @override
  String toString() {
    return 'StartRecorder.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is StartRecorderError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @override
  $StartRecorderErrorCopyWith<StartRecorderError> get copyWith =>
      _$StartRecorderErrorCopyWithImpl<StartRecorderError>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(), {
    @required Result successful(bool isListening),
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
    Result successful(bool isListening),
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
    Result $default(StartRecorder$ value), {
    @required Result successful(StartRecorderSuccessful value),
    @required Result error(StartRecorderError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(StartRecorder$ value), {
    Result successful(StartRecorderSuccessful value),
    Result error(StartRecorderError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class StartRecorderError implements StartRecorder, ErrorAction {
  const factory StartRecorderError(Object error) = _$StartRecorderError;

  Object get error;
  $StartRecorderErrorCopyWith<StartRecorderError> get copyWith;
}

/// @nodoc
class _$StopRecorderTearOff {
  const _$StopRecorderTearOff();

// ignore: unused_element
  StopRecorder$ call() {
    return const StopRecorder$();
  }

// ignore: unused_element
  StopRecorderSuccessful successful(bool isListening) {
    return StopRecorderSuccessful(
      isListening,
    );
  }

// ignore: unused_element
  StopRecorderError error(Object error) {
    return StopRecorderError(
      error,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $StopRecorder = _$StopRecorderTearOff();

/// @nodoc
mixin _$StopRecorder {
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(), {
    @required Result successful(bool isListening),
    @required Result error(Object error),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(), {
    Result successful(bool isListening),
    Result error(Object error),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(StopRecorder$ value), {
    @required Result successful(StopRecorderSuccessful value),
    @required Result error(StopRecorderError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(StopRecorder$ value), {
    Result successful(StopRecorderSuccessful value),
    Result error(StopRecorderError value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $StopRecorderCopyWith<$Res> {
  factory $StopRecorderCopyWith(
          StopRecorder value, $Res Function(StopRecorder) then) =
      _$StopRecorderCopyWithImpl<$Res>;
}

/// @nodoc
class _$StopRecorderCopyWithImpl<$Res> implements $StopRecorderCopyWith<$Res> {
  _$StopRecorderCopyWithImpl(this._value, this._then);

  final StopRecorder _value;
  // ignore: unused_field
  final $Res Function(StopRecorder) _then;
}

/// @nodoc
abstract class $StopRecorder$CopyWith<$Res> {
  factory $StopRecorder$CopyWith(
          StopRecorder$ value, $Res Function(StopRecorder$) then) =
      _$StopRecorder$CopyWithImpl<$Res>;
}

/// @nodoc
class _$StopRecorder$CopyWithImpl<$Res> extends _$StopRecorderCopyWithImpl<$Res>
    implements $StopRecorder$CopyWith<$Res> {
  _$StopRecorder$CopyWithImpl(
      StopRecorder$ _value, $Res Function(StopRecorder$) _then)
      : super(_value, (v) => _then(v as StopRecorder$));

  @override
  StopRecorder$ get _value => super._value as StopRecorder$;
}

/// @nodoc
class _$StopRecorder$ implements StopRecorder$ {
  const _$StopRecorder$();

  @override
  String toString() {
    return 'StopRecorder()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is StopRecorder$);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(), {
    @required Result successful(bool isListening),
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
    Result successful(bool isListening),
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
    Result $default(StopRecorder$ value), {
    @required Result successful(StopRecorderSuccessful value),
    @required Result error(StopRecorderError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return $default(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(StopRecorder$ value), {
    Result successful(StopRecorderSuccessful value),
    Result error(StopRecorderError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class StopRecorder$ implements StopRecorder {
  const factory StopRecorder$() = _$StopRecorder$;
}

/// @nodoc
abstract class $StopRecorderSuccessfulCopyWith<$Res> {
  factory $StopRecorderSuccessfulCopyWith(StopRecorderSuccessful value,
          $Res Function(StopRecorderSuccessful) then) =
      _$StopRecorderSuccessfulCopyWithImpl<$Res>;
  $Res call({bool isListening});
}

/// @nodoc
class _$StopRecorderSuccessfulCopyWithImpl<$Res>
    extends _$StopRecorderCopyWithImpl<$Res>
    implements $StopRecorderSuccessfulCopyWith<$Res> {
  _$StopRecorderSuccessfulCopyWithImpl(StopRecorderSuccessful _value,
      $Res Function(StopRecorderSuccessful) _then)
      : super(_value, (v) => _then(v as StopRecorderSuccessful));

  @override
  StopRecorderSuccessful get _value => super._value as StopRecorderSuccessful;

  @override
  $Res call({
    Object isListening = freezed,
  }) {
    return _then(StopRecorderSuccessful(
      isListening == freezed ? _value.isListening : isListening as bool,
    ));
  }
}

/// @nodoc
class _$StopRecorderSuccessful implements StopRecorderSuccessful {
  const _$StopRecorderSuccessful(this.isListening)
      : assert(isListening != null);

  @override
  final bool isListening;

  @override
  String toString() {
    return 'StopRecorder.successful(isListening: $isListening)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is StopRecorderSuccessful &&
            (identical(other.isListening, isListening) ||
                const DeepCollectionEquality()
                    .equals(other.isListening, isListening)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(isListening);

  @override
  $StopRecorderSuccessfulCopyWith<StopRecorderSuccessful> get copyWith =>
      _$StopRecorderSuccessfulCopyWithImpl<StopRecorderSuccessful>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(), {
    @required Result successful(bool isListening),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful(isListening);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(), {
    Result successful(bool isListening),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful(isListening);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(StopRecorder$ value), {
    @required Result successful(StopRecorderSuccessful value),
    @required Result error(StopRecorderError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(StopRecorder$ value), {
    Result successful(StopRecorderSuccessful value),
    Result error(StopRecorderError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class StopRecorderSuccessful implements StopRecorder {
  const factory StopRecorderSuccessful(bool isListening) =
      _$StopRecorderSuccessful;

  bool get isListening;
  $StopRecorderSuccessfulCopyWith<StopRecorderSuccessful> get copyWith;
}

/// @nodoc
abstract class $StopRecorderErrorCopyWith<$Res> {
  factory $StopRecorderErrorCopyWith(
          StopRecorderError value, $Res Function(StopRecorderError) then) =
      _$StopRecorderErrorCopyWithImpl<$Res>;
  $Res call({Object error});
}

/// @nodoc
class _$StopRecorderErrorCopyWithImpl<$Res>
    extends _$StopRecorderCopyWithImpl<$Res>
    implements $StopRecorderErrorCopyWith<$Res> {
  _$StopRecorderErrorCopyWithImpl(
      StopRecorderError _value, $Res Function(StopRecorderError) _then)
      : super(_value, (v) => _then(v as StopRecorderError));

  @override
  StopRecorderError get _value => super._value as StopRecorderError;

  @override
  $Res call({
    Object error = freezed,
  }) {
    return _then(StopRecorderError(
      error == freezed ? _value.error : error,
    ));
  }
}

@Implements(ErrorAction)

/// @nodoc
class _$StopRecorderError implements StopRecorderError {
  const _$StopRecorderError(this.error) : assert(error != null);

  @override
  final Object error;

  @override
  String toString() {
    return 'StopRecorder.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is StopRecorderError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @override
  $StopRecorderErrorCopyWith<StopRecorderError> get copyWith =>
      _$StopRecorderErrorCopyWithImpl<StopRecorderError>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(), {
    @required Result successful(bool isListening),
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
    Result successful(bool isListening),
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
    Result $default(StopRecorder$ value), {
    @required Result successful(StopRecorderSuccessful value),
    @required Result error(StopRecorderError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(StopRecorder$ value), {
    Result successful(StopRecorderSuccessful value),
    Result error(StopRecorderError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class StopRecorderError implements StopRecorder, ErrorAction {
  const factory StopRecorderError(Object error) = _$StopRecorderError;

  Object get error;
  $StopRecorderErrorCopyWith<StopRecorderError> get copyWith;
}
