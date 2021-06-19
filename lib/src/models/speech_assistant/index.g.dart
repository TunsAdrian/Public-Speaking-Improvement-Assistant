// GENERATED CODE - DO NOT MODIFY BY HAND

part of assistant_models;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<SpeechAssistantState> _$speechAssistantStateSerializer =
    new _$SpeechAssistantStateSerializer();

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
            specifiedType: const FullType(String)));
    }
    if (object.hasInternetConnection != null) {
      result
        ..add('hasInternetConnection')
        ..add(serializers.serialize(object.hasInternetConnection,
            specifiedType: const FullType(bool)));
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
          result.recognizedText = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'hasInternetConnection':
          result.hasInternetConnection = serializers.deserialize(value,
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
  final String recognizedText;
  @override
  final bool hasInternetConnection;

  factory _$SpeechAssistantState(
          [void Function(SpeechAssistantStateBuilder) updates]) =>
      (new SpeechAssistantStateBuilder()..update(updates)).build();

  _$SpeechAssistantState._(
      {this.isListening, this.recognizedText, this.hasInternetConnection})
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
        hasInternetConnection == other.hasInternetConnection;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, isListening.hashCode), recognizedText.hashCode),
        hasInternetConnection.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SpeechAssistantState')
          ..add('isListening', isListening)
          ..add('recognizedText', recognizedText)
          ..add('hasInternetConnection', hasInternetConnection))
        .toString();
  }
}

class SpeechAssistantStateBuilder
    implements Builder<SpeechAssistantState, SpeechAssistantStateBuilder> {
  _$SpeechAssistantState _$v;

  bool _isListening;
  bool get isListening => _$this._isListening;
  set isListening(bool isListening) => _$this._isListening = isListening;

  String _recognizedText;
  String get recognizedText => _$this._recognizedText;
  set recognizedText(String recognizedText) =>
      _$this._recognizedText = recognizedText;

  bool _hasInternetConnection;
  bool get hasInternetConnection => _$this._hasInternetConnection;
  set hasInternetConnection(bool hasInternetConnection) =>
      _$this._hasInternetConnection = hasInternetConnection;

  SpeechAssistantStateBuilder();

  SpeechAssistantStateBuilder get _$this {
    if (_$v != null) {
      _isListening = _$v.isListening;
      _recognizedText = _$v.recognizedText;
      _hasInternetConnection = _$v.hasInternetConnection;
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
    final _$result = _$v ??
        new _$SpeechAssistantState._(
            isListening: isListening,
            recognizedText: recognizedText,
            hasInternetConnection: hasInternetConnection);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
