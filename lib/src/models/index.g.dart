// GENERATED CODE - DO NOT MODIFY BY HAND

part of models;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<AppState> _$appStateSerializer = new _$AppStateSerializer();

class _$AppStateSerializer implements StructuredSerializer<AppState> {
  @override
  final Iterable<Type> types = const [AppState, _$AppState];
  @override
  final String wireName = 'AppState';

  @override
  Iterable<Object> serialize(Serializers serializers, AppState object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'auth',
      serializers.serialize(object.auth,
          specifiedType: const FullType(AuthState)),
      'fillerWords',
      serializers.serialize(object.fillerWords,
          specifiedType: const FullType(FillerWordsState)),
      'speechResult',
      serializers.serialize(object.speechResult,
          specifiedType: const FullType(SpeechResultState)),
      'speechAssistant',
      serializers.serialize(object.speechAssistant,
          specifiedType: const FullType(SpeechAssistantState)),
    ];

    return result;
  }

  @override
  AppState deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AppStateBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'auth':
          result.auth.replace(serializers.deserialize(value,
              specifiedType: const FullType(AuthState)) as AuthState);
          break;
        case 'fillerWords':
          result.fillerWords.replace(serializers.deserialize(value,
                  specifiedType: const FullType(FillerWordsState))
              as FillerWordsState);
          break;
        case 'speechResult':
          result.speechResult.replace(serializers.deserialize(value,
                  specifiedType: const FullType(SpeechResultState))
              as SpeechResultState);
          break;
        case 'speechAssistant':
          result.speechAssistant.replace(serializers.deserialize(value,
                  specifiedType: const FullType(SpeechAssistantState))
              as SpeechAssistantState);
          break;
      }
    }

    return result.build();
  }
}

class _$AppState extends AppState {
  @override
  final AuthState auth;
  @override
  final FillerWordsState fillerWords;
  @override
  final SpeechResultState speechResult;
  @override
  final SpeechAssistantState speechAssistant;

  factory _$AppState([void Function(AppStateBuilder) updates]) =>
      (new AppStateBuilder()..update(updates)).build();

  _$AppState._(
      {this.auth, this.fillerWords, this.speechResult, this.speechAssistant})
      : super._() {
    if (auth == null) {
      throw new BuiltValueNullFieldError('AppState', 'auth');
    }
    if (fillerWords == null) {
      throw new BuiltValueNullFieldError('AppState', 'fillerWords');
    }
    if (speechResult == null) {
      throw new BuiltValueNullFieldError('AppState', 'speechResult');
    }
    if (speechAssistant == null) {
      throw new BuiltValueNullFieldError('AppState', 'speechAssistant');
    }
  }

  @override
  AppState rebuild(void Function(AppStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AppStateBuilder toBuilder() => new AppStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AppState &&
        auth == other.auth &&
        fillerWords == other.fillerWords &&
        speechResult == other.speechResult &&
        speechAssistant == other.speechAssistant;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, auth.hashCode), fillerWords.hashCode),
            speechResult.hashCode),
        speechAssistant.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AppState')
          ..add('auth', auth)
          ..add('fillerWords', fillerWords)
          ..add('speechResult', speechResult)
          ..add('speechAssistant', speechAssistant))
        .toString();
  }
}

class AppStateBuilder implements Builder<AppState, AppStateBuilder> {
  _$AppState _$v;

  AuthStateBuilder _auth;
  AuthStateBuilder get auth => _$this._auth ??= new AuthStateBuilder();
  set auth(AuthStateBuilder auth) => _$this._auth = auth;

  FillerWordsStateBuilder _fillerWords;
  FillerWordsStateBuilder get fillerWords =>
      _$this._fillerWords ??= new FillerWordsStateBuilder();
  set fillerWords(FillerWordsStateBuilder fillerWords) =>
      _$this._fillerWords = fillerWords;

  SpeechResultStateBuilder _speechResult;
  SpeechResultStateBuilder get speechResult =>
      _$this._speechResult ??= new SpeechResultStateBuilder();
  set speechResult(SpeechResultStateBuilder speechResult) =>
      _$this._speechResult = speechResult;

  SpeechAssistantStateBuilder _speechAssistant;
  SpeechAssistantStateBuilder get speechAssistant =>
      _$this._speechAssistant ??= new SpeechAssistantStateBuilder();
  set speechAssistant(SpeechAssistantStateBuilder speechAssistant) =>
      _$this._speechAssistant = speechAssistant;

  AppStateBuilder();

  AppStateBuilder get _$this {
    if (_$v != null) {
      _auth = _$v.auth?.toBuilder();
      _fillerWords = _$v.fillerWords?.toBuilder();
      _speechResult = _$v.speechResult?.toBuilder();
      _speechAssistant = _$v.speechAssistant?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AppState other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$AppState;
  }

  @override
  void update(void Function(AppStateBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AppState build() {
    _$AppState _$result;
    try {
      _$result = _$v ??
          new _$AppState._(
              auth: auth.build(),
              fillerWords: fillerWords.build(),
              speechResult: speechResult.build(),
              speechAssistant: speechAssistant.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'auth';
        auth.build();
        _$failedField = 'fillerWords';
        fillerWords.build();
        _$failedField = 'speechResult';
        speechResult.build();
        _$failedField = 'speechAssistant';
        speechAssistant.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'AppState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
