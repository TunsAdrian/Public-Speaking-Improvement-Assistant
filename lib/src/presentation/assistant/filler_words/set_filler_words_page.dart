import 'package:flutter/material.dart';
import 'package:flutter_emoji/flutter_emoji.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:public_speaking_assistant/src/actions/filler_words/index.dart';
import 'package:public_speaking_assistant/src/containers/filler_words/index.dart';
import 'package:public_speaking_assistant/src/models/index.dart';

class SetFillerWords extends StatefulWidget {
  const SetFillerWords({Key key}) : super(key: key);

  @override
  _SetFillerWordsState createState() => _SetFillerWordsState();
}

class _SetFillerWordsState extends State<SetFillerWords> {
  final TextEditingController _newFillerWord = TextEditingController();
  final EmojiParser _emojiParser = EmojiParser();
  bool _showTextForm = false;

  @override
  void initState() {
    super.initState();

    // get all the words when opening the page
    StoreProvider.of<AppState>(context, listen: false).dispatch(const GetFillerWords());
  }

  @override
  Widget build(BuildContext context) {
    return ScaffoldMessenger(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Set Filler Words'),
        ),
        body: SafeArea(
          child: Form(
            child: FillerWordsContainer(
              builder: (BuildContext context, List<FillerWord> fillerWords) {
                return SingleChildScrollView(
                  physics: const ScrollPhysics(),
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                        child: Column(
                          children: <Widget>[
                            ElevatedButton(
                              child: Text(_showTextForm ? 'Add This Word' : 'Add New Filler Word'),
                              onPressed: () {
                                setState(() {
                                  if (Form.of(context).validate()) {
                                    if (_showTextForm) {
                                      StoreProvider.of<AppState>(context)
                                          .dispatch(AddFillerWord(fillerWordText: _newFillerWord.text.trim()));
                                    }
                                    _showTextForm = !_showTextForm;
                                    _newFillerWord.clear();
                                  }
                                });
                              },
                            ),
                            Visibility(
                              visible: _showTextForm,
                              child: FillerWordsNamesContainer(
                                builder: (BuildContext context, List<String> fillerWordsNames) {
                                  return TextFormField(
                                    controller: _newFillerWord,
                                    autofocus: true,
                                    decoration: InputDecoration(
                                      hintText: 'Add a new filler word',
                                      suffixIcon: IconButton(
                                        padding: const EdgeInsets.only(right: 8),
                                        icon: const Icon(Icons.cancel_outlined),
                                        onPressed: () {
                                          setState(() {
                                            _showTextForm = !_showTextForm;
                                            _newFillerWord.clear();
                                          });
                                        },
                                      ),
                                    ),
                                    validator: (String value) {
                                      if (value.isEmpty || value.trim().isEmpty) {
                                        return 'Please enter a valid word';
                                      } else if (fillerWordsNames.contains(value.trim().toLowerCase())) {
                                        return 'This word already exists';
                                      } else {
                                        for (final int rune in value.runes) {
                                          final String character = String.fromCharCode(rune);
                                          if (_emojiParser.hasEmoji(character)) {
                                            return 'No emoji allowed';
                                          }
                                        }
                                      }

                                      return null;
                                    },
                                  );
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                      ListView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: fillerWords.length,
                        itemBuilder: (BuildContext context, int index) {
                          final String fillerWordUuid = fillerWords[index].uuid;
                          final String fillerWordText = fillerWords[index].text;

                          return Card(
                            child: ListTile(
                              title: Text(fillerWordText),
                              trailing: IconButton(
                                icon: const Icon(Icons.highlight_remove_rounded),
                                onPressed: () {
                                  final SnackBar snackBar = SnackBar(
                                    margin: const EdgeInsets.fromLTRB(8.0, 0, 8.0, 8.0),
                                    behavior: SnackBarBehavior.floating,
                                    content: Text('\"$fillerWordText\" removed'),
                                    action: SnackBarAction(
                                      label: 'Undo',
                                      onPressed: () {
                                        // undo the change
                                        StoreProvider.of<AppState>(context)
                                            .dispatch(AddFillerWord(fillerWordText: fillerWordText));
                                      },
                                    ),
                                  );
                                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                                  StoreProvider.of<AppState>(context)
                                      .dispatch(RemoveFillerWord(fillerWordUuid: fillerWordUuid));
                                },
                              ),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
