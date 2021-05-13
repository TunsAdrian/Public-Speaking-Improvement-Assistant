// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of speech_result_actions;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$CreateSpeechResultTearOff {
  const _$CreateSpeechResultTearOff();

// ignore: unused_element
  CreateSpeechResult$ call(
      {@required Duration speechDuration,
      @required double speechClarity,
      @required List<String> speechWords,
      @required List<String> speechFillerWords}) {
    return CreateSpeechResult$(
      speechDuration: speechDuration,
      speechClarity: speechClarity,
      speechWords: speechWords,
      speechFillerWords: speechFillerWords,
    );
  }

// ignore: unused_element
  CreateSpeechResultSuccessful successful(SpeechResult speechResult) {
    return CreateSpeechResultSuccessful(
      speechResult,
    );
  }

// ignore: unused_element
  CreateSpeechResultError error(StateError error) {
    return CreateSpeechResultError(
      error,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $CreateSpeechResult = _$CreateSpeechResultTearOff();

/// @nodoc
mixin _$CreateSpeechResult {
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(Duration speechDuration, double speechClarity,
        List<String> speechWords, List<String> speechFillerWords), {
    @required Result successful(SpeechResult speechResult),
    @required Result error(StateError error),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(Duration speechDuration, double speechClarity,
        List<String> speechWords, List<String> speechFillerWords), {
    Result successful(SpeechResult speechResult),
    Result error(StateError error),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(CreateSpeechResult$ value), {
    @required Result successful(CreateSpeechResultSuccessful value),
    @required Result error(CreateSpeechResultError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(CreateSpeechResult$ value), {
    Result successful(CreateSpeechResultSuccessful value),
    Result error(CreateSpeechResultError value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $CreateSpeechResultCopyWith<$Res> {
  factory $CreateSpeechResultCopyWith(
          CreateSpeechResult value, $Res Function(CreateSpeechResult) then) =
      _$CreateSpeechResultCopyWithImpl<$Res>;
}

/// @nodoc
class _$CreateSpeechResultCopyWithImpl<$Res>
    implements $CreateSpeechResultCopyWith<$Res> {
  _$CreateSpeechResultCopyWithImpl(this._value, this._then);

  final CreateSpeechResult _value;
  // ignore: unused_field
  final $Res Function(CreateSpeechResult) _then;
}

/// @nodoc
abstract class $CreateSpeechResult$CopyWith<$Res> {
  factory $CreateSpeechResult$CopyWith(
          CreateSpeechResult$ value, $Res Function(CreateSpeechResult$) then) =
      _$CreateSpeechResult$CopyWithImpl<$Res>;
  $Res call(
      {Duration speechDuration,
      double speechClarity,
      List<String> speechWords,
      List<String> speechFillerWords});
}

/// @nodoc
class _$CreateSpeechResult$CopyWithImpl<$Res>
    extends _$CreateSpeechResultCopyWithImpl<$Res>
    implements $CreateSpeechResult$CopyWith<$Res> {
  _$CreateSpeechResult$CopyWithImpl(
      CreateSpeechResult$ _value, $Res Function(CreateSpeechResult$) _then)
      : super(_value, (v) => _then(v as CreateSpeechResult$));

  @override
  CreateSpeechResult$ get _value => super._value as CreateSpeechResult$;

  @override
  $Res call({
    Object speechDuration = freezed,
    Object speechClarity = freezed,
    Object speechWords = freezed,
    Object speechFillerWords = freezed,
  }) {
    return _then(CreateSpeechResult$(
      speechDuration: speechDuration == freezed
          ? _value.speechDuration
          : speechDuration as Duration,
      speechClarity: speechClarity == freezed
          ? _value.speechClarity
          : speechClarity as double,
      speechWords: speechWords == freezed
          ? _value.speechWords
          : speechWords as List<String>,
      speechFillerWords: speechFillerWords == freezed
          ? _value.speechFillerWords
          : speechFillerWords as List<String>,
    ));
  }
}

/// @nodoc
class _$CreateSpeechResult$ implements CreateSpeechResult$ {
  const _$CreateSpeechResult$(
      {@required this.speechDuration,
      @required this.speechClarity,
      @required this.speechWords,
      @required this.speechFillerWords})
      : assert(speechDuration != null),
        assert(speechClarity != null),
        assert(speechWords != null),
        assert(speechFillerWords != null);

  @override
  final Duration speechDuration;
  @override
  final double speechClarity;
  @override
  final List<String> speechWords;
  @override
  final List<String> speechFillerWords;

  @override
  String toString() {
    return 'CreateSpeechResult(speechDuration: $speechDuration, speechClarity: $speechClarity, speechWords: $speechWords, speechFillerWords: $speechFillerWords)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CreateSpeechResult$ &&
            (identical(other.speechDuration, speechDuration) ||
                const DeepCollectionEquality()
                    .equals(other.speechDuration, speechDuration)) &&
            (identical(other.speechClarity, speechClarity) ||
                const DeepCollectionEquality()
                    .equals(other.speechClarity, speechClarity)) &&
            (identical(other.speechWords, speechWords) ||
                const DeepCollectionEquality()
                    .equals(other.speechWords, speechWords)) &&
            (identical(other.speechFillerWords, speechFillerWords) ||
                const DeepCollectionEquality()
                    .equals(other.speechFillerWords, speechFillerWords)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(speechDuration) ^
      const DeepCollectionEquality().hash(speechClarity) ^
      const DeepCollectionEquality().hash(speechWords) ^
      const DeepCollectionEquality().hash(speechFillerWords);

  @override
  $CreateSpeechResult$CopyWith<CreateSpeechResult$> get copyWith =>
      _$CreateSpeechResult$CopyWithImpl<CreateSpeechResult$>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(Duration speechDuration, double speechClarity,
        List<String> speechWords, List<String> speechFillerWords), {
    @required Result successful(SpeechResult speechResult),
    @required Result error(StateError error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return $default(
        speechDuration, speechClarity, speechWords, speechFillerWords);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(Duration speechDuration, double speechClarity,
        List<String> speechWords, List<String> speechFillerWords), {
    Result successful(SpeechResult speechResult),
    Result error(StateError error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(
          speechDuration, speechClarity, speechWords, speechFillerWords);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(CreateSpeechResult$ value), {
    @required Result successful(CreateSpeechResultSuccessful value),
    @required Result error(CreateSpeechResultError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return $default(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(CreateSpeechResult$ value), {
    Result successful(CreateSpeechResultSuccessful value),
    Result error(CreateSpeechResultError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class CreateSpeechResult$ implements CreateSpeechResult {
  const factory CreateSpeechResult$(
      {@required Duration speechDuration,
      @required double speechClarity,
      @required List<String> speechWords,
      @required List<String> speechFillerWords}) = _$CreateSpeechResult$;

  Duration get speechDuration;
  double get speechClarity;
  List<String> get speechWords;
  List<String> get speechFillerWords;
  $CreateSpeechResult$CopyWith<CreateSpeechResult$> get copyWith;
}

/// @nodoc
abstract class $CreateSpeechResultSuccessfulCopyWith<$Res> {
  factory $CreateSpeechResultSuccessfulCopyWith(
          CreateSpeechResultSuccessful value,
          $Res Function(CreateSpeechResultSuccessful) then) =
      _$CreateSpeechResultSuccessfulCopyWithImpl<$Res>;
  $Res call({SpeechResult speechResult});
}

/// @nodoc
class _$CreateSpeechResultSuccessfulCopyWithImpl<$Res>
    extends _$CreateSpeechResultCopyWithImpl<$Res>
    implements $CreateSpeechResultSuccessfulCopyWith<$Res> {
  _$CreateSpeechResultSuccessfulCopyWithImpl(
      CreateSpeechResultSuccessful _value,
      $Res Function(CreateSpeechResultSuccessful) _then)
      : super(_value, (v) => _then(v as CreateSpeechResultSuccessful));

  @override
  CreateSpeechResultSuccessful get _value =>
      super._value as CreateSpeechResultSuccessful;

  @override
  $Res call({
    Object speechResult = freezed,
  }) {
    return _then(CreateSpeechResultSuccessful(
      speechResult == freezed
          ? _value.speechResult
          : speechResult as SpeechResult,
    ));
  }
}

/// @nodoc
class _$CreateSpeechResultSuccessful implements CreateSpeechResultSuccessful {
  const _$CreateSpeechResultSuccessful(this.speechResult)
      : assert(speechResult != null);

  @override
  final SpeechResult speechResult;

  @override
  String toString() {
    return 'CreateSpeechResult.successful(speechResult: $speechResult)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CreateSpeechResultSuccessful &&
            (identical(other.speechResult, speechResult) ||
                const DeepCollectionEquality()
                    .equals(other.speechResult, speechResult)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(speechResult);

  @override
  $CreateSpeechResultSuccessfulCopyWith<CreateSpeechResultSuccessful>
      get copyWith => _$CreateSpeechResultSuccessfulCopyWithImpl<
          CreateSpeechResultSuccessful>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(Duration speechDuration, double speechClarity,
        List<String> speechWords, List<String> speechFillerWords), {
    @required Result successful(SpeechResult speechResult),
    @required Result error(StateError error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful(speechResult);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(Duration speechDuration, double speechClarity,
        List<String> speechWords, List<String> speechFillerWords), {
    Result successful(SpeechResult speechResult),
    Result error(StateError error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful(speechResult);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(CreateSpeechResult$ value), {
    @required Result successful(CreateSpeechResultSuccessful value),
    @required Result error(CreateSpeechResultError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(CreateSpeechResult$ value), {
    Result successful(CreateSpeechResultSuccessful value),
    Result error(CreateSpeechResultError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class CreateSpeechResultSuccessful implements CreateSpeechResult {
  const factory CreateSpeechResultSuccessful(SpeechResult speechResult) =
      _$CreateSpeechResultSuccessful;

  SpeechResult get speechResult;
  $CreateSpeechResultSuccessfulCopyWith<CreateSpeechResultSuccessful>
      get copyWith;
}

/// @nodoc
abstract class $CreateSpeechResultErrorCopyWith<$Res> {
  factory $CreateSpeechResultErrorCopyWith(CreateSpeechResultError value,
          $Res Function(CreateSpeechResultError) then) =
      _$CreateSpeechResultErrorCopyWithImpl<$Res>;
  $Res call({StateError error});
}

/// @nodoc
class _$CreateSpeechResultErrorCopyWithImpl<$Res>
    extends _$CreateSpeechResultCopyWithImpl<$Res>
    implements $CreateSpeechResultErrorCopyWith<$Res> {
  _$CreateSpeechResultErrorCopyWithImpl(CreateSpeechResultError _value,
      $Res Function(CreateSpeechResultError) _then)
      : super(_value, (v) => _then(v as CreateSpeechResultError));

  @override
  CreateSpeechResultError get _value => super._value as CreateSpeechResultError;

  @override
  $Res call({
    Object error = freezed,
  }) {
    return _then(CreateSpeechResultError(
      error == freezed ? _value.error : error as StateError,
    ));
  }
}

@Implements(ErrorAction)

/// @nodoc
class _$CreateSpeechResultError implements CreateSpeechResultError {
  const _$CreateSpeechResultError(this.error) : assert(error != null);

  @override
  final StateError error;

  @override
  String toString() {
    return 'CreateSpeechResult.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CreateSpeechResultError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @override
  $CreateSpeechResultErrorCopyWith<CreateSpeechResultError> get copyWith =>
      _$CreateSpeechResultErrorCopyWithImpl<CreateSpeechResultError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(Duration speechDuration, double speechClarity,
        List<String> speechWords, List<String> speechFillerWords), {
    @required Result successful(SpeechResult speechResult),
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
    Result $default(Duration speechDuration, double speechClarity,
        List<String> speechWords, List<String> speechFillerWords), {
    Result successful(SpeechResult speechResult),
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
    Result $default(CreateSpeechResult$ value), {
    @required Result successful(CreateSpeechResultSuccessful value),
    @required Result error(CreateSpeechResultError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(CreateSpeechResult$ value), {
    Result successful(CreateSpeechResultSuccessful value),
    Result error(CreateSpeechResultError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class CreateSpeechResultError
    implements CreateSpeechResult, ErrorAction {
  const factory CreateSpeechResultError(StateError error) =
      _$CreateSpeechResultError;

  StateError get error;
  $CreateSpeechResultErrorCopyWith<CreateSpeechResultError> get copyWith;
}

/// @nodoc
class _$SaveSpeechResultTearOff {
  const _$SaveSpeechResultTearOff();

// ignore: unused_element
  SaveSpeechResult$ call({@required SpeechResult speechResult}) {
    return SaveSpeechResult$(
      speechResult: speechResult,
    );
  }

// ignore: unused_element
  SaveSpeechResultSuccessful successful(List<SpeechResult> speechResultList) {
    return SaveSpeechResultSuccessful(
      speechResultList,
    );
  }

// ignore: unused_element
  SaveSpeechResultError error(StateError error) {
    return SaveSpeechResultError(
      error,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $SaveSpeechResult = _$SaveSpeechResultTearOff();

/// @nodoc
mixin _$SaveSpeechResult {
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(SpeechResult speechResult), {
    @required Result successful(List<SpeechResult> speechResultList),
    @required Result error(StateError error),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(SpeechResult speechResult), {
    Result successful(List<SpeechResult> speechResultList),
    Result error(StateError error),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(SaveSpeechResult$ value), {
    @required Result successful(SaveSpeechResultSuccessful value),
    @required Result error(SaveSpeechResultError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(SaveSpeechResult$ value), {
    Result successful(SaveSpeechResultSuccessful value),
    Result error(SaveSpeechResultError value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $SaveSpeechResultCopyWith<$Res> {
  factory $SaveSpeechResultCopyWith(
          SaveSpeechResult value, $Res Function(SaveSpeechResult) then) =
      _$SaveSpeechResultCopyWithImpl<$Res>;
}

/// @nodoc
class _$SaveSpeechResultCopyWithImpl<$Res>
    implements $SaveSpeechResultCopyWith<$Res> {
  _$SaveSpeechResultCopyWithImpl(this._value, this._then);

  final SaveSpeechResult _value;
  // ignore: unused_field
  final $Res Function(SaveSpeechResult) _then;
}

/// @nodoc
abstract class $SaveSpeechResult$CopyWith<$Res> {
  factory $SaveSpeechResult$CopyWith(
          SaveSpeechResult$ value, $Res Function(SaveSpeechResult$) then) =
      _$SaveSpeechResult$CopyWithImpl<$Res>;
  $Res call({SpeechResult speechResult});
}

/// @nodoc
class _$SaveSpeechResult$CopyWithImpl<$Res>
    extends _$SaveSpeechResultCopyWithImpl<$Res>
    implements $SaveSpeechResult$CopyWith<$Res> {
  _$SaveSpeechResult$CopyWithImpl(
      SaveSpeechResult$ _value, $Res Function(SaveSpeechResult$) _then)
      : super(_value, (v) => _then(v as SaveSpeechResult$));

  @override
  SaveSpeechResult$ get _value => super._value as SaveSpeechResult$;

  @override
  $Res call({
    Object speechResult = freezed,
  }) {
    return _then(SaveSpeechResult$(
      speechResult: speechResult == freezed
          ? _value.speechResult
          : speechResult as SpeechResult,
    ));
  }
}

/// @nodoc
class _$SaveSpeechResult$ implements SaveSpeechResult$ {
  const _$SaveSpeechResult$({@required this.speechResult})
      : assert(speechResult != null);

  @override
  final SpeechResult speechResult;

  @override
  String toString() {
    return 'SaveSpeechResult(speechResult: $speechResult)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SaveSpeechResult$ &&
            (identical(other.speechResult, speechResult) ||
                const DeepCollectionEquality()
                    .equals(other.speechResult, speechResult)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(speechResult);

  @override
  $SaveSpeechResult$CopyWith<SaveSpeechResult$> get copyWith =>
      _$SaveSpeechResult$CopyWithImpl<SaveSpeechResult$>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(SpeechResult speechResult), {
    @required Result successful(List<SpeechResult> speechResultList),
    @required Result error(StateError error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return $default(speechResult);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(SpeechResult speechResult), {
    Result successful(List<SpeechResult> speechResultList),
    Result error(StateError error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(speechResult);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(SaveSpeechResult$ value), {
    @required Result successful(SaveSpeechResultSuccessful value),
    @required Result error(SaveSpeechResultError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return $default(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(SaveSpeechResult$ value), {
    Result successful(SaveSpeechResultSuccessful value),
    Result error(SaveSpeechResultError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class SaveSpeechResult$ implements SaveSpeechResult {
  const factory SaveSpeechResult$({@required SpeechResult speechResult}) =
      _$SaveSpeechResult$;

  SpeechResult get speechResult;
  $SaveSpeechResult$CopyWith<SaveSpeechResult$> get copyWith;
}

/// @nodoc
abstract class $SaveSpeechResultSuccessfulCopyWith<$Res> {
  factory $SaveSpeechResultSuccessfulCopyWith(SaveSpeechResultSuccessful value,
          $Res Function(SaveSpeechResultSuccessful) then) =
      _$SaveSpeechResultSuccessfulCopyWithImpl<$Res>;
  $Res call({List<SpeechResult> speechResultList});
}

/// @nodoc
class _$SaveSpeechResultSuccessfulCopyWithImpl<$Res>
    extends _$SaveSpeechResultCopyWithImpl<$Res>
    implements $SaveSpeechResultSuccessfulCopyWith<$Res> {
  _$SaveSpeechResultSuccessfulCopyWithImpl(SaveSpeechResultSuccessful _value,
      $Res Function(SaveSpeechResultSuccessful) _then)
      : super(_value, (v) => _then(v as SaveSpeechResultSuccessful));

  @override
  SaveSpeechResultSuccessful get _value =>
      super._value as SaveSpeechResultSuccessful;

  @override
  $Res call({
    Object speechResultList = freezed,
  }) {
    return _then(SaveSpeechResultSuccessful(
      speechResultList == freezed
          ? _value.speechResultList
          : speechResultList as List<SpeechResult>,
    ));
  }
}

/// @nodoc
class _$SaveSpeechResultSuccessful implements SaveSpeechResultSuccessful {
  const _$SaveSpeechResultSuccessful(this.speechResultList)
      : assert(speechResultList != null);

  @override
  final List<SpeechResult> speechResultList;

  @override
  String toString() {
    return 'SaveSpeechResult.successful(speechResultList: $speechResultList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SaveSpeechResultSuccessful &&
            (identical(other.speechResultList, speechResultList) ||
                const DeepCollectionEquality()
                    .equals(other.speechResultList, speechResultList)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(speechResultList);

  @override
  $SaveSpeechResultSuccessfulCopyWith<SaveSpeechResultSuccessful>
      get copyWith =>
          _$SaveSpeechResultSuccessfulCopyWithImpl<SaveSpeechResultSuccessful>(
              this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(SpeechResult speechResult), {
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
    Result $default(SpeechResult speechResult), {
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
    Result $default(SaveSpeechResult$ value), {
    @required Result successful(SaveSpeechResultSuccessful value),
    @required Result error(SaveSpeechResultError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(SaveSpeechResult$ value), {
    Result successful(SaveSpeechResultSuccessful value),
    Result error(SaveSpeechResultError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class SaveSpeechResultSuccessful implements SaveSpeechResult {
  const factory SaveSpeechResultSuccessful(
      List<SpeechResult> speechResultList) = _$SaveSpeechResultSuccessful;

  List<SpeechResult> get speechResultList;
  $SaveSpeechResultSuccessfulCopyWith<SaveSpeechResultSuccessful> get copyWith;
}

/// @nodoc
abstract class $SaveSpeechResultErrorCopyWith<$Res> {
  factory $SaveSpeechResultErrorCopyWith(SaveSpeechResultError value,
          $Res Function(SaveSpeechResultError) then) =
      _$SaveSpeechResultErrorCopyWithImpl<$Res>;
  $Res call({StateError error});
}

/// @nodoc
class _$SaveSpeechResultErrorCopyWithImpl<$Res>
    extends _$SaveSpeechResultCopyWithImpl<$Res>
    implements $SaveSpeechResultErrorCopyWith<$Res> {
  _$SaveSpeechResultErrorCopyWithImpl(
      SaveSpeechResultError _value, $Res Function(SaveSpeechResultError) _then)
      : super(_value, (v) => _then(v as SaveSpeechResultError));

  @override
  SaveSpeechResultError get _value => super._value as SaveSpeechResultError;

  @override
  $Res call({
    Object error = freezed,
  }) {
    return _then(SaveSpeechResultError(
      error == freezed ? _value.error : error as StateError,
    ));
  }
}

@Implements(ErrorAction)

/// @nodoc
class _$SaveSpeechResultError implements SaveSpeechResultError {
  const _$SaveSpeechResultError(this.error) : assert(error != null);

  @override
  final StateError error;

  @override
  String toString() {
    return 'SaveSpeechResult.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SaveSpeechResultError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @override
  $SaveSpeechResultErrorCopyWith<SaveSpeechResultError> get copyWith =>
      _$SaveSpeechResultErrorCopyWithImpl<SaveSpeechResultError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(SpeechResult speechResult), {
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
    Result $default(SpeechResult speechResult), {
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
    Result $default(SaveSpeechResult$ value), {
    @required Result successful(SaveSpeechResultSuccessful value),
    @required Result error(SaveSpeechResultError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(SaveSpeechResult$ value), {
    Result successful(SaveSpeechResultSuccessful value),
    Result error(SaveSpeechResultError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class SaveSpeechResultError implements SaveSpeechResult, ErrorAction {
  const factory SaveSpeechResultError(StateError error) =
      _$SaveSpeechResultError;

  StateError get error;
  $SaveSpeechResultErrorCopyWith<SaveSpeechResultError> get copyWith;
}

/// @nodoc
class _$RemoveSpeechResultTearOff {
  const _$RemoveSpeechResultTearOff();

// ignore: unused_element
  RemoveSpeechResult$ call(SpeechResult speechResult) {
    return RemoveSpeechResult$(
      speechResult,
    );
  }

// ignore: unused_element
  RemoveSpeechResultSuccessful successful(List<SpeechResult> speechResultList) {
    return RemoveSpeechResultSuccessful(
      speechResultList,
    );
  }

// ignore: unused_element
  RemoveSpeechResultError error(StateError error) {
    return RemoveSpeechResultError(
      error,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $RemoveSpeechResult = _$RemoveSpeechResultTearOff();

/// @nodoc
mixin _$RemoveSpeechResult {
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(SpeechResult speechResult), {
    @required Result successful(List<SpeechResult> speechResultList),
    @required Result error(StateError error),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(SpeechResult speechResult), {
    Result successful(List<SpeechResult> speechResultList),
    Result error(StateError error),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(RemoveSpeechResult$ value), {
    @required Result successful(RemoveSpeechResultSuccessful value),
    @required Result error(RemoveSpeechResultError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(RemoveSpeechResult$ value), {
    Result successful(RemoveSpeechResultSuccessful value),
    Result error(RemoveSpeechResultError value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $RemoveSpeechResultCopyWith<$Res> {
  factory $RemoveSpeechResultCopyWith(
          RemoveSpeechResult value, $Res Function(RemoveSpeechResult) then) =
      _$RemoveSpeechResultCopyWithImpl<$Res>;
}

/// @nodoc
class _$RemoveSpeechResultCopyWithImpl<$Res>
    implements $RemoveSpeechResultCopyWith<$Res> {
  _$RemoveSpeechResultCopyWithImpl(this._value, this._then);

  final RemoveSpeechResult _value;
  // ignore: unused_field
  final $Res Function(RemoveSpeechResult) _then;
}

/// @nodoc
abstract class $RemoveSpeechResult$CopyWith<$Res> {
  factory $RemoveSpeechResult$CopyWith(
          RemoveSpeechResult$ value, $Res Function(RemoveSpeechResult$) then) =
      _$RemoveSpeechResult$CopyWithImpl<$Res>;
  $Res call({SpeechResult speechResult});
}

/// @nodoc
class _$RemoveSpeechResult$CopyWithImpl<$Res>
    extends _$RemoveSpeechResultCopyWithImpl<$Res>
    implements $RemoveSpeechResult$CopyWith<$Res> {
  _$RemoveSpeechResult$CopyWithImpl(
      RemoveSpeechResult$ _value, $Res Function(RemoveSpeechResult$) _then)
      : super(_value, (v) => _then(v as RemoveSpeechResult$));

  @override
  RemoveSpeechResult$ get _value => super._value as RemoveSpeechResult$;

  @override
  $Res call({
    Object speechResult = freezed,
  }) {
    return _then(RemoveSpeechResult$(
      speechResult == freezed
          ? _value.speechResult
          : speechResult as SpeechResult,
    ));
  }
}

/// @nodoc
class _$RemoveSpeechResult$ implements RemoveSpeechResult$ {
  const _$RemoveSpeechResult$(this.speechResult) : assert(speechResult != null);

  @override
  final SpeechResult speechResult;

  @override
  String toString() {
    return 'RemoveSpeechResult(speechResult: $speechResult)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RemoveSpeechResult$ &&
            (identical(other.speechResult, speechResult) ||
                const DeepCollectionEquality()
                    .equals(other.speechResult, speechResult)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(speechResult);

  @override
  $RemoveSpeechResult$CopyWith<RemoveSpeechResult$> get copyWith =>
      _$RemoveSpeechResult$CopyWithImpl<RemoveSpeechResult$>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(SpeechResult speechResult), {
    @required Result successful(List<SpeechResult> speechResultList),
    @required Result error(StateError error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return $default(speechResult);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(SpeechResult speechResult), {
    Result successful(List<SpeechResult> speechResultList),
    Result error(StateError error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(speechResult);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(RemoveSpeechResult$ value), {
    @required Result successful(RemoveSpeechResultSuccessful value),
    @required Result error(RemoveSpeechResultError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return $default(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(RemoveSpeechResult$ value), {
    Result successful(RemoveSpeechResultSuccessful value),
    Result error(RemoveSpeechResultError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class RemoveSpeechResult$ implements RemoveSpeechResult {
  const factory RemoveSpeechResult$(SpeechResult speechResult) =
      _$RemoveSpeechResult$;

  SpeechResult get speechResult;
  $RemoveSpeechResult$CopyWith<RemoveSpeechResult$> get copyWith;
}

/// @nodoc
abstract class $RemoveSpeechResultSuccessfulCopyWith<$Res> {
  factory $RemoveSpeechResultSuccessfulCopyWith(
          RemoveSpeechResultSuccessful value,
          $Res Function(RemoveSpeechResultSuccessful) then) =
      _$RemoveSpeechResultSuccessfulCopyWithImpl<$Res>;
  $Res call({List<SpeechResult> speechResultList});
}

/// @nodoc
class _$RemoveSpeechResultSuccessfulCopyWithImpl<$Res>
    extends _$RemoveSpeechResultCopyWithImpl<$Res>
    implements $RemoveSpeechResultSuccessfulCopyWith<$Res> {
  _$RemoveSpeechResultSuccessfulCopyWithImpl(
      RemoveSpeechResultSuccessful _value,
      $Res Function(RemoveSpeechResultSuccessful) _then)
      : super(_value, (v) => _then(v as RemoveSpeechResultSuccessful));

  @override
  RemoveSpeechResultSuccessful get _value =>
      super._value as RemoveSpeechResultSuccessful;

  @override
  $Res call({
    Object speechResultList = freezed,
  }) {
    return _then(RemoveSpeechResultSuccessful(
      speechResultList == freezed
          ? _value.speechResultList
          : speechResultList as List<SpeechResult>,
    ));
  }
}

/// @nodoc
class _$RemoveSpeechResultSuccessful implements RemoveSpeechResultSuccessful {
  const _$RemoveSpeechResultSuccessful(this.speechResultList)
      : assert(speechResultList != null);

  @override
  final List<SpeechResult> speechResultList;

  @override
  String toString() {
    return 'RemoveSpeechResult.successful(speechResultList: $speechResultList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RemoveSpeechResultSuccessful &&
            (identical(other.speechResultList, speechResultList) ||
                const DeepCollectionEquality()
                    .equals(other.speechResultList, speechResultList)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(speechResultList);

  @override
  $RemoveSpeechResultSuccessfulCopyWith<RemoveSpeechResultSuccessful>
      get copyWith => _$RemoveSpeechResultSuccessfulCopyWithImpl<
          RemoveSpeechResultSuccessful>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(SpeechResult speechResult), {
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
    Result $default(SpeechResult speechResult), {
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
    Result $default(RemoveSpeechResult$ value), {
    @required Result successful(RemoveSpeechResultSuccessful value),
    @required Result error(RemoveSpeechResultError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(RemoveSpeechResult$ value), {
    Result successful(RemoveSpeechResultSuccessful value),
    Result error(RemoveSpeechResultError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class RemoveSpeechResultSuccessful implements RemoveSpeechResult {
  const factory RemoveSpeechResultSuccessful(
      List<SpeechResult> speechResultList) = _$RemoveSpeechResultSuccessful;

  List<SpeechResult> get speechResultList;
  $RemoveSpeechResultSuccessfulCopyWith<RemoveSpeechResultSuccessful>
      get copyWith;
}

/// @nodoc
abstract class $RemoveSpeechResultErrorCopyWith<$Res> {
  factory $RemoveSpeechResultErrorCopyWith(RemoveSpeechResultError value,
          $Res Function(RemoveSpeechResultError) then) =
      _$RemoveSpeechResultErrorCopyWithImpl<$Res>;
  $Res call({StateError error});
}

/// @nodoc
class _$RemoveSpeechResultErrorCopyWithImpl<$Res>
    extends _$RemoveSpeechResultCopyWithImpl<$Res>
    implements $RemoveSpeechResultErrorCopyWith<$Res> {
  _$RemoveSpeechResultErrorCopyWithImpl(RemoveSpeechResultError _value,
      $Res Function(RemoveSpeechResultError) _then)
      : super(_value, (v) => _then(v as RemoveSpeechResultError));

  @override
  RemoveSpeechResultError get _value => super._value as RemoveSpeechResultError;

  @override
  $Res call({
    Object error = freezed,
  }) {
    return _then(RemoveSpeechResultError(
      error == freezed ? _value.error : error as StateError,
    ));
  }
}

@Implements(ErrorAction)

/// @nodoc
class _$RemoveSpeechResultError implements RemoveSpeechResultError {
  const _$RemoveSpeechResultError(this.error) : assert(error != null);

  @override
  final StateError error;

  @override
  String toString() {
    return 'RemoveSpeechResult.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RemoveSpeechResultError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @override
  $RemoveSpeechResultErrorCopyWith<RemoveSpeechResultError> get copyWith =>
      _$RemoveSpeechResultErrorCopyWithImpl<RemoveSpeechResultError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(SpeechResult speechResult), {
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
    Result $default(SpeechResult speechResult), {
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
    Result $default(RemoveSpeechResult$ value), {
    @required Result successful(RemoveSpeechResultSuccessful value),
    @required Result error(RemoveSpeechResultError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(RemoveSpeechResult$ value), {
    Result successful(RemoveSpeechResultSuccessful value),
    Result error(RemoveSpeechResultError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class RemoveSpeechResultError
    implements RemoveSpeechResult, ErrorAction {
  const factory RemoveSpeechResultError(StateError error) =
      _$RemoveSpeechResultError;

  StateError get error;
  $RemoveSpeechResultErrorCopyWith<RemoveSpeechResultError> get copyWith;
}

/// @nodoc
class _$GetSpeechResultListTearOff {
  const _$GetSpeechResultListTearOff();

// ignore: unused_element
  GetSpeechResultList$ call() {
    return const GetSpeechResultList$();
  }

// ignore: unused_element
  GetSpeechResultListSuccessful successful(
      List<SpeechResult> speechResultList) {
    return GetSpeechResultListSuccessful(
      speechResultList,
    );
  }

// ignore: unused_element
  GetSpeechResultListError error(StateError error) {
    return GetSpeechResultListError(
      error,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $GetSpeechResultList = _$GetSpeechResultListTearOff();

/// @nodoc
mixin _$GetSpeechResultList {
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
    Result $default(GetSpeechResultList$ value), {
    @required Result successful(GetSpeechResultListSuccessful value),
    @required Result error(GetSpeechResultListError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(GetSpeechResultList$ value), {
    Result successful(GetSpeechResultListSuccessful value),
    Result error(GetSpeechResultListError value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $GetSpeechResultListCopyWith<$Res> {
  factory $GetSpeechResultListCopyWith(
          GetSpeechResultList value, $Res Function(GetSpeechResultList) then) =
      _$GetSpeechResultListCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetSpeechResultListCopyWithImpl<$Res>
    implements $GetSpeechResultListCopyWith<$Res> {
  _$GetSpeechResultListCopyWithImpl(this._value, this._then);

  final GetSpeechResultList _value;
  // ignore: unused_field
  final $Res Function(GetSpeechResultList) _then;
}

/// @nodoc
abstract class $GetSpeechResultList$CopyWith<$Res> {
  factory $GetSpeechResultList$CopyWith(GetSpeechResultList$ value,
          $Res Function(GetSpeechResultList$) then) =
      _$GetSpeechResultList$CopyWithImpl<$Res>;
}

/// @nodoc
class _$GetSpeechResultList$CopyWithImpl<$Res>
    extends _$GetSpeechResultListCopyWithImpl<$Res>
    implements $GetSpeechResultList$CopyWith<$Res> {
  _$GetSpeechResultList$CopyWithImpl(
      GetSpeechResultList$ _value, $Res Function(GetSpeechResultList$) _then)
      : super(_value, (v) => _then(v as GetSpeechResultList$));

  @override
  GetSpeechResultList$ get _value => super._value as GetSpeechResultList$;
}

/// @nodoc
class _$GetSpeechResultList$ implements GetSpeechResultList$ {
  const _$GetSpeechResultList$();

  @override
  String toString() {
    return 'GetSpeechResultList()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is GetSpeechResultList$);
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
    Result $default(GetSpeechResultList$ value), {
    @required Result successful(GetSpeechResultListSuccessful value),
    @required Result error(GetSpeechResultListError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return $default(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(GetSpeechResultList$ value), {
    Result successful(GetSpeechResultListSuccessful value),
    Result error(GetSpeechResultListError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class GetSpeechResultList$ implements GetSpeechResultList {
  const factory GetSpeechResultList$() = _$GetSpeechResultList$;
}

/// @nodoc
abstract class $GetSpeechResultListSuccessfulCopyWith<$Res> {
  factory $GetSpeechResultListSuccessfulCopyWith(
          GetSpeechResultListSuccessful value,
          $Res Function(GetSpeechResultListSuccessful) then) =
      _$GetSpeechResultListSuccessfulCopyWithImpl<$Res>;
  $Res call({List<SpeechResult> speechResultList});
}

/// @nodoc
class _$GetSpeechResultListSuccessfulCopyWithImpl<$Res>
    extends _$GetSpeechResultListCopyWithImpl<$Res>
    implements $GetSpeechResultListSuccessfulCopyWith<$Res> {
  _$GetSpeechResultListSuccessfulCopyWithImpl(
      GetSpeechResultListSuccessful _value,
      $Res Function(GetSpeechResultListSuccessful) _then)
      : super(_value, (v) => _then(v as GetSpeechResultListSuccessful));

  @override
  GetSpeechResultListSuccessful get _value =>
      super._value as GetSpeechResultListSuccessful;

  @override
  $Res call({
    Object speechResultList = freezed,
  }) {
    return _then(GetSpeechResultListSuccessful(
      speechResultList == freezed
          ? _value.speechResultList
          : speechResultList as List<SpeechResult>,
    ));
  }
}

/// @nodoc
class _$GetSpeechResultListSuccessful implements GetSpeechResultListSuccessful {
  const _$GetSpeechResultListSuccessful(this.speechResultList)
      : assert(speechResultList != null);

  @override
  final List<SpeechResult> speechResultList;

  @override
  String toString() {
    return 'GetSpeechResultList.successful(speechResultList: $speechResultList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetSpeechResultListSuccessful &&
            (identical(other.speechResultList, speechResultList) ||
                const DeepCollectionEquality()
                    .equals(other.speechResultList, speechResultList)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(speechResultList);

  @override
  $GetSpeechResultListSuccessfulCopyWith<GetSpeechResultListSuccessful>
      get copyWith => _$GetSpeechResultListSuccessfulCopyWithImpl<
          GetSpeechResultListSuccessful>(this, _$identity);

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
    Result $default(GetSpeechResultList$ value), {
    @required Result successful(GetSpeechResultListSuccessful value),
    @required Result error(GetSpeechResultListError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(GetSpeechResultList$ value), {
    Result successful(GetSpeechResultListSuccessful value),
    Result error(GetSpeechResultListError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class GetSpeechResultListSuccessful implements GetSpeechResultList {
  const factory GetSpeechResultListSuccessful(
      List<SpeechResult> speechResultList) = _$GetSpeechResultListSuccessful;

  List<SpeechResult> get speechResultList;
  $GetSpeechResultListSuccessfulCopyWith<GetSpeechResultListSuccessful>
      get copyWith;
}

/// @nodoc
abstract class $GetSpeechResultListErrorCopyWith<$Res> {
  factory $GetSpeechResultListErrorCopyWith(GetSpeechResultListError value,
          $Res Function(GetSpeechResultListError) then) =
      _$GetSpeechResultListErrorCopyWithImpl<$Res>;
  $Res call({StateError error});
}

/// @nodoc
class _$GetSpeechResultListErrorCopyWithImpl<$Res>
    extends _$GetSpeechResultListCopyWithImpl<$Res>
    implements $GetSpeechResultListErrorCopyWith<$Res> {
  _$GetSpeechResultListErrorCopyWithImpl(GetSpeechResultListError _value,
      $Res Function(GetSpeechResultListError) _then)
      : super(_value, (v) => _then(v as GetSpeechResultListError));

  @override
  GetSpeechResultListError get _value =>
      super._value as GetSpeechResultListError;

  @override
  $Res call({
    Object error = freezed,
  }) {
    return _then(GetSpeechResultListError(
      error == freezed ? _value.error : error as StateError,
    ));
  }
}

@Implements(ErrorAction)

/// @nodoc
class _$GetSpeechResultListError implements GetSpeechResultListError {
  const _$GetSpeechResultListError(this.error) : assert(error != null);

  @override
  final StateError error;

  @override
  String toString() {
    return 'GetSpeechResultList.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetSpeechResultListError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @override
  $GetSpeechResultListErrorCopyWith<GetSpeechResultListError> get copyWith =>
      _$GetSpeechResultListErrorCopyWithImpl<GetSpeechResultListError>(
          this, _$identity);

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
    Result $default(GetSpeechResultList$ value), {
    @required Result successful(GetSpeechResultListSuccessful value),
    @required Result error(GetSpeechResultListError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(GetSpeechResultList$ value), {
    Result successful(GetSpeechResultListSuccessful value),
    Result error(GetSpeechResultListError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class GetSpeechResultListError
    implements GetSpeechResultList, ErrorAction {
  const factory GetSpeechResultListError(StateError error) =
      _$GetSpeechResultListError;

  StateError get error;
  $GetSpeechResultListErrorCopyWith<GetSpeechResultListError> get copyWith;
}
