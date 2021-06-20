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
        body: Form(
          child: FillerWordsContainer(
            builder: (BuildContext context, List<String> fillerWords) {
              return Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 16.0),
                    child: Column(
                      children: <Widget>[
                        ElevatedButton(
                          child: Text(_showTextForm ? 'Add This Word' : 'Add New Filler Word'),
                          onPressed: () {
                            setState(() {
                              if (Form.of(context).validate()) {
                                if (_showTextForm) {
                                  StoreProvider.of<AppState>(context)
                                      .dispatch(AddFillerWord(fillerWord: _newFillerWord.text.trim()));
                                }
                                _showTextForm = !_showTextForm;
                                _newFillerWord.clear();
                              }
                            });
                          },
                        ),
                        Visibility(
                          visible: _showTextForm,
                          child: TextFormField(
                            controller: _newFillerWord,
                            autofocus: true,
                            decoration: const InputDecoration(
                              hintText: 'Add a new filler word',
                            ),
                            validator: (String value) {
                              if (value.isEmpty || value.trim().isEmpty) {
                                return 'Please enter a valid word';
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
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: ListView.builder(
                      itemCount: fillerWords.length,
                      itemBuilder: (BuildContext context, int index) {
                        final String fillerWord = fillerWords[index];

                        return Card(
                          child: ListTile(
                            title: Text(fillerWord),
                            trailing: IconButton(
                              icon: const Icon(Icons.highlight_remove_rounded),
                              onPressed: () {
                                final SnackBar snackBar = SnackBar(
                                  margin: const EdgeInsets.fromLTRB(8.0, 0, 8.0, 8.0),
                                  behavior: SnackBarBehavior.floating,
                                  content: Text('\"$fillerWord\" removed'),
                                  action: SnackBarAction(
                                    label: 'Undo',
                                    onPressed: () {
                                      // undo the change
                                      StoreProvider.of<AppState>(context)
                                          .dispatch(AddFillerWord(fillerWord: fillerWord));
                                    },
                                  ),
                                );
                                ScaffoldMessenger.of(context).showSnackBar(snackBar);
                                StoreProvider.of<AppState>(context).dispatch(RemoveFillerWord(fillerWord: fillerWord));
                              },
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
