// GENERATED CODE - DO NOT MODIFY BY HAND

part of speech_models;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<SpeechResult> _$speechResultSerializer =
    new _$SpeechResultSerializer();
Serializer<SpeechResultState> _$speechResultStateSerializer =
    new _$SpeechResultStateSerializer();

class _$SpeechResultSerializer implements StructuredSerializer<SpeechResult> {
  @override
  final Iterable<Type> types = const [SpeechResult, _$SpeechResult];
  @override
  final String wireName = 'SpeechResult';

  @override
  Iterable<Object> serialize(Serializers serializers, SpeechResult object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'uuid',
      serializers.serialize(object.uuid, specifiedType: const FullType(String)),
      'speechDuration',
      serializers.serialize(object.speechDuration,
          specifiedType: const FullType(Duration)),
      'speechClarity',
      serializers.serialize(object.speechClarity,
          specifiedType: const FullType(double)),
      'wordsPerMinute',
      serializers.serialize(object.wordsPerMinute,
          specifiedType: const FullType(double)),
      'speechWords',
      serializers.serialize(object.speechWords,
          specifiedType:
              const FullType(BuiltList, const [const FullType(SpeechWord)])),
    ];
    if (object.speechName != null) {
      result
        ..add('speechName')
        ..add(serializers.serialize(object.speechName,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  SpeechResult deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SpeechResultBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'uuid':
          result.uuid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'speechName':
          result.speechName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'speechDuration':
          result.speechDuration = serializers.deserialize(value,
              specifiedType: const FullType(Duration)) as Duration;
          break;
        case 'speechClarity':
          result.speechClarity = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'wordsPerMinute':
          result.wordsPerMinute = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'speechWords':
          result.speechWords.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(SpeechWord)]))
              as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$SpeechResultStateSerializer
    implements StructuredSerializer<SpeechResultState> {
  @override
  final Iterable<Type> types = const [SpeechResultState, _$SpeechResultState];
  @override
  final String wireName = 'SpeechResultState';

  @override
  Iterable<Object> serialize(Serializers serializers, SpeechResultState object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'savedSpeechResults',
      serializers.serialize(object.savedSpeechResults,
          specifiedType:
              const FullType(BuiltList, const [const FullType(SpeechResult)])),
    ];
    if (object.speechResult != null) {
      result
        ..add('speechResult')
        ..add(serializers.serialize(object.speechResult,
            specifiedType: const FullType(SpeechResult)));
    }
    return result;
  }

  @override
  SpeechResultState deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SpeechResultStateBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'speechResult':
          result.speechResult.replace(serializers.deserialize(value,
              specifiedType: const FullType(SpeechResult)) as SpeechResult);
          break;
        case 'savedSpeechResults':
          result.savedSpeechResults.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(SpeechResult)]))
              as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$SpeechResult extends SpeechResult {
  @override
  final String uuid;
  @override
  final String speechName;
  @override
  final Duration speechDuration;
  @override
  final double speechClarity;
  @override
  final double wordsPerMinute;
  @override
  final BuiltList<SpeechWord> speechWords;

  factory _$SpeechResult([void Function(SpeechResultBuilder) updates]) =>
      (new SpeechResultBuilder()..update(updates)).build();

  _$SpeechResult._(
      {this.uuid,
      this.speechName,
      this.speechDuration,
      this.speechClarity,
      this.wordsPerMinute,
      this.speechWords})
      : super._() {
    if (uuid == null) {
      throw new BuiltValueNullFieldError('SpeechResult', 'uuid');
    }
    if (speechDuration == null) {
      throw new BuiltValueNullFieldError('SpeechResult', 'speechDuration');
    }
    if (speechClarity == null) {
      throw new BuiltValueNullFieldError('SpeechResult', 'speechClarity');
    }
    if (wordsPerMinute == null) {
      throw new BuiltValueNullFieldError('SpeechResult', 'wordsPerMinute');
    }
    if (speechWords == null) {
      throw new BuiltValueNullFieldError('SpeechResult', 'speechWords');
    }
  }

  @override
  SpeechResult rebuild(void Function(SpeechResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SpeechResultBuilder toBuilder() => new SpeechResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SpeechResult &&
        uuid == other.uuid &&
        speechName == other.speechName &&
        speechDuration == other.speechDuration &&
        speechClarity == other.speechClarity &&
        wordsPerMinute == other.wordsPerMinute &&
        speechWords == other.speechWords;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, uuid.hashCode), speechName.hashCode),
                    speechDuration.hashCode),
                speechClarity.hashCode),
            wordsPerMinute.hashCode),
        speechWords.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SpeechResult')
          ..add('uuid', uuid)
          ..add('speechName', speechName)
          ..add('speechDuration', speechDuration)
          ..add('speechClarity', speechClarity)
          ..add('wordsPerMinute', wordsPerMinute)
          ..add('speechWords', speechWords))
        .toString();
  }
}

class SpeechResultBuilder
    implements Builder<SpeechResult, SpeechResultBuilder> {
  _$SpeechResult _$v;

  String _uuid;
  String get uuid => _$this._uuid;
  set uuid(String uuid) => _$this._uuid = uuid;

  String _speechName;
  String get speechName => _$this._speechName;
  set speechName(String speechName) => _$this._speechName = speechName;

  Duration _speechDuration;
  Duration get speechDuration => _$this._speechDuration;
  set speechDuration(Duration speechDuration) =>
      _$this._speechDuration = speechDuration;

  double _speechClarity;
  double get speechClarity => _$this._speechClarity;
  set speechClarity(double speechClarity) =>
      _$this._speechClarity = speechClarity;

  double _wordsPerMinute;
  double get wordsPerMinute => _$this._wordsPerMinute;
  set wordsPerMinute(double wordsPerMinute) =>
      _$this._wordsPerMinute = wordsPerMinute;

  ListBuilder<SpeechWord> _speechWords;
  ListBuilder<SpeechWord> get speechWords =>
      _$this._speechWords ??= new ListBuilder<SpeechWord>();
  set speechWords(ListBuilder<SpeechWord> speechWords) =>
      _$this._speechWords = speechWords;

  SpeechResultBuilder();

  SpeechResultBuilder get _$this {
    if (_$v != null) {
      _uuid = _$v.uuid;
      _speechName = _$v.speechName;
      _speechDuration = _$v.speechDuration;
      _speechClarity = _$v.speechClarity;
      _wordsPerMinute = _$v.wordsPerMinute;
      _speechWords = _$v.speechWords?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SpeechResult other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$SpeechResult;
  }

  @override
  void update(void Function(SpeechResultBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$SpeechResult build() {
    _$SpeechResult _$result;
    try {
      _$result = _$v ??
          new _$SpeechResult._(
              uuid: uuid,
              speechName: speechName,
              speechDuration: speechDuration,
              speechClarity: speechClarity,
              wordsPerMinute: wordsPerMinute,
              speechWords: speechWords.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'speechWords';
        speechWords.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'SpeechResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$SpeechResultState extends SpeechResultState {
  @override
  final SpeechResult speechResult;
  @override
  final BuiltList<SpeechResult> savedSpeechResults;

  factory _$SpeechResultState(
          [void Function(SpeechResultStateBuilder) updates]) =>
      (new SpeechResultStateBuilder()..update(updates)).build();

  _$SpeechResultState._({this.speechResult, this.savedSpeechResults})
      : super._() {
    if (savedSpeechResults == null) {
      throw new BuiltValueNullFieldError(
          'SpeechResultState', 'savedSpeechResults');
    }
  }

  @override
  SpeechResultState rebuild(void Function(SpeechResultStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SpeechResultStateBuilder toBuilder() =>
      new SpeechResultStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SpeechResultState &&
        speechResult == other.speechResult &&
        savedSpeechResults == other.savedSpeechResults;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, speechResult.hashCode), savedSpeechResults.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SpeechResultState')
          ..add('speechResult', speechResult)
          ..add('savedSpeechResults', savedSpeechResults))
        .toString();
  }
}

class SpeechResultStateBuilder
    implements Builder<SpeechResultState, SpeechResultStateBuilder> {
  _$SpeechResultState _$v;

  SpeechResultBuilder _speechResult;
  SpeechResultBuilder get speechResult =>
      _$this._speechResult ??= new SpeechResultBuilder();
  set speechResult(SpeechResultBuilder speechResult) =>
      _$this._speechResult = speechResult;

  ListBuilder<SpeechResult> _savedSpeechResults;
  ListBuilder<SpeechResult> get savedSpeechResults =>
      _$this._savedSpeechResults ??= new ListBuilder<SpeechResult>();
  set savedSpeechResults(ListBuilder<SpeechResult> savedSpeechResults) =>
      _$this._savedSpeechResults = savedSpeechResults;

  SpeechResultStateBuilder();

  SpeechResultStateBuilder get _$this {
    if (_$v != null) {
      _speechResult = _$v.speechResult?.toBuilder();
      _savedSpeechResults = _$v.savedSpeechResults?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SpeechResultState other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$SpeechResultState;
  }

  @override
  void update(void Function(SpeechResultStateBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$SpeechResultState build() {
    _$SpeechResultState _$result;
    try {
      _$result = _$v ??
          new _$SpeechResultState._(
              speechResult: _speechResult?.build(),
              savedSpeechResults: savedSpeechResults.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'speechResult';
        _speechResult?.build();
        _$failedField = 'savedSpeechResults';
        savedSpeechResults.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'SpeechResultState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
