// GENERATED CODE - DO NOT MODIFY BY HAND

part of filler_words_models;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<FillerWordsState> _$fillerWordsStateSerializer =
    new _$FillerWordsStateSerializer();

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
              const FullType(BuiltList, const [const FullType(String)])),
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
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$FillerWordsState extends FillerWordsState {
  @override
  final BuiltList<String> fillerWords;

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

  ListBuilder<String> _fillerWords;
  ListBuilder<String> get fillerWords =>
      _$this._fillerWords ??= new ListBuilder<String>();
  set fillerWords(ListBuilder<String> fillerWords) =>
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

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
