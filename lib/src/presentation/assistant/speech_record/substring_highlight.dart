import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

class SubstringHighlight extends StatelessWidget {
  const SubstringHighlight({
    @required String text,
    @required List<String> terms,
    this.textStyle,
    this.textStyleHighlight,
  })  : assert(text != null),
        assert(terms != null),
        _text = text,
        _terms = terms;

  final String _text;
  final List<String> _terms;
  final TextStyle textStyle;
  final TextStyle textStyleHighlight;

  @override
  Widget build(BuildContext context) {
    if (_terms.isEmpty) {
      return Text(_text, style: textStyle);
    } else {
      final List<String> matchingTerms = _terms.where((String term) => _text.toLowerCase().contains(term)).toList();

      if (matchingTerms.isEmpty) {
        return Text(_text, style: textStyle);
      }

      final String termMatch = matchingTerms.first;
      final String termLC = termMatch.toLowerCase();

      final List<InlineSpan> children = <InlineSpan>[];

      final List<String> spanList = _text.toLowerCase().split(termLC);
      int i = 0;
      // ignore: avoid_function_literals_in_foreach_calls
      spanList.forEach((String v) {
        if (v.isNotEmpty) {
          children.add(TextSpan(text: _text.substring(i, i + v.length), style: textStyle));
          i += v.length;
        }
        if (i < _text.length) {
          children.add(TextSpan(text: _text.substring(i, i + termMatch.length), style: textStyleHighlight));
          i += termMatch.length;
        }
      });
      return RichText(text: TextSpan(children: children));
    }
  }
}
