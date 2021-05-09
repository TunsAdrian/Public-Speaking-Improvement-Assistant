import 'package:flutter/material.dart';
import 'package:public_speaking_assistant/src/presentation/routes.dart';

class AssistantHome extends StatelessWidget {
  const AssistantHome({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Public Speaking Assistant'),
        centerTitle: true,
      ),
      body: Center(
        child: IntrinsicWidth(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, AppRoutes.speech_record);
                },
                child: const Text('Start Recording'),
              ),
              const SizedBox(height: 36.0),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, AppRoutes.set_filler_words);
                },
                child: const Text('Set Words Database'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
