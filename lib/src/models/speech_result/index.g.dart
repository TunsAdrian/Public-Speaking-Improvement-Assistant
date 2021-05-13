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
      'speechDuration',
      serializers.serialize(object.speechDuration,
          specifiedType: const FullType(Duration)),
      'speechClarity',
      serializers.serialize(object.speechClarity,
          specifiedType: const FullType(double)),
      'speechWords',
      serializers.serialize(object.speechWords,
          specifiedType:
              const FullType(BuiltList, const [const FullType(String)])),
      'speechFillerWords',
      serializers.serialize(object.speechFillerWords,
          specifiedType:
              const FullType(BuiltList, const [const FullType(String)])),
    ];

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
        case 'speechDuration':
          result.speechDuration = serializers.deserialize(value,
              specifiedType: const FullType(Duration)) as Duration;
          break;
        case 'speechClarity':
          result.speechClarity = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'speechWords':
          result.speechWords.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<Object>);
          break;
        case 'speechFillerWords':
          result.speechFillerWords.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
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
      'speechResult',
      serializers.serialize(object.speechResult,
          specifiedType: const FullType(SpeechResult)),
    ];

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
      }
    }

    return result.build();
  }
}

class _$SpeechResult extends SpeechResult {
  @override
  final Duration speechDuration;
  @override
  final double speechClarity;
  @override
  final BuiltList<String> speechWords;
  @override
  final BuiltList<String> speechFillerWords;

  factory _$SpeechResult([void Function(SpeechResultBuilder) updates]) =>
      (new SpeechResultBuilder()..update(updates)).build();

  _$SpeechResult._(
      {this.speechDuration,
      this.speechClarity,
      this.speechWords,
      this.speechFillerWords})
      : super._() {
    if (speechDuration == null) {
      throw new BuiltValueNullFieldError('SpeechResult', 'speechDuration');
    }
    if (speechClarity == null) {
      throw new BuiltValueNullFieldError('SpeechResult', 'speechClarity');
    }
    if (speechWords == null) {
      throw new BuiltValueNullFieldError('SpeechResult', 'speechWords');
    }
    if (speechFillerWords == null) {
      throw new BuiltValueNullFieldError('SpeechResult', 'speechFillerWords');
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
        speechDuration == other.speechDuration &&
        speechClarity == other.speechClarity &&
        speechWords == other.speechWords &&
        speechFillerWords == other.speechFillerWords;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, speechDuration.hashCode), speechClarity.hashCode),
            speechWords.hashCode),
        speechFillerWords.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SpeechResult')
          ..add('speechDuration', speechDuration)
          ..add('speechClarity', speechClarity)
          ..add('speechWords', speechWords)
          ..add('speechFillerWords', speechFillerWords))
        .toString();
  }
}

class SpeechResultBuilder
    implements Builder<SpeechResult, SpeechResultBuilder> {
  _$SpeechResult _$v;

  Duration _speechDuration;
  Duration get speechDuration => _$this._speechDuration;
  set speechDuration(Duration speechDuration) =>
      _$this._speechDuration = speechDuration;

  double _speechClarity;
  double get speechClarity => _$this._speechClarity;
  set speechClarity(double speechClarity) =>
      _$this._speechClarity = speechClarity;

  ListBuilder<String> _speechWords;
  ListBuilder<String> get speechWords =>
      _$this._speechWords ??= new ListBuilder<String>();
  set speechWords(ListBuilder<String> speechWords) =>
      _$this._speechWords = speechWords;

  ListBuilder<String> _speechFillerWords;
  ListBuilder<String> get speechFillerWords =>
      _$this._speechFillerWords ??= new ListBuilder<String>();
  set speechFillerWords(ListBuilder<String> speechFillerWords) =>
      _$this._speechFillerWords = speechFillerWords;

  SpeechResultBuilder();

  SpeechResultBuilder get _$this {
    if (_$v != null) {
      _speechDuration = _$v.speechDuration;
      _speechClarity = _$v.speechClarity;
      _speechWords = _$v.speechWords?.toBuilder();
      _speechFillerWords = _$v.speechFillerWords?.toBuilder();
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
              speechDuration: speechDuration,
              speechClarity: speechClarity,
              speechWords: speechWords.build(),
              speechFillerWords: speechFillerWords.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'speechWords';
        speechWords.build();
        _$failedField = 'speechFillerWords';
        speechFillerWords.build();
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

  factory _$SpeechResultState(
          [void Function(SpeechResultStateBuilder) updates]) =>
      (new SpeechResultStateBuilder()..update(updates)).build();

  _$SpeechResultState._({this.speechResult}) : super._() {
    if (speechResult == null) {
      throw new BuiltValueNullFieldError('SpeechResultState', 'speechResult');
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
    return other is SpeechResultState && speechResult == other.speechResult;
  }

  @override
  int get hashCode {
    return $jf($jc(0, speechResult.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SpeechResultState')
          ..add('speechResult', speechResult))
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

  SpeechResultStateBuilder();

  SpeechResultStateBuilder get _$this {
    if (_$v != null) {
      _speechResult = _$v.speechResult?.toBuilder();
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
      _$result =
          _$v ?? new _$SpeechResultState._(speechResult: speechResult.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'speechResult';
        speechResult.build();
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
