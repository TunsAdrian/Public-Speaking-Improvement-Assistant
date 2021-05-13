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
