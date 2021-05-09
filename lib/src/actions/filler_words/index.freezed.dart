// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of filler_words_actions;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$GetFillerWordsTearOff {
  const _$GetFillerWordsTearOff();

// ignore: unused_element
  GetFillerWords$ call() {
    return const GetFillerWords$();
  }

// ignore: unused_element
  GetFillerWordsSuccessful successful(List<String> fillerWords) {
    return GetFillerWordsSuccessful(
      fillerWords,
    );
  }

// ignore: unused_element
  GetFillerWordsError error(StateError error) {
    return GetFillerWordsError(
      error,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $GetFillerWords = _$GetFillerWordsTearOff();

/// @nodoc
mixin _$GetFillerWords {
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(), {
    @required Result successful(List<String> fillerWords),
    @required Result error(StateError error),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(), {
    Result successful(List<String> fillerWords),
    Result error(StateError error),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(GetFillerWords$ value), {
    @required Result successful(GetFillerWordsSuccessful value),
    @required Result error(GetFillerWordsError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(GetFillerWords$ value), {
    Result successful(GetFillerWordsSuccessful value),
    Result error(GetFillerWordsError value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $GetFillerWordsCopyWith<$Res> {
  factory $GetFillerWordsCopyWith(
          GetFillerWords value, $Res Function(GetFillerWords) then) =
      _$GetFillerWordsCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetFillerWordsCopyWithImpl<$Res>
    implements $GetFillerWordsCopyWith<$Res> {
  _$GetFillerWordsCopyWithImpl(this._value, this._then);

  final GetFillerWords _value;
  // ignore: unused_field
  final $Res Function(GetFillerWords) _then;
}

/// @nodoc
abstract class $GetFillerWords$CopyWith<$Res> {
  factory $GetFillerWords$CopyWith(
          GetFillerWords$ value, $Res Function(GetFillerWords$) then) =
      _$GetFillerWords$CopyWithImpl<$Res>;
}

/// @nodoc
class _$GetFillerWords$CopyWithImpl<$Res>
    extends _$GetFillerWordsCopyWithImpl<$Res>
    implements $GetFillerWords$CopyWith<$Res> {
  _$GetFillerWords$CopyWithImpl(
      GetFillerWords$ _value, $Res Function(GetFillerWords$) _then)
      : super(_value, (v) => _then(v as GetFillerWords$));

  @override
  GetFillerWords$ get _value => super._value as GetFillerWords$;
}

/// @nodoc
class _$GetFillerWords$ implements GetFillerWords$ {
  const _$GetFillerWords$();

  @override
  String toString() {
    return 'GetFillerWords()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is GetFillerWords$);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(), {
    @required Result successful(List<String> fillerWords),
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
    Result successful(List<String> fillerWords),
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
    Result $default(GetFillerWords$ value), {
    @required Result successful(GetFillerWordsSuccessful value),
    @required Result error(GetFillerWordsError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return $default(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(GetFillerWords$ value), {
    Result successful(GetFillerWordsSuccessful value),
    Result error(GetFillerWordsError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class GetFillerWords$ implements GetFillerWords {
  const factory GetFillerWords$() = _$GetFillerWords$;
}

/// @nodoc
abstract class $GetFillerWordsSuccessfulCopyWith<$Res> {
  factory $GetFillerWordsSuccessfulCopyWith(GetFillerWordsSuccessful value,
          $Res Function(GetFillerWordsSuccessful) then) =
      _$GetFillerWordsSuccessfulCopyWithImpl<$Res>;
  $Res call({List<String> fillerWords});
}

/// @nodoc
class _$GetFillerWordsSuccessfulCopyWithImpl<$Res>
    extends _$GetFillerWordsCopyWithImpl<$Res>
    implements $GetFillerWordsSuccessfulCopyWith<$Res> {
  _$GetFillerWordsSuccessfulCopyWithImpl(GetFillerWordsSuccessful _value,
      $Res Function(GetFillerWordsSuccessful) _then)
      : super(_value, (v) => _then(v as GetFillerWordsSuccessful));

  @override
  GetFillerWordsSuccessful get _value =>
      super._value as GetFillerWordsSuccessful;

  @override
  $Res call({
    Object fillerWords = freezed,
  }) {
    return _then(GetFillerWordsSuccessful(
      fillerWords == freezed ? _value.fillerWords : fillerWords as List<String>,
    ));
  }
}

/// @nodoc
class _$GetFillerWordsSuccessful implements GetFillerWordsSuccessful {
  const _$GetFillerWordsSuccessful(this.fillerWords)
      : assert(fillerWords != null);

  @override
  final List<String> fillerWords;

  @override
  String toString() {
    return 'GetFillerWords.successful(fillerWords: $fillerWords)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetFillerWordsSuccessful &&
            (identical(other.fillerWords, fillerWords) ||
                const DeepCollectionEquality()
                    .equals(other.fillerWords, fillerWords)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(fillerWords);

  @override
  $GetFillerWordsSuccessfulCopyWith<GetFillerWordsSuccessful> get copyWith =>
      _$GetFillerWordsSuccessfulCopyWithImpl<GetFillerWordsSuccessful>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(), {
    @required Result successful(List<String> fillerWords),
    @required Result error(StateError error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful(fillerWords);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(), {
    Result successful(List<String> fillerWords),
    Result error(StateError error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful(fillerWords);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(GetFillerWords$ value), {
    @required Result successful(GetFillerWordsSuccessful value),
    @required Result error(GetFillerWordsError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(GetFillerWords$ value), {
    Result successful(GetFillerWordsSuccessful value),
    Result error(GetFillerWordsError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class GetFillerWordsSuccessful implements GetFillerWords {
  const factory GetFillerWordsSuccessful(List<String> fillerWords) =
      _$GetFillerWordsSuccessful;

  List<String> get fillerWords;
  $GetFillerWordsSuccessfulCopyWith<GetFillerWordsSuccessful> get copyWith;
}

/// @nodoc
abstract class $GetFillerWordsErrorCopyWith<$Res> {
  factory $GetFillerWordsErrorCopyWith(
          GetFillerWordsError value, $Res Function(GetFillerWordsError) then) =
      _$GetFillerWordsErrorCopyWithImpl<$Res>;
  $Res call({StateError error});
}

/// @nodoc
class _$GetFillerWordsErrorCopyWithImpl<$Res>
    extends _$GetFillerWordsCopyWithImpl<$Res>
    implements $GetFillerWordsErrorCopyWith<$Res> {
  _$GetFillerWordsErrorCopyWithImpl(
      GetFillerWordsError _value, $Res Function(GetFillerWordsError) _then)
      : super(_value, (v) => _then(v as GetFillerWordsError));

  @override
  GetFillerWordsError get _value => super._value as GetFillerWordsError;

  @override
  $Res call({
    Object error = freezed,
  }) {
    return _then(GetFillerWordsError(
      error == freezed ? _value.error : error as StateError,
    ));
  }
}

@Implements(ErrorAction)

/// @nodoc
class _$GetFillerWordsError implements GetFillerWordsError {
  const _$GetFillerWordsError(this.error) : assert(error != null);

  @override
  final StateError error;

  @override
  String toString() {
    return 'GetFillerWords.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetFillerWordsError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @override
  $GetFillerWordsErrorCopyWith<GetFillerWordsError> get copyWith =>
      _$GetFillerWordsErrorCopyWithImpl<GetFillerWordsError>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(), {
    @required Result successful(List<String> fillerWords),
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
    Result successful(List<String> fillerWords),
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
    Result $default(GetFillerWords$ value), {
    @required Result successful(GetFillerWordsSuccessful value),
    @required Result error(GetFillerWordsError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(GetFillerWords$ value), {
    Result successful(GetFillerWordsSuccessful value),
    Result error(GetFillerWordsError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class GetFillerWordsError implements GetFillerWords, ErrorAction {
  const factory GetFillerWordsError(StateError error) = _$GetFillerWordsError;

  StateError get error;
  $GetFillerWordsErrorCopyWith<GetFillerWordsError> get copyWith;
}

/// @nodoc
class _$AddFillerWordTearOff {
  const _$AddFillerWordTearOff();

// ignore: unused_element
  AddFillerWord$ call({@required String fillerWord}) {
    return AddFillerWord$(
      fillerWord: fillerWord,
    );
  }

// ignore: unused_element
  AddFillerWordSuccessful successful(List<String> fillerWords) {
    return AddFillerWordSuccessful(
      fillerWords,
    );
  }

// ignore: unused_element
  AddFillerWordError error(StateError error) {
    return AddFillerWordError(
      error,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $AddFillerWord = _$AddFillerWordTearOff();

/// @nodoc
mixin _$AddFillerWord {
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String fillerWord), {
    @required Result successful(List<String> fillerWords),
    @required Result error(StateError error),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String fillerWord), {
    Result successful(List<String> fillerWords),
    Result error(StateError error),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(AddFillerWord$ value), {
    @required Result successful(AddFillerWordSuccessful value),
    @required Result error(AddFillerWordError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(AddFillerWord$ value), {
    Result successful(AddFillerWordSuccessful value),
    Result error(AddFillerWordError value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $AddFillerWordCopyWith<$Res> {
  factory $AddFillerWordCopyWith(
          AddFillerWord value, $Res Function(AddFillerWord) then) =
      _$AddFillerWordCopyWithImpl<$Res>;
}

/// @nodoc
class _$AddFillerWordCopyWithImpl<$Res>
    implements $AddFillerWordCopyWith<$Res> {
  _$AddFillerWordCopyWithImpl(this._value, this._then);

  final AddFillerWord _value;
  // ignore: unused_field
  final $Res Function(AddFillerWord) _then;
}

/// @nodoc
abstract class $AddFillerWord$CopyWith<$Res> {
  factory $AddFillerWord$CopyWith(
          AddFillerWord$ value, $Res Function(AddFillerWord$) then) =
      _$AddFillerWord$CopyWithImpl<$Res>;
  $Res call({String fillerWord});
}

/// @nodoc
class _$AddFillerWord$CopyWithImpl<$Res>
    extends _$AddFillerWordCopyWithImpl<$Res>
    implements $AddFillerWord$CopyWith<$Res> {
  _$AddFillerWord$CopyWithImpl(
      AddFillerWord$ _value, $Res Function(AddFillerWord$) _then)
      : super(_value, (v) => _then(v as AddFillerWord$));

  @override
  AddFillerWord$ get _value => super._value as AddFillerWord$;

  @override
  $Res call({
    Object fillerWord = freezed,
  }) {
    return _then(AddFillerWord$(
      fillerWord:
          fillerWord == freezed ? _value.fillerWord : fillerWord as String,
    ));
  }
}

/// @nodoc
class _$AddFillerWord$ implements AddFillerWord$ {
  const _$AddFillerWord$({@required this.fillerWord})
      : assert(fillerWord != null);

  @override
  final String fillerWord;

  @override
  String toString() {
    return 'AddFillerWord(fillerWord: $fillerWord)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AddFillerWord$ &&
            (identical(other.fillerWord, fillerWord) ||
                const DeepCollectionEquality()
                    .equals(other.fillerWord, fillerWord)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(fillerWord);

  @override
  $AddFillerWord$CopyWith<AddFillerWord$> get copyWith =>
      _$AddFillerWord$CopyWithImpl<AddFillerWord$>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String fillerWord), {
    @required Result successful(List<String> fillerWords),
    @required Result error(StateError error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return $default(fillerWord);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String fillerWord), {
    Result successful(List<String> fillerWords),
    Result error(StateError error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(fillerWord);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(AddFillerWord$ value), {
    @required Result successful(AddFillerWordSuccessful value),
    @required Result error(AddFillerWordError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return $default(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(AddFillerWord$ value), {
    Result successful(AddFillerWordSuccessful value),
    Result error(AddFillerWordError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class AddFillerWord$ implements AddFillerWord {
  const factory AddFillerWord$({@required String fillerWord}) =
      _$AddFillerWord$;

  String get fillerWord;
  $AddFillerWord$CopyWith<AddFillerWord$> get copyWith;
}

/// @nodoc
abstract class $AddFillerWordSuccessfulCopyWith<$Res> {
  factory $AddFillerWordSuccessfulCopyWith(AddFillerWordSuccessful value,
          $Res Function(AddFillerWordSuccessful) then) =
      _$AddFillerWordSuccessfulCopyWithImpl<$Res>;
  $Res call({List<String> fillerWords});
}

/// @nodoc
class _$AddFillerWordSuccessfulCopyWithImpl<$Res>
    extends _$AddFillerWordCopyWithImpl<$Res>
    implements $AddFillerWordSuccessfulCopyWith<$Res> {
  _$AddFillerWordSuccessfulCopyWithImpl(AddFillerWordSuccessful _value,
      $Res Function(AddFillerWordSuccessful) _then)
      : super(_value, (v) => _then(v as AddFillerWordSuccessful));

  @override
  AddFillerWordSuccessful get _value => super._value as AddFillerWordSuccessful;

  @override
  $Res call({
    Object fillerWords = freezed,
  }) {
    return _then(AddFillerWordSuccessful(
      fillerWords == freezed ? _value.fillerWords : fillerWords as List<String>,
    ));
  }
}

/// @nodoc
class _$AddFillerWordSuccessful implements AddFillerWordSuccessful {
  const _$AddFillerWordSuccessful(this.fillerWords)
      : assert(fillerWords != null);

  @override
  final List<String> fillerWords;

  @override
  String toString() {
    return 'AddFillerWord.successful(fillerWords: $fillerWords)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AddFillerWordSuccessful &&
            (identical(other.fillerWords, fillerWords) ||
                const DeepCollectionEquality()
                    .equals(other.fillerWords, fillerWords)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(fillerWords);

  @override
  $AddFillerWordSuccessfulCopyWith<AddFillerWordSuccessful> get copyWith =>
      _$AddFillerWordSuccessfulCopyWithImpl<AddFillerWordSuccessful>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String fillerWord), {
    @required Result successful(List<String> fillerWords),
    @required Result error(StateError error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful(fillerWords);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String fillerWord), {
    Result successful(List<String> fillerWords),
    Result error(StateError error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful(fillerWords);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(AddFillerWord$ value), {
    @required Result successful(AddFillerWordSuccessful value),
    @required Result error(AddFillerWordError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(AddFillerWord$ value), {
    Result successful(AddFillerWordSuccessful value),
    Result error(AddFillerWordError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class AddFillerWordSuccessful implements AddFillerWord {
  const factory AddFillerWordSuccessful(List<String> fillerWords) =
      _$AddFillerWordSuccessful;

  List<String> get fillerWords;
  $AddFillerWordSuccessfulCopyWith<AddFillerWordSuccessful> get copyWith;
}

/// @nodoc
abstract class $AddFillerWordErrorCopyWith<$Res> {
  factory $AddFillerWordErrorCopyWith(
          AddFillerWordError value, $Res Function(AddFillerWordError) then) =
      _$AddFillerWordErrorCopyWithImpl<$Res>;
  $Res call({StateError error});
}

/// @nodoc
class _$AddFillerWordErrorCopyWithImpl<$Res>
    extends _$AddFillerWordCopyWithImpl<$Res>
    implements $AddFillerWordErrorCopyWith<$Res> {
  _$AddFillerWordErrorCopyWithImpl(
      AddFillerWordError _value, $Res Function(AddFillerWordError) _then)
      : super(_value, (v) => _then(v as AddFillerWordError));

  @override
  AddFillerWordError get _value => super._value as AddFillerWordError;

  @override
  $Res call({
    Object error = freezed,
  }) {
    return _then(AddFillerWordError(
      error == freezed ? _value.error : error as StateError,
    ));
  }
}

@Implements(ErrorAction)

/// @nodoc
class _$AddFillerWordError implements AddFillerWordError {
  const _$AddFillerWordError(this.error) : assert(error != null);

  @override
  final StateError error;

  @override
  String toString() {
    return 'AddFillerWord.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AddFillerWordError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @override
  $AddFillerWordErrorCopyWith<AddFillerWordError> get copyWith =>
      _$AddFillerWordErrorCopyWithImpl<AddFillerWordError>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String fillerWord), {
    @required Result successful(List<String> fillerWords),
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
    Result $default(String fillerWord), {
    Result successful(List<String> fillerWords),
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
    Result $default(AddFillerWord$ value), {
    @required Result successful(AddFillerWordSuccessful value),
    @required Result error(AddFillerWordError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(AddFillerWord$ value), {
    Result successful(AddFillerWordSuccessful value),
    Result error(AddFillerWordError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class AddFillerWordError implements AddFillerWord, ErrorAction {
  const factory AddFillerWordError(StateError error) = _$AddFillerWordError;

  StateError get error;
  $AddFillerWordErrorCopyWith<AddFillerWordError> get copyWith;
}

/// @nodoc
class _$RemoveFillerWordTearOff {
  const _$RemoveFillerWordTearOff();

// ignore: unused_element
  RemoveFillerWord$ call({@required String fillerWord}) {
    return RemoveFillerWord$(
      fillerWord: fillerWord,
    );
  }

// ignore: unused_element
  RemoveFillerWordSuccessful successful(List<String> fillerWords) {
    return RemoveFillerWordSuccessful(
      fillerWords,
    );
  }

// ignore: unused_element
  RemoveFillerWordError error(StateError error) {
    return RemoveFillerWordError(
      error,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $RemoveFillerWord = _$RemoveFillerWordTearOff();

/// @nodoc
mixin _$RemoveFillerWord {
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String fillerWord), {
    @required Result successful(List<String> fillerWords),
    @required Result error(StateError error),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String fillerWord), {
    Result successful(List<String> fillerWords),
    Result error(StateError error),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(RemoveFillerWord$ value), {
    @required Result successful(RemoveFillerWordSuccessful value),
    @required Result error(RemoveFillerWordError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(RemoveFillerWord$ value), {
    Result successful(RemoveFillerWordSuccessful value),
    Result error(RemoveFillerWordError value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $RemoveFillerWordCopyWith<$Res> {
  factory $RemoveFillerWordCopyWith(
          RemoveFillerWord value, $Res Function(RemoveFillerWord) then) =
      _$RemoveFillerWordCopyWithImpl<$Res>;
}

/// @nodoc
class _$RemoveFillerWordCopyWithImpl<$Res>
    implements $RemoveFillerWordCopyWith<$Res> {
  _$RemoveFillerWordCopyWithImpl(this._value, this._then);

  final RemoveFillerWord _value;
  // ignore: unused_field
  final $Res Function(RemoveFillerWord) _then;
}

/// @nodoc
abstract class $RemoveFillerWord$CopyWith<$Res> {
  factory $RemoveFillerWord$CopyWith(
          RemoveFillerWord$ value, $Res Function(RemoveFillerWord$) then) =
      _$RemoveFillerWord$CopyWithImpl<$Res>;
  $Res call({String fillerWord});
}

/// @nodoc
class _$RemoveFillerWord$CopyWithImpl<$Res>
    extends _$RemoveFillerWordCopyWithImpl<$Res>
    implements $RemoveFillerWord$CopyWith<$Res> {
  _$RemoveFillerWord$CopyWithImpl(
      RemoveFillerWord$ _value, $Res Function(RemoveFillerWord$) _then)
      : super(_value, (v) => _then(v as RemoveFillerWord$));

  @override
  RemoveFillerWord$ get _value => super._value as RemoveFillerWord$;

  @override
  $Res call({
    Object fillerWord = freezed,
  }) {
    return _then(RemoveFillerWord$(
      fillerWord:
          fillerWord == freezed ? _value.fillerWord : fillerWord as String,
    ));
  }
}

/// @nodoc
class _$RemoveFillerWord$ implements RemoveFillerWord$ {
  const _$RemoveFillerWord$({@required this.fillerWord})
      : assert(fillerWord != null);

  @override
  final String fillerWord;

  @override
  String toString() {
    return 'RemoveFillerWord(fillerWord: $fillerWord)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RemoveFillerWord$ &&
            (identical(other.fillerWord, fillerWord) ||
                const DeepCollectionEquality()
                    .equals(other.fillerWord, fillerWord)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(fillerWord);

  @override
  $RemoveFillerWord$CopyWith<RemoveFillerWord$> get copyWith =>
      _$RemoveFillerWord$CopyWithImpl<RemoveFillerWord$>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String fillerWord), {
    @required Result successful(List<String> fillerWords),
    @required Result error(StateError error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return $default(fillerWord);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String fillerWord), {
    Result successful(List<String> fillerWords),
    Result error(StateError error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(fillerWord);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(RemoveFillerWord$ value), {
    @required Result successful(RemoveFillerWordSuccessful value),
    @required Result error(RemoveFillerWordError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return $default(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(RemoveFillerWord$ value), {
    Result successful(RemoveFillerWordSuccessful value),
    Result error(RemoveFillerWordError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class RemoveFillerWord$ implements RemoveFillerWord {
  const factory RemoveFillerWord$({@required String fillerWord}) =
      _$RemoveFillerWord$;

  String get fillerWord;
  $RemoveFillerWord$CopyWith<RemoveFillerWord$> get copyWith;
}

/// @nodoc
abstract class $RemoveFillerWordSuccessfulCopyWith<$Res> {
  factory $RemoveFillerWordSuccessfulCopyWith(RemoveFillerWordSuccessful value,
          $Res Function(RemoveFillerWordSuccessful) then) =
      _$RemoveFillerWordSuccessfulCopyWithImpl<$Res>;
  $Res call({List<String> fillerWords});
}

/// @nodoc
class _$RemoveFillerWordSuccessfulCopyWithImpl<$Res>
    extends _$RemoveFillerWordCopyWithImpl<$Res>
    implements $RemoveFillerWordSuccessfulCopyWith<$Res> {
  _$RemoveFillerWordSuccessfulCopyWithImpl(RemoveFillerWordSuccessful _value,
      $Res Function(RemoveFillerWordSuccessful) _then)
      : super(_value, (v) => _then(v as RemoveFillerWordSuccessful));

  @override
  RemoveFillerWordSuccessful get _value =>
      super._value as RemoveFillerWordSuccessful;

  @override
  $Res call({
    Object fillerWords = freezed,
  }) {
    return _then(RemoveFillerWordSuccessful(
      fillerWords == freezed ? _value.fillerWords : fillerWords as List<String>,
    ));
  }
}

/// @nodoc
class _$RemoveFillerWordSuccessful implements RemoveFillerWordSuccessful {
  const _$RemoveFillerWordSuccessful(this.fillerWords)
      : assert(fillerWords != null);

  @override
  final List<String> fillerWords;

  @override
  String toString() {
    return 'RemoveFillerWord.successful(fillerWords: $fillerWords)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RemoveFillerWordSuccessful &&
            (identical(other.fillerWords, fillerWords) ||
                const DeepCollectionEquality()
                    .equals(other.fillerWords, fillerWords)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(fillerWords);

  @override
  $RemoveFillerWordSuccessfulCopyWith<RemoveFillerWordSuccessful>
      get copyWith =>
          _$RemoveFillerWordSuccessfulCopyWithImpl<RemoveFillerWordSuccessful>(
              this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String fillerWord), {
    @required Result successful(List<String> fillerWords),
    @required Result error(StateError error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful(fillerWords);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String fillerWord), {
    Result successful(List<String> fillerWords),
    Result error(StateError error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful(fillerWords);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(RemoveFillerWord$ value), {
    @required Result successful(RemoveFillerWordSuccessful value),
    @required Result error(RemoveFillerWordError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(RemoveFillerWord$ value), {
    Result successful(RemoveFillerWordSuccessful value),
    Result error(RemoveFillerWordError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class RemoveFillerWordSuccessful implements RemoveFillerWord {
  const factory RemoveFillerWordSuccessful(List<String> fillerWords) =
      _$RemoveFillerWordSuccessful;

  List<String> get fillerWords;
  $RemoveFillerWordSuccessfulCopyWith<RemoveFillerWordSuccessful> get copyWith;
}

/// @nodoc
abstract class $RemoveFillerWordErrorCopyWith<$Res> {
  factory $RemoveFillerWordErrorCopyWith(RemoveFillerWordError value,
          $Res Function(RemoveFillerWordError) then) =
      _$RemoveFillerWordErrorCopyWithImpl<$Res>;
  $Res call({StateError error});
}

/// @nodoc
class _$RemoveFillerWordErrorCopyWithImpl<$Res>
    extends _$RemoveFillerWordCopyWithImpl<$Res>
    implements $RemoveFillerWordErrorCopyWith<$Res> {
  _$RemoveFillerWordErrorCopyWithImpl(
      RemoveFillerWordError _value, $Res Function(RemoveFillerWordError) _then)
      : super(_value, (v) => _then(v as RemoveFillerWordError));

  @override
  RemoveFillerWordError get _value => super._value as RemoveFillerWordError;

  @override
  $Res call({
    Object error = freezed,
  }) {
    return _then(RemoveFillerWordError(
      error == freezed ? _value.error : error as StateError,
    ));
  }
}

@Implements(ErrorAction)

/// @nodoc
class _$RemoveFillerWordError implements RemoveFillerWordError {
  const _$RemoveFillerWordError(this.error) : assert(error != null);

  @override
  final StateError error;

  @override
  String toString() {
    return 'RemoveFillerWord.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RemoveFillerWordError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @override
  $RemoveFillerWordErrorCopyWith<RemoveFillerWordError> get copyWith =>
      _$RemoveFillerWordErrorCopyWithImpl<RemoveFillerWordError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String fillerWord), {
    @required Result successful(List<String> fillerWords),
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
    Result $default(String fillerWord), {
    Result successful(List<String> fillerWords),
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
    Result $default(RemoveFillerWord$ value), {
    @required Result successful(RemoveFillerWordSuccessful value),
    @required Result error(RemoveFillerWordError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(RemoveFillerWord$ value), {
    Result successful(RemoveFillerWordSuccessful value),
    Result error(RemoveFillerWordError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class RemoveFillerWordError implements RemoveFillerWord, ErrorAction {
  const factory RemoveFillerWordError(StateError error) =
      _$RemoveFillerWordError;

  StateError get error;
  $RemoveFillerWordErrorCopyWith<RemoveFillerWordError> get copyWith;
}
