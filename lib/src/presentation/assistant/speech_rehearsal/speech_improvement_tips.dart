import 'package:flutter/material.dart';

class PacingTip extends StatelessWidget {
  const PacingTip({Key key, @required this.wordPerMinute}) : super(key: key);

  final int wordPerMinute;

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: 'The ideal rate for a speech is approximately between 140 and 160 words per minute.\nYou should try to ',
        style: TextStyle(
          color: Theme.of(context).textTheme.bodyText2.color,
          fontSize: 16.0,
        ),
        children: <TextSpan>[
          if (wordPerMinute < 140)
            const TextSpan(text: 'to speak a little faster.')
          else if (wordPerMinute > 160)
            const TextSpan(text: 'to slow down a bit.')
          else
            const TextSpan(text: 'keep up the pace in this interval.')
        ],
      ),
    );
  }
}

class ConfidenceTip extends StatelessWidget {
  const ConfidenceTip({Key key, @required this.isComputed}) : super(key: key);

  final bool isComputed;

  @override
  Widget build(BuildContext context) {
    return isComputed
        ? const Text(
            'The confidence value is an average of the estimate for how good were the words recognized.\nA clearer '
            'pronunciation, using preferably a headset microphone, will increase this value.')
        : const Text(
            'The confidence value could not be computed. Try to speak longer or to make a pause before ending a speech.');
  }
}

class FillerWordsTip extends StatelessWidget {
  const FillerWordsTip({Key key, @required this.fillerWordPerMinutes}) : super(key: key);

  final double fillerWordPerMinutes;

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: 'The ideal filler word usage is 1 per minute, while the average is 4 per minute.\nYou should try to ',
        style: TextStyle(
          color: Theme.of(context).textTheme.bodyText2.color,
          fontSize: 16.0,
        ),
        children: <TextSpan>[
          if (fillerWordPerMinutes >= 1)
            const TextSpan(text: 'keep up the good work, having an average of 1 filler word per minute or less.')
          else if (fillerWordPerMinutes >= 0.25 && fillerWordPerMinutes < 1)
            const TextSpan(
                text: 'slightly reduce the filler words usage, having an average between 2 and 4 filler words'
                    ' per minute.')
          else
            const TextSpan(text: 'reduce the usage of filler words in your speech.')
        ],
      ),
    );
  }
}
