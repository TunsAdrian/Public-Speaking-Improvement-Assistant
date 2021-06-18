import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/cupertino.dart';
import 'package:meta/meta.dart';

class SpeechAssistantApi {
  const SpeechAssistantApi({@required Connectivity connectivity})
      : assert(connectivity != null),
        _connectivity = connectivity;

  final Connectivity _connectivity;

  Stream<bool> listenInternetStatus() {
    return _connectivity //
        .onConnectivityChanged
        .map((ConnectivityResult result) => result != ConnectivityResult.none);
  }
}
