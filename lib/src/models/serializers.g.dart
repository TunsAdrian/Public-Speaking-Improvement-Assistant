// GENERATED CODE - DO NOT MODIFY BY HAND

part of serializers;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializers _$serializers = (new Serializers().toBuilder()
      ..add(AppState.serializer)
      ..add(AppUser.serializer)
      ..add(AuthState.serializer)
      ..add(FillerWord.serializer)
      ..add(FillerWordsState.serializer)
      ..add(RegistrationInfo.serializer)
      ..add(SpeechAssistantState.serializer)
      ..add(SpeechResult.serializer)
      ..add(SpeechResultState.serializer)
      ..add(SpeechWord.serializer)
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(FillerWord)]),
          () => new ListBuilder<FillerWord>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(SpeechResult)]),
          () => new ListBuilder<SpeechResult>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(SpeechResult)]),
          () => new ListBuilder<SpeechResult>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(SpeechWord)]),
          () => new ListBuilder<SpeechWord>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(SpeechWord)]),
          () => new ListBuilder<SpeechWord>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(SpeechWord)]),
          () => new ListBuilder<SpeechWord>()))
    .build();

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
