// GENERATED CODE - DO NOT MODIFY BY HAND

part of assistant_models;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<SpeechAssistantState> _$speechAssistantStateSerializer =
    new _$SpeechAssistantStateSerializer();
Serializer<SpeechWord> _$speechWordSerializer = new _$SpeechWordSerializer();

class _$SpeechAssistantStateSerializer
    implements StructuredSerializer<SpeechAssistantState> {
  @override
  final Iterable<Type> types = const [
    SpeechAssistantState,
    _$SpeechAssistantState
  ];
  @override
  final String wireName = 'SpeechAssistantState';

  @override
  Iterable<Object> serialize(
      Serializers serializers, SpeechAssistantState object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.isListening != null) {
      result
        ..add('isListening')
        ..add(serializers.serialize(object.isListening,
            specifiedType: const FullType(bool)));
    }
    if (object.recognizedText != null) {
      result
        ..add('recognizedText')
        ..add(serializers.serialize(object.recognizedText,
            specifiedType:
                const FullType(BuiltList, const [const FullType(SpeechWord)])));
    }
    if (object.possibleText != null) {
      result
        ..add('possibleText')
        ..add(serializers.serialize(object.possibleText,
            specifiedType:
                const FullType(BuiltList, const [const FullType(SpeechWord)])));
    }
    if (object.hasInternetConnection != null) {
      result
        ..add('hasInternetConnection')
        ..add(serializers.serialize(object.hasInternetConnection,
            specifiedType: const FullType(bool)));
    }
    if (object.confidence != null) {
      result
        ..add('confidence')
        ..add(serializers.serialize(object.confidence,
            specifiedType: const FullType(double)));
    }
    return result;
  }

  @override
  SpeechAssistantState deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SpeechAssistantStateBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'isListening':
          result.isListening = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'recognizedText':
          result.recognizedText.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(SpeechWord)]))
              as BuiltList<Object>);
          break;
        case 'possibleText':
          result.possibleText.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(SpeechWord)]))
              as BuiltList<Object>);
          break;
        case 'hasInternetConnection':
          result.hasInternetConnection = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'confidence':
          result.confidence = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
      }
    }

    return result.build();
  }
}

class _$SpeechWordSerializer implements StructuredSerializer<SpeechWord> {
  @override
  final Iterable<Type> types = const [SpeechWord, _$SpeechWord];
  @override
  final String wireName = 'SpeechWord';

  @override
  Iterable<Object> serialize(Serializers serializers, SpeechWord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'text',
      serializers.serialize(object.text, specifiedType: const FullType(String)),
      'isFiller',
      serializers.serialize(object.isFiller,
          specifiedType: const FullType(bool)),
    ];

    return result;
  }

  @override
  SpeechWord deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SpeechWordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'text':
          result.text = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'isFiller':
          result.isFiller = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$SpeechAssistantState extends SpeechAssistantState {
  @override
  final bool isListening;
  @override
  final BuiltList<SpeechWord> recognizedText;
  @override
  final BuiltList<SpeechWord> possibleText;
  @override
  final bool hasInternetConnection;
  @override
  final double confidence;

  factory _$SpeechAssistantState(
          [void Function(SpeechAssistantStateBuilder) updates]) =>
      (new SpeechAssistantStateBuilder()..update(updates)).build();

  _$SpeechAssistantState._(
      {this.isListening,
      this.recognizedText,
      this.possibleText,
      this.hasInternetConnection,
      this.confidence})
      : super._();

  @override
  SpeechAssistantState rebuild(
          void Function(SpeechAssistantStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SpeechAssistantStateBuilder toBuilder() =>
      new SpeechAssistantStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SpeechAssistantState &&
        isListening == other.isListening &&
        recognizedText == other.recognizedText &&
        possibleText == other.possibleText &&
        hasInternetConnection == other.hasInternetConnection &&
        confidence == other.confidence;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, isListening.hashCode), recognizedText.hashCode),
                possibleText.hashCode),
            hasInternetConnection.hashCode),
        confidence.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SpeechAssistantState')
          ..add('isListening', isListening)
          ..add('recognizedText', recognizedText)
          ..add('possibleText', possibleText)
          ..add('hasInternetConnection', hasInternetConnection)
          ..add('confidence', confidence))
        .toString();
  }
}

class SpeechAssistantStateBuilder
    implements Builder<SpeechAssistantState, SpeechAssistantStateBuilder> {
  _$SpeechAssistantState _$v;

  bool _isListening;
  bool get isListening => _$this._isListening;
  set isListening(bool isListening) => _$this._isListening = isListening;

  ListBuilder<SpeechWord> _recognizedText;
  ListBuilder<SpeechWord> get recognizedText =>
      _$this._recognizedText ??= new ListBuilder<SpeechWord>();
  set recognizedText(ListBuilder<SpeechWord> recognizedText) =>
      _$this._recognizedText = recognizedText;

  ListBuilder<SpeechWord> _possibleText;
  ListBuilder<SpeechWord> get possibleText =>
      _$this._possibleText ??= new ListBuilder<SpeechWord>();
  set possibleText(ListBuilder<SpeechWord> possibleText) =>
      _$this._possibleText = possibleText;

  bool _hasInternetConnection;
  bool get hasInternetConnection => _$this._hasInternetConnection;
  set hasInternetConnection(bool hasInternetConnection) =>
      _$this._hasInternetConnection = hasInternetConnection;

  double _confidence;
  double get confidence => _$this._confidence;
  set confidence(double confidence) => _$this._confidence = confidence;

  SpeechAssistantStateBuilder();

  SpeechAssistantStateBuilder get _$this {
    if (_$v != null) {
      _isListening = _$v.isListening;
      _recognizedText = _$v.recognizedText?.toBuilder();
      _possibleText = _$v.possibleText?.toBuilder();
      _hasInternetConnection = _$v.hasInternetConnection;
      _confidence = _$v.confidence;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SpeechAssistantState other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$SpeechAssistantState;
  }

  @override
  void update(void Function(SpeechAssistantStateBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$SpeechAssistantState build() {
    _$SpeechAssistantState _$result;
    try {
      _$result = _$v ??
          new _$SpeechAssistantState._(
              isListening: isListening,
              recognizedText: _recognizedText?.build(),
              possibleText: _possibleText?.build(),
              hasInternetConnection: hasInternetConnection,
              confidence: confidence);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'recognizedText';
        _recognizedText?.build();
        _$failedField = 'possibleText';
        _possibleText?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'SpeechAssistantState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$SpeechWord extends SpeechWord {
  @override
  final String text;
  @override
  final bool isFiller;

  factory _$SpeechWord([void Function(SpeechWordBuilder) updates]) =>
      (new SpeechWordBuilder()..update(updates)).build();

  _$SpeechWord._({this.text, this.isFiller}) : super._() {
    if (text == null) {
      throw new BuiltValueNullFieldError('SpeechWord', 'text');
    }
    if (isFiller == null) {
      throw new BuiltValueNullFieldError('SpeechWord', 'isFiller');
    }
  }

  @override
  SpeechWord rebuild(void Function(SpeechWordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SpeechWordBuilder toBuilder() => new SpeechWordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SpeechWord &&
        text == other.text &&
        isFiller == other.isFiller;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, text.hashCode), isFiller.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SpeechWord')
          ..add('text', text)
          ..add('isFiller', isFiller))
        .toString();
  }
}

class SpeechWordBuilder implements Builder<SpeechWord, SpeechWordBuilder> {
  _$SpeechWord _$v;

  String _text;
  String get text => _$this._text;
  set text(String text) => _$this._text = text;

  bool _isFiller;
  bool get isFiller => _$this._isFiller;
  set isFiller(bool isFiller) => _$this._isFiller = isFiller;

  SpeechWordBuilder();

  SpeechWordBuilder get _$this {
    if (_$v != null) {
      _text = _$v.text;
      _isFiller = _$v.isFiller;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SpeechWord other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$SpeechWord;
  }

  @override
  void update(void Function(SpeechWordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$SpeechWord build() {
    final _$result = _$v ?? new _$SpeechWord._(text: text, isFiller: isFiller);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
