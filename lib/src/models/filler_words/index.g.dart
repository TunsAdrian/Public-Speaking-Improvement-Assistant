// GENERATED CODE - DO NOT MODIFY BY HAND

part of filler_words_models;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<FillerWordsState> _$fillerWordsStateSerializer =
    new _$FillerWordsStateSerializer();
Serializer<FillerWord> _$fillerWordSerializer = new _$FillerWordSerializer();

class _$FillerWordsStateSerializer
    implements StructuredSerializer<FillerWordsState> {
  @override
  final Iterable<Type> types = const [FillerWordsState, _$FillerWordsState];
  @override
  final String wireName = 'FillerWordsState';

  @override
  Iterable<Object> serialize(Serializers serializers, FillerWordsState object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'fillerWords',
      serializers.serialize(object.fillerWords,
          specifiedType:
              const FullType(BuiltList, const [const FullType(FillerWord)])),
    ];

    return result;
  }

  @override
  FillerWordsState deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new FillerWordsStateBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'fillerWords':
          result.fillerWords.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(FillerWord)]))
              as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$FillerWordSerializer implements StructuredSerializer<FillerWord> {
  @override
  final Iterable<Type> types = const [FillerWord, _$FillerWord];
  @override
  final String wireName = 'FillerWord';

  @override
  Iterable<Object> serialize(Serializers serializers, FillerWord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'uuid',
      serializers.serialize(object.uuid, specifiedType: const FullType(String)),
      'text',
      serializers.serialize(object.text, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  FillerWord deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new FillerWordBuilder();

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
        case 'text':
          result.text = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$FillerWordsState extends FillerWordsState {
  @override
  final BuiltList<FillerWord> fillerWords;

  factory _$FillerWordsState(
          [void Function(FillerWordsStateBuilder) updates]) =>
      (new FillerWordsStateBuilder()..update(updates)).build();

  _$FillerWordsState._({this.fillerWords}) : super._() {
    if (fillerWords == null) {
      throw new BuiltValueNullFieldError('FillerWordsState', 'fillerWords');
    }
  }

  @override
  FillerWordsState rebuild(void Function(FillerWordsStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FillerWordsStateBuilder toBuilder() =>
      new FillerWordsStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FillerWordsState && fillerWords == other.fillerWords;
  }

  @override
  int get hashCode {
    return $jf($jc(0, fillerWords.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('FillerWordsState')
          ..add('fillerWords', fillerWords))
        .toString();
  }
}

class FillerWordsStateBuilder
    implements Builder<FillerWordsState, FillerWordsStateBuilder> {
  _$FillerWordsState _$v;

  ListBuilder<FillerWord> _fillerWords;
  ListBuilder<FillerWord> get fillerWords =>
      _$this._fillerWords ??= new ListBuilder<FillerWord>();
  set fillerWords(ListBuilder<FillerWord> fillerWords) =>
      _$this._fillerWords = fillerWords;

  FillerWordsStateBuilder();

  FillerWordsStateBuilder get _$this {
    if (_$v != null) {
      _fillerWords = _$v.fillerWords?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FillerWordsState other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$FillerWordsState;
  }

  @override
  void update(void Function(FillerWordsStateBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$FillerWordsState build() {
    _$FillerWordsState _$result;
    try {
      _$result =
          _$v ?? new _$FillerWordsState._(fillerWords: fillerWords.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'fillerWords';
        fillerWords.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'FillerWordsState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$FillerWord extends FillerWord {
  @override
  final String uuid;
  @override
  final String text;

  factory _$FillerWord([void Function(FillerWordBuilder) updates]) =>
      (new FillerWordBuilder()..update(updates)).build();

  _$FillerWord._({this.uuid, this.text}) : super._() {
    if (uuid == null) {
      throw new BuiltValueNullFieldError('FillerWord', 'uuid');
    }
    if (text == null) {
      throw new BuiltValueNullFieldError('FillerWord', 'text');
    }
  }

  @override
  FillerWord rebuild(void Function(FillerWordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FillerWordBuilder toBuilder() => new FillerWordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FillerWord && uuid == other.uuid && text == other.text;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, uuid.hashCode), text.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('FillerWord')
          ..add('uuid', uuid)
          ..add('text', text))
        .toString();
  }
}

class FillerWordBuilder implements Builder<FillerWord, FillerWordBuilder> {
  _$FillerWord _$v;

  String _uuid;
  String get uuid => _$this._uuid;
  set uuid(String uuid) => _$this._uuid = uuid;

  String _text;
  String get text => _$this._text;
  set text(String text) => _$this._text = text;

  FillerWordBuilder();

  FillerWordBuilder get _$this {
    if (_$v != null) {
      _uuid = _$v.uuid;
      _text = _$v.text;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FillerWord other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$FillerWord;
  }

  @override
  void update(void Function(FillerWordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$FillerWord build() {
    final _$result = _$v ?? new _$FillerWord._(uuid: uuid, text: text);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
