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
      @required double wordsPerMinute,
      @required List<SpeechWord> speechWords}) {
    return CreateSpeechResult$(
      speechDuration: speechDuration,
      speechClarity: speechClarity,
      wordsPerMinute: wordsPerMinute,
      speechWords: speechWords,
    );
  }

// ignore: unused_element
  CreateSpeechResultSuccessful successful(SpeechResult speechResult) {
    return CreateSpeechResultSuccessful(
      speechResult,
    );
  }

// ignore: unused_element
  CreateSpeechResultError error(Object error) {
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
        double wordsPerMinute, List<SpeechWord> speechWords), {
    @required Result successful(SpeechResult speechResult),
    @required Result error(Object error),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(Duration speechDuration, double speechClarity,
        double wordsPerMinute, List<SpeechWord> speechWords), {
    Result successful(SpeechResult speechResult),
    Result error(Object error),
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
      double wordsPerMinute,
      List<SpeechWord> speechWords});
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
    Object wordsPerMinute = freezed,
    Object speechWords = freezed,
  }) {
    return _then(CreateSpeechResult$(
      speechDuration: speechDuration == freezed
          ? _value.speechDuration
          : speechDuration as Duration,
      speechClarity: speechClarity == freezed
          ? _value.speechClarity
          : speechClarity as double,
      wordsPerMinute: wordsPerMinute == freezed
          ? _value.wordsPerMinute
          : wordsPerMinute as double,
      speechWords: speechWords == freezed
          ? _value.speechWords
          : speechWords as List<SpeechWord>,
    ));
  }
}

/// @nodoc
class _$CreateSpeechResult$ implements CreateSpeechResult$ {
  const _$CreateSpeechResult$(
      {@required this.speechDuration,
      @required this.speechClarity,
      @required this.wordsPerMinute,
      @required this.speechWords})
      : assert(speechDuration != null),
        assert(speechClarity != null),
        assert(wordsPerMinute != null),
        assert(speechWords != null);

  @override
  final Duration speechDuration;
  @override
  final double speechClarity;
  @override
  final double wordsPerMinute;
  @override
  final List<SpeechWord> speechWords;

  @override
  String toString() {
    return 'CreateSpeechResult(speechDuration: $speechDuration, speechClarity: $speechClarity, wordsPerMinute: $wordsPerMinute, speechWords: $speechWords)';
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
            (identical(other.wordsPerMinute, wordsPerMinute) ||
                const DeepCollectionEquality()
                    .equals(other.wordsPerMinute, wordsPerMinute)) &&
            (identical(other.speechWords, speechWords) ||
                const DeepCollectionEquality()
                    .equals(other.speechWords, speechWords)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(speechDuration) ^
      const DeepCollectionEquality().hash(speechClarity) ^
      const DeepCollectionEquality().hash(wordsPerMinute) ^
      const DeepCollectionEquality().hash(speechWords);

  @override
  $CreateSpeechResult$CopyWith<CreateSpeechResult$> get copyWith =>
      _$CreateSpeechResult$CopyWithImpl<CreateSpeechResult$>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(Duration speechDuration, double speechClarity,
        double wordsPerMinute, List<SpeechWord> speechWords), {
    @required Result successful(SpeechResult speechResult),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return $default(speechDuration, speechClarity, wordsPerMinute, speechWords);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(Duration speechDuration, double speechClarity,
        double wordsPerMinute, List<SpeechWord> speechWords), {
    Result successful(SpeechResult speechResult),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(
          speechDuration, speechClarity, wordsPerMinute, speechWords);
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
      @required double wordsPerMinute,
      @required List<SpeechWord> speechWords}) = _$CreateSpeechResult$;

  Duration get speechDuration;
  double get speechClarity;
  double get wordsPerMinute;
  List<SpeechWord> get speechWords;
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
        double wordsPerMinute, List<SpeechWord> speechWords), {
    @required Result successful(SpeechResult speechResult),
    @required Result error(Object error),
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
        double wordsPerMinute, List<SpeechWord> speechWords), {
    Result successful(SpeechResult speechResult),
    Result error(Object error),
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
  $Res call({Object error});
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
      error == freezed ? _value.error : error,
    ));
  }
}

@Implements(ErrorAction)

/// @nodoc
class _$CreateSpeechResultError implements CreateSpeechResultError {
  const _$CreateSpeechResultError(this.error) : assert(error != null);

  @override
  final Object error;

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
        double wordsPerMinute, List<SpeechWord> speechWords), {
    @required Result successful(SpeechResult speechResult),
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
    Result $default(Duration speechDuration, double speechClarity,
        double wordsPerMinute, List<SpeechWord> speechWords), {
    Result successful(SpeechResult speechResult),
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
  const factory CreateSpeechResultError(Object error) =
      _$CreateSpeechResultError;

  Object get error;
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
  SaveSpeechResultError error(Object error) {
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
    @required Result error(Object error),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(SpeechResult speechResult), {
    Result successful(List<SpeechResult> speechResultList),
    Result error(Object error),
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
    @required Result error(Object error),
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
    Result error(Object error),
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
    @required Result error(Object error),
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
    Result error(Object error),
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
  $Res call({Object error});
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
      error == freezed ? _value.error : error,
    ));
  }
}

@Implements(ErrorAction)

/// @nodoc
class _$SaveSpeechResultError implements SaveSpeechResultError {
  const _$SaveSpeechResultError(this.error) : assert(error != null);

  @override
  final Object error;

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
    Result $default(SpeechResult speechResult), {
    Result successful(List<SpeechResult> speechResultList),
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
  const factory SaveSpeechResultError(Object error) = _$SaveSpeechResultError;

  Object get error;
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
  RemoveSpeechResultError error(Object error) {
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
    @required Result error(Object error),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(SpeechResult speechResult), {
    Result successful(List<SpeechResult> speechResultList),
    Result error(Object error),
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
    @required Result error(Object error),
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
    Result error(Object error),
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
    @required Result error(Object error),
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
    Result error(Object error),
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
  $Res call({Object error});
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
      error == freezed ? _value.error : error,
    ));
  }
}

@Implements(ErrorAction)

/// @nodoc
class _$RemoveSpeechResultError implements RemoveSpeechResultError {
  const _$RemoveSpeechResultError(this.error) : assert(error != null);

  @override
  final Object error;

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
    Result $default(SpeechResult speechResult), {
    Result successful(List<SpeechResult> speechResultList),
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
  const factory RemoveSpeechResultError(Object error) =
      _$RemoveSpeechResultError;

  Object get error;
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
  GetSpeechResultListError error(Object error) {
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
    @required Result error(Object error),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(), {
    Result successful(List<SpeechResult> speechResultList),
    Result error(Object error),
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
    Result successful(List<SpeechResult> speechResultList),
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
    @required Result error(Object error),
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
    Result error(Object error),
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
  $Res call({Object error});
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
      error == freezed ? _value.error : error,
    ));
  }
}

@Implements(ErrorAction)

/// @nodoc
class _$GetSpeechResultListError implements GetSpeechResultListError {
  const _$GetSpeechResultListError(this.error) : assert(error != null);

  @override
  final Object error;

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
    Result successful(List<SpeechResult> speechResultList),
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
  const factory GetSpeechResultListError(Object error) =
      _$GetSpeechResultListError;

  Object get error;
  $GetSpeechResultListErrorCopyWith<GetSpeechResultListError> get copyWith;
}

/// @nodoc
class _$GetSpeechResultTearOff {
  const _$GetSpeechResultTearOff();

// ignore: unused_element
  GetSpeechResult$ call({@required String speechResultUuid}) {
    return GetSpeechResult$(
      speechResultUuid: speechResultUuid,
    );
  }

// ignore: unused_element
  GetSpeechResultSuccessful successful(SpeechResult speechResult) {
    return GetSpeechResultSuccessful(
      speechResult,
    );
  }

// ignore: unused_element
  GetSpeechResultError error(Object error) {
    return GetSpeechResultError(
      error,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $GetSpeechResult = _$GetSpeechResultTearOff();

/// @nodoc
mixin _$GetSpeechResult {
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String speechResultUuid), {
    @required Result successful(SpeechResult speechResult),
    @required Result error(Object error),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String speechResultUuid), {
    Result successful(SpeechResult speechResult),
    Result error(Object error),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(GetSpeechResult$ value), {
    @required Result successful(GetSpeechResultSuccessful value),
    @required Result error(GetSpeechResultError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(GetSpeechResult$ value), {
    Result successful(GetSpeechResultSuccessful value),
    Result error(GetSpeechResultError value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $GetSpeechResultCopyWith<$Res> {
  factory $GetSpeechResultCopyWith(
          GetSpeechResult value, $Res Function(GetSpeechResult) then) =
      _$GetSpeechResultCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetSpeechResultCopyWithImpl<$Res>
    implements $GetSpeechResultCopyWith<$Res> {
  _$GetSpeechResultCopyWithImpl(this._value, this._then);

  final GetSpeechResult _value;
  // ignore: unused_field
  final $Res Function(GetSpeechResult) _then;
}

/// @nodoc
abstract class $GetSpeechResult$CopyWith<$Res> {
  factory $GetSpeechResult$CopyWith(
          GetSpeechResult$ value, $Res Function(GetSpeechResult$) then) =
      _$GetSpeechResult$CopyWithImpl<$Res>;
  $Res call({String speechResultUuid});
}

/// @nodoc
class _$GetSpeechResult$CopyWithImpl<$Res>
    extends _$GetSpeechResultCopyWithImpl<$Res>
    implements $GetSpeechResult$CopyWith<$Res> {
  _$GetSpeechResult$CopyWithImpl(
      GetSpeechResult$ _value, $Res Function(GetSpeechResult$) _then)
      : super(_value, (v) => _then(v as GetSpeechResult$));

  @override
  GetSpeechResult$ get _value => super._value as GetSpeechResult$;

  @override
  $Res call({
    Object speechResultUuid = freezed,
  }) {
    return _then(GetSpeechResult$(
      speechResultUuid: speechResultUuid == freezed
          ? _value.speechResultUuid
          : speechResultUuid as String,
    ));
  }
}

/// @nodoc
class _$GetSpeechResult$ implements GetSpeechResult$ {
  const _$GetSpeechResult$({@required this.speechResultUuid})
      : assert(speechResultUuid != null);

  @override
  final String speechResultUuid;

  @override
  String toString() {
    return 'GetSpeechResult(speechResultUuid: $speechResultUuid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetSpeechResult$ &&
            (identical(other.speechResultUuid, speechResultUuid) ||
                const DeepCollectionEquality()
                    .equals(other.speechResultUuid, speechResultUuid)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(speechResultUuid);

  @override
  $GetSpeechResult$CopyWith<GetSpeechResult$> get copyWith =>
      _$GetSpeechResult$CopyWithImpl<GetSpeechResult$>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String speechResultUuid), {
    @required Result successful(SpeechResult speechResult),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return $default(speechResultUuid);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String speechResultUuid), {
    Result successful(SpeechResult speechResult),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(speechResultUuid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(GetSpeechResult$ value), {
    @required Result successful(GetSpeechResultSuccessful value),
    @required Result error(GetSpeechResultError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return $default(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(GetSpeechResult$ value), {
    Result successful(GetSpeechResultSuccessful value),
    Result error(GetSpeechResultError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class GetSpeechResult$ implements GetSpeechResult {
  const factory GetSpeechResult$({@required String speechResultUuid}) =
      _$GetSpeechResult$;

  String get speechResultUuid;
  $GetSpeechResult$CopyWith<GetSpeechResult$> get copyWith;
}

/// @nodoc
abstract class $GetSpeechResultSuccessfulCopyWith<$Res> {
  factory $GetSpeechResultSuccessfulCopyWith(GetSpeechResultSuccessful value,
          $Res Function(GetSpeechResultSuccessful) then) =
      _$GetSpeechResultSuccessfulCopyWithImpl<$Res>;
  $Res call({SpeechResult speechResult});
}

/// @nodoc
class _$GetSpeechResultSuccessfulCopyWithImpl<$Res>
    extends _$GetSpeechResultCopyWithImpl<$Res>
    implements $GetSpeechResultSuccessfulCopyWith<$Res> {
  _$GetSpeechResultSuccessfulCopyWithImpl(GetSpeechResultSuccessful _value,
      $Res Function(GetSpeechResultSuccessful) _then)
      : super(_value, (v) => _then(v as GetSpeechResultSuccessful));

  @override
  GetSpeechResultSuccessful get _value =>
      super._value as GetSpeechResultSuccessful;

  @override
  $Res call({
    Object speechResult = freezed,
  }) {
    return _then(GetSpeechResultSuccessful(
      speechResult == freezed
          ? _value.speechResult
          : speechResult as SpeechResult,
    ));
  }
}

/// @nodoc
class _$GetSpeechResultSuccessful implements GetSpeechResultSuccessful {
  const _$GetSpeechResultSuccessful(this.speechResult)
      : assert(speechResult != null);

  @override
  final SpeechResult speechResult;

  @override
  String toString() {
    return 'GetSpeechResult.successful(speechResult: $speechResult)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetSpeechResultSuccessful &&
            (identical(other.speechResult, speechResult) ||
                const DeepCollectionEquality()
                    .equals(other.speechResult, speechResult)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(speechResult);

  @override
  $GetSpeechResultSuccessfulCopyWith<GetSpeechResultSuccessful> get copyWith =>
      _$GetSpeechResultSuccessfulCopyWithImpl<GetSpeechResultSuccessful>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String speechResultUuid), {
    @required Result successful(SpeechResult speechResult),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful(speechResult);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String speechResultUuid), {
    Result successful(SpeechResult speechResult),
    Result error(Object error),
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
    Result $default(GetSpeechResult$ value), {
    @required Result successful(GetSpeechResultSuccessful value),
    @required Result error(GetSpeechResultError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(GetSpeechResult$ value), {
    Result successful(GetSpeechResultSuccessful value),
    Result error(GetSpeechResultError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class GetSpeechResultSuccessful implements GetSpeechResult {
  const factory GetSpeechResultSuccessful(SpeechResult speechResult) =
      _$GetSpeechResultSuccessful;

  SpeechResult get speechResult;
  $GetSpeechResultSuccessfulCopyWith<GetSpeechResultSuccessful> get copyWith;
}

/// @nodoc
abstract class $GetSpeechResultErrorCopyWith<$Res> {
  factory $GetSpeechResultErrorCopyWith(GetSpeechResultError value,
          $Res Function(GetSpeechResultError) then) =
      _$GetSpeechResultErrorCopyWithImpl<$Res>;
  $Res call({Object error});
}

/// @nodoc
class _$GetSpeechResultErrorCopyWithImpl<$Res>
    extends _$GetSpeechResultCopyWithImpl<$Res>
    implements $GetSpeechResultErrorCopyWith<$Res> {
  _$GetSpeechResultErrorCopyWithImpl(
      GetSpeechResultError _value, $Res Function(GetSpeechResultError) _then)
      : super(_value, (v) => _then(v as GetSpeechResultError));

  @override
  GetSpeechResultError get _value => super._value as GetSpeechResultError;

  @override
  $Res call({
    Object error = freezed,
  }) {
    return _then(GetSpeechResultError(
      error == freezed ? _value.error : error,
    ));
  }
}

@Implements(ErrorAction)

/// @nodoc
class _$GetSpeechResultError implements GetSpeechResultError {
  const _$GetSpeechResultError(this.error) : assert(error != null);

  @override
  final Object error;

  @override
  String toString() {
    return 'GetSpeechResult.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetSpeechResultError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @override
  $GetSpeechResultErrorCopyWith<GetSpeechResultError> get copyWith =>
      _$GetSpeechResultErrorCopyWithImpl<GetSpeechResultError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String speechResultUuid), {
    @required Result successful(SpeechResult speechResult),
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
    Result $default(String speechResultUuid), {
    Result successful(SpeechResult speechResult),
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
    Result $default(GetSpeechResult$ value), {
    @required Result successful(GetSpeechResultSuccessful value),
    @required Result error(GetSpeechResultError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(GetSpeechResult$ value), {
    Result successful(GetSpeechResultSuccessful value),
    Result error(GetSpeechResultError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class GetSpeechResultError implements GetSpeechResult, ErrorAction {
  const factory GetSpeechResultError(Object error) = _$GetSpeechResultError;

  Object get error;
  $GetSpeechResultErrorCopyWith<GetSpeechResultError> get copyWith;
}

/// @nodoc
class _$SaveSyncedResultsLocallyTearOff {
  const _$SaveSyncedResultsLocallyTearOff();

// ignore: unused_element
  SaveSyncedResultsLocally$ call(void Function(AppAction) response,
      {@required List<SpeechResult> userSpeechResults}) {
    return SaveSyncedResultsLocally$(
      response,
      userSpeechResults: userSpeechResults,
    );
  }

// ignore: unused_element
  SaveSyncedResultsLocallySuccessful successful(
      List<SpeechResult> speechResultsUpdated) {
    return SaveSyncedResultsLocallySuccessful(
      speechResultsUpdated,
    );
  }

// ignore: unused_element
  SaveSyncedResultsLocallyError error(Object error) {
    return SaveSyncedResultsLocallyError(
      error,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $SaveSyncedResultsLocally = _$SaveSyncedResultsLocallyTearOff();

/// @nodoc
mixin _$SaveSyncedResultsLocally {
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(void Function(AppAction) response,
        List<SpeechResult> userSpeechResults), {
    @required Result successful(List<SpeechResult> speechResultsUpdated),
    @required Result error(Object error),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(void Function(AppAction) response,
        List<SpeechResult> userSpeechResults), {
    Result successful(List<SpeechResult> speechResultsUpdated),
    Result error(Object error),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(SaveSyncedResultsLocally$ value), {
    @required Result successful(SaveSyncedResultsLocallySuccessful value),
    @required Result error(SaveSyncedResultsLocallyError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(SaveSyncedResultsLocally$ value), {
    Result successful(SaveSyncedResultsLocallySuccessful value),
    Result error(SaveSyncedResultsLocallyError value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $SaveSyncedResultsLocallyCopyWith<$Res> {
  factory $SaveSyncedResultsLocallyCopyWith(SaveSyncedResultsLocally value,
          $Res Function(SaveSyncedResultsLocally) then) =
      _$SaveSyncedResultsLocallyCopyWithImpl<$Res>;
}

/// @nodoc
class _$SaveSyncedResultsLocallyCopyWithImpl<$Res>
    implements $SaveSyncedResultsLocallyCopyWith<$Res> {
  _$SaveSyncedResultsLocallyCopyWithImpl(this._value, this._then);

  final SaveSyncedResultsLocally _value;
  // ignore: unused_field
  final $Res Function(SaveSyncedResultsLocally) _then;
}

/// @nodoc
abstract class $SaveSyncedResultsLocally$CopyWith<$Res> {
  factory $SaveSyncedResultsLocally$CopyWith(SaveSyncedResultsLocally$ value,
          $Res Function(SaveSyncedResultsLocally$) then) =
      _$SaveSyncedResultsLocally$CopyWithImpl<$Res>;
  $Res call(
      {void Function(AppAction) response,
      List<SpeechResult> userSpeechResults});
}

/// @nodoc
class _$SaveSyncedResultsLocally$CopyWithImpl<$Res>
    extends _$SaveSyncedResultsLocallyCopyWithImpl<$Res>
    implements $SaveSyncedResultsLocally$CopyWith<$Res> {
  _$SaveSyncedResultsLocally$CopyWithImpl(SaveSyncedResultsLocally$ _value,
      $Res Function(SaveSyncedResultsLocally$) _then)
      : super(_value, (v) => _then(v as SaveSyncedResultsLocally$));

  @override
  SaveSyncedResultsLocally$ get _value =>
      super._value as SaveSyncedResultsLocally$;

  @override
  $Res call({
    Object response = freezed,
    Object userSpeechResults = freezed,
  }) {
    return _then(SaveSyncedResultsLocally$(
      response == freezed
          ? _value.response
          : response as void Function(AppAction),
      userSpeechResults: userSpeechResults == freezed
          ? _value.userSpeechResults
          : userSpeechResults as List<SpeechResult>,
    ));
  }
}

/// @nodoc
class _$SaveSyncedResultsLocally$ implements SaveSyncedResultsLocally$ {
  const _$SaveSyncedResultsLocally$(this.response,
      {@required this.userSpeechResults})
      : assert(response != null),
        assert(userSpeechResults != null);

  @override
  final void Function(AppAction) response;
  @override
  final List<SpeechResult> userSpeechResults;

  @override
  String toString() {
    return 'SaveSyncedResultsLocally(response: $response, userSpeechResults: $userSpeechResults)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SaveSyncedResultsLocally$ &&
            (identical(other.response, response) ||
                const DeepCollectionEquality()
                    .equals(other.response, response)) &&
            (identical(other.userSpeechResults, userSpeechResults) ||
                const DeepCollectionEquality()
                    .equals(other.userSpeechResults, userSpeechResults)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(response) ^
      const DeepCollectionEquality().hash(userSpeechResults);

  @override
  $SaveSyncedResultsLocally$CopyWith<SaveSyncedResultsLocally$> get copyWith =>
      _$SaveSyncedResultsLocally$CopyWithImpl<SaveSyncedResultsLocally$>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(void Function(AppAction) response,
        List<SpeechResult> userSpeechResults), {
    @required Result successful(List<SpeechResult> speechResultsUpdated),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return $default(response, userSpeechResults);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(void Function(AppAction) response,
        List<SpeechResult> userSpeechResults), {
    Result successful(List<SpeechResult> speechResultsUpdated),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(response, userSpeechResults);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(SaveSyncedResultsLocally$ value), {
    @required Result successful(SaveSyncedResultsLocallySuccessful value),
    @required Result error(SaveSyncedResultsLocallyError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return $default(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(SaveSyncedResultsLocally$ value), {
    Result successful(SaveSyncedResultsLocallySuccessful value),
    Result error(SaveSyncedResultsLocallyError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class SaveSyncedResultsLocally$ implements SaveSyncedResultsLocally {
  const factory SaveSyncedResultsLocally$(void Function(AppAction) response,
          {@required List<SpeechResult> userSpeechResults}) =
      _$SaveSyncedResultsLocally$;

  void Function(AppAction) get response;
  List<SpeechResult> get userSpeechResults;
  $SaveSyncedResultsLocally$CopyWith<SaveSyncedResultsLocally$> get copyWith;
}

/// @nodoc
abstract class $SaveSyncedResultsLocallySuccessfulCopyWith<$Res> {
  factory $SaveSyncedResultsLocallySuccessfulCopyWith(
          SaveSyncedResultsLocallySuccessful value,
          $Res Function(SaveSyncedResultsLocallySuccessful) then) =
      _$SaveSyncedResultsLocallySuccessfulCopyWithImpl<$Res>;
  $Res call({List<SpeechResult> speechResultsUpdated});
}

/// @nodoc
class _$SaveSyncedResultsLocallySuccessfulCopyWithImpl<$Res>
    extends _$SaveSyncedResultsLocallyCopyWithImpl<$Res>
    implements $SaveSyncedResultsLocallySuccessfulCopyWith<$Res> {
  _$SaveSyncedResultsLocallySuccessfulCopyWithImpl(
      SaveSyncedResultsLocallySuccessful _value,
      $Res Function(SaveSyncedResultsLocallySuccessful) _then)
      : super(_value, (v) => _then(v as SaveSyncedResultsLocallySuccessful));

  @override
  SaveSyncedResultsLocallySuccessful get _value =>
      super._value as SaveSyncedResultsLocallySuccessful;

  @override
  $Res call({
    Object speechResultsUpdated = freezed,
  }) {
    return _then(SaveSyncedResultsLocallySuccessful(
      speechResultsUpdated == freezed
          ? _value.speechResultsUpdated
          : speechResultsUpdated as List<SpeechResult>,
    ));
  }
}

/// @nodoc
class _$SaveSyncedResultsLocallySuccessful
    implements SaveSyncedResultsLocallySuccessful {
  const _$SaveSyncedResultsLocallySuccessful(this.speechResultsUpdated)
      : assert(speechResultsUpdated != null);

  @override
  final List<SpeechResult> speechResultsUpdated;

  @override
  String toString() {
    return 'SaveSyncedResultsLocally.successful(speechResultsUpdated: $speechResultsUpdated)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SaveSyncedResultsLocallySuccessful &&
            (identical(other.speechResultsUpdated, speechResultsUpdated) ||
                const DeepCollectionEquality()
                    .equals(other.speechResultsUpdated, speechResultsUpdated)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(speechResultsUpdated);

  @override
  $SaveSyncedResultsLocallySuccessfulCopyWith<
          SaveSyncedResultsLocallySuccessful>
      get copyWith => _$SaveSyncedResultsLocallySuccessfulCopyWithImpl<
          SaveSyncedResultsLocallySuccessful>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(void Function(AppAction) response,
        List<SpeechResult> userSpeechResults), {
    @required Result successful(List<SpeechResult> speechResultsUpdated),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful(speechResultsUpdated);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(void Function(AppAction) response,
        List<SpeechResult> userSpeechResults), {
    Result successful(List<SpeechResult> speechResultsUpdated),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful(speechResultsUpdated);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(SaveSyncedResultsLocally$ value), {
    @required Result successful(SaveSyncedResultsLocallySuccessful value),
    @required Result error(SaveSyncedResultsLocallyError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(SaveSyncedResultsLocally$ value), {
    Result successful(SaveSyncedResultsLocallySuccessful value),
    Result error(SaveSyncedResultsLocallyError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class SaveSyncedResultsLocallySuccessful
    implements SaveSyncedResultsLocally {
  const factory SaveSyncedResultsLocallySuccessful(
          List<SpeechResult> speechResultsUpdated) =
      _$SaveSyncedResultsLocallySuccessful;

  List<SpeechResult> get speechResultsUpdated;
  $SaveSyncedResultsLocallySuccessfulCopyWith<
      SaveSyncedResultsLocallySuccessful> get copyWith;
}

/// @nodoc
abstract class $SaveSyncedResultsLocallyErrorCopyWith<$Res> {
  factory $SaveSyncedResultsLocallyErrorCopyWith(
          SaveSyncedResultsLocallyError value,
          $Res Function(SaveSyncedResultsLocallyError) then) =
      _$SaveSyncedResultsLocallyErrorCopyWithImpl<$Res>;
  $Res call({Object error});
}

/// @nodoc
class _$SaveSyncedResultsLocallyErrorCopyWithImpl<$Res>
    extends _$SaveSyncedResultsLocallyCopyWithImpl<$Res>
    implements $SaveSyncedResultsLocallyErrorCopyWith<$Res> {
  _$SaveSyncedResultsLocallyErrorCopyWithImpl(
      SaveSyncedResultsLocallyError _value,
      $Res Function(SaveSyncedResultsLocallyError) _then)
      : super(_value, (v) => _then(v as SaveSyncedResultsLocallyError));

  @override
  SaveSyncedResultsLocallyError get _value =>
      super._value as SaveSyncedResultsLocallyError;

  @override
  $Res call({
    Object error = freezed,
  }) {
    return _then(SaveSyncedResultsLocallyError(
      error == freezed ? _value.error : error,
    ));
  }
}

@Implements(ErrorAction)

/// @nodoc
class _$SaveSyncedResultsLocallyError implements SaveSyncedResultsLocallyError {
  const _$SaveSyncedResultsLocallyError(this.error) : assert(error != null);

  @override
  final Object error;

  @override
  String toString() {
    return 'SaveSyncedResultsLocally.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SaveSyncedResultsLocallyError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @override
  $SaveSyncedResultsLocallyErrorCopyWith<SaveSyncedResultsLocallyError>
      get copyWith => _$SaveSyncedResultsLocallyErrorCopyWithImpl<
          SaveSyncedResultsLocallyError>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(void Function(AppAction) response,
        List<SpeechResult> userSpeechResults), {
    @required Result successful(List<SpeechResult> speechResultsUpdated),
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
    Result $default(void Function(AppAction) response,
        List<SpeechResult> userSpeechResults), {
    Result successful(List<SpeechResult> speechResultsUpdated),
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
    Result $default(SaveSyncedResultsLocally$ value), {
    @required Result successful(SaveSyncedResultsLocallySuccessful value),
    @required Result error(SaveSyncedResultsLocallyError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(SaveSyncedResultsLocally$ value), {
    Result successful(SaveSyncedResultsLocallySuccessful value),
    Result error(SaveSyncedResultsLocallyError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class SaveSyncedResultsLocallyError
    implements SaveSyncedResultsLocally, ErrorAction {
  const factory SaveSyncedResultsLocallyError(Object error) =
      _$SaveSyncedResultsLocallyError;

  Object get error;
  $SaveSyncedResultsLocallyErrorCopyWith<SaveSyncedResultsLocallyError>
      get copyWith;
}

/// @nodoc
class _$UpdateSpeechResultTearOff {
  const _$UpdateSpeechResultTearOff();

// ignore: unused_element
  UpdateSpeechResult$ call({String speechName}) {
    return UpdateSpeechResult$(
      speechName: speechName,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $UpdateSpeechResult = _$UpdateSpeechResultTearOff();

/// @nodoc
mixin _$UpdateSpeechResult {
  String get speechName;

  $UpdateSpeechResultCopyWith<UpdateSpeechResult> get copyWith;
}

/// @nodoc
abstract class $UpdateSpeechResultCopyWith<$Res> {
  factory $UpdateSpeechResultCopyWith(
          UpdateSpeechResult value, $Res Function(UpdateSpeechResult) then) =
      _$UpdateSpeechResultCopyWithImpl<$Res>;
  $Res call({String speechName});
}

/// @nodoc
class _$UpdateSpeechResultCopyWithImpl<$Res>
    implements $UpdateSpeechResultCopyWith<$Res> {
  _$UpdateSpeechResultCopyWithImpl(this._value, this._then);

  final UpdateSpeechResult _value;
  // ignore: unused_field
  final $Res Function(UpdateSpeechResult) _then;

  @override
  $Res call({
    Object speechName = freezed,
  }) {
    return _then(_value.copyWith(
      speechName:
          speechName == freezed ? _value.speechName : speechName as String,
    ));
  }
}

/// @nodoc
abstract class $UpdateSpeechResult$CopyWith<$Res>
    implements $UpdateSpeechResultCopyWith<$Res> {
  factory $UpdateSpeechResult$CopyWith(
          UpdateSpeechResult$ value, $Res Function(UpdateSpeechResult$) then) =
      _$UpdateSpeechResult$CopyWithImpl<$Res>;
  @override
  $Res call({String speechName});
}

/// @nodoc
class _$UpdateSpeechResult$CopyWithImpl<$Res>
    extends _$UpdateSpeechResultCopyWithImpl<$Res>
    implements $UpdateSpeechResult$CopyWith<$Res> {
  _$UpdateSpeechResult$CopyWithImpl(
      UpdateSpeechResult$ _value, $Res Function(UpdateSpeechResult$) _then)
      : super(_value, (v) => _then(v as UpdateSpeechResult$));

  @override
  UpdateSpeechResult$ get _value => super._value as UpdateSpeechResult$;

  @override
  $Res call({
    Object speechName = freezed,
  }) {
    return _then(UpdateSpeechResult$(
      speechName:
          speechName == freezed ? _value.speechName : speechName as String,
    ));
  }
}

/// @nodoc
class _$UpdateSpeechResult$ implements UpdateSpeechResult$ {
  const _$UpdateSpeechResult$({this.speechName});

  @override
  final String speechName;

  @override
  String toString() {
    return 'UpdateSpeechResult(speechName: $speechName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UpdateSpeechResult$ &&
            (identical(other.speechName, speechName) ||
                const DeepCollectionEquality()
                    .equals(other.speechName, speechName)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(speechName);

  @override
  $UpdateSpeechResult$CopyWith<UpdateSpeechResult$> get copyWith =>
      _$UpdateSpeechResult$CopyWithImpl<UpdateSpeechResult$>(this, _$identity);
}

abstract class UpdateSpeechResult$ implements UpdateSpeechResult {
  const factory UpdateSpeechResult$({String speechName}) =
      _$UpdateSpeechResult$;

  @override
  String get speechName;
  @override
  $UpdateSpeechResult$CopyWith<UpdateSpeechResult$> get copyWith;
}
