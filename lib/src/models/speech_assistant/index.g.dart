// GENERATED CODE - DO NOT MODIFY BY HAND

part of assistant_models;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<SpeechAssistant> _$speechAssistantSerializer =
    new _$SpeechAssistantSerializer();
Serializer<SpeechAssistantState> _$speechAssistantStateSerializer =
    new _$SpeechAssistantStateSerializer();

class _$SpeechAssistantSerializer
    implements StructuredSerializer<SpeechAssistant> {
  @override
  final Iterable<Type> types = const [SpeechAssistant, _$SpeechAssistant];
  @override
  final String wireName = 'SpeechAssistant';

  @override
  Iterable<Object> serialize(Serializers serializers, SpeechAssistant object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object>[];
  }

  @override
  SpeechAssistant deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new SpeechAssistantBuilder().build();
  }
}

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
    if (object.speechAssistant != null) {
      result
        ..add('speechAssistant')
        ..add(serializers.serialize(object.speechAssistant,
            specifiedType: const FullType(SpeechAssistant)));
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
        case 'speechAssistant':
          result.speechAssistant.replace(serializers.deserialize(value,
                  specifiedType: const FullType(SpeechAssistant))
              as SpeechAssistant);
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

class _$SpeechAssistant extends SpeechAssistant {
  factory _$SpeechAssistant([void Function(SpeechAssistantBuilder) updates]) =>
      (new SpeechAssistantBuilder()..update(updates)).build();

  _$SpeechAssistant._() : super._();

  @override
  SpeechAssistant rebuild(void Function(SpeechAssistantBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SpeechAssistantBuilder toBuilder() =>
      new SpeechAssistantBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SpeechAssistant;
  }

  @override
  int get hashCode {
    return 945805827;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('SpeechAssistant').toString();
  }
}

class SpeechAssistantBuilder
    implements Builder<SpeechAssistant, SpeechAssistantBuilder> {
  _$SpeechAssistant _$v;

  SpeechAssistantBuilder();

  @override
  void replace(SpeechAssistant other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$SpeechAssistant;
  }

  @override
  void update(void Function(SpeechAssistantBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$SpeechAssistant build() {
    final _$result = _$v ?? new _$SpeechAssistant._();
    replace(_$result);
    return _$result;
  }
}

class _$SpeechAssistantState extends SpeechAssistantState {
  @override
  final SpeechAssistant speechAssistant;
  @override
  final bool hasInternetConnection;

  factory _$SpeechAssistantState(
          [void Function(SpeechAssistantStateBuilder) updates]) =>
      (new SpeechAssistantStateBuilder()..update(updates)).build();

  _$SpeechAssistantState._({this.speechAssistant, this.hasInternetConnection})
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
        speechAssistant == other.speechAssistant &&
        hasInternetConnection == other.hasInternetConnection;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc(0, speechAssistant.hashCode), hasInternetConnection.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SpeechAssistantState')
          ..add('speechAssistant', speechAssistant)
          ..add('hasInternetConnection', hasInternetConnection))
        .toString();
  }
}

class SpeechAssistantStateBuilder
    implements Builder<SpeechAssistantState, SpeechAssistantStateBuilder> {
  _$SpeechAssistantState _$v;

  SpeechAssistantBuilder _speechAssistant;
  SpeechAssistantBuilder get speechAssistant =>
      _$this._speechAssistant ??= new SpeechAssistantBuilder();
  set speechAssistant(SpeechAssistantBuilder speechAssistant) =>
      _$this._speechAssistant = speechAssistant;

  bool _hasInternetConnection;
  bool get hasInternetConnection => _$this._hasInternetConnection;
  set hasInternetConnection(bool hasInternetConnection) =>
      _$this._hasInternetConnection = hasInternetConnection;

  SpeechAssistantStateBuilder();

  SpeechAssistantStateBuilder get _$this {
    if (_$v != null) {
      _speechAssistant = _$v.speechAssistant?.toBuilder();
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
    _$SpeechAssistantState _$result;
    try {
      _$result = _$v ??
          new _$SpeechAssistantState._(
              speechAssistant: _speechAssistant?.build(),
              hasInternetConnection: hasInternetConnection);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'speechAssistant';
        _speechAssistant?.build();
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

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
