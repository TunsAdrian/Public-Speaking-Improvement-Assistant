import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:hive/hive.dart';
import 'package:public_speaking_assistant/src/actions/index.dart';
import 'package:public_speaking_assistant/src/data/auth_api.dart';
import 'package:public_speaking_assistant/src/data/filler_words_api.dart';
import 'package:public_speaking_assistant/src/data/speech_assistant_api.dart';
import 'package:public_speaking_assistant/src/data/speech_result_api.dart';
import 'package:public_speaking_assistant/src/epics/app_epics.dart';
import 'package:public_speaking_assistant/src/models/index.dart';
import 'package:public_speaking_assistant/src/models/hive_models/hiveSpeechResult.dart';
import 'package:public_speaking_assistant/src/reducer/reducer.dart';
import 'package:redux/redux.dart';
import 'package:redux_epics/redux_epics.dart';
import 'package:sound_stream/sound_stream.dart';
import 'package:uuid/uuid.dart';

Future<Store<AppState>> init() async {
  await Firebase.initializeApp();

  final FirebaseAuth auth = FirebaseAuth.instance;
  final FirebaseFirestore firestore = FirebaseFirestore.instance;
  final Box<String> fillerWordsBox = await Hive.openBox<String>('fillerWords');
  final Box<HiveSpeechResult> speechResultsBox = await Hive.openBox<HiveSpeechResult>('speechResults');
  final Uuid uuidInstance = Uuid();
  final Connectivity connectivity = Connectivity();
  final RecorderStream recorderStream = RecorderStream();

  final AuthApi authApi = AuthApi(
    auth: auth,
    firestore: firestore,
    google: GoogleSignIn(),
  );

  final FillerWordsApi fillerWordsApi = FillerWordsApi(
    fillerWordsBox: fillerWordsBox,
  );

  final SpeechResultApi speechResultApi = SpeechResultApi(
    speechResultsBox: speechResultsBox,
    uuidInstance: uuidInstance,
  );

  final SpeechAssistantApi speechAssistantApi = SpeechAssistantApi(
    connectivity: connectivity,
    recorderStream: recorderStream,
  );

  final AppEpics epic = AppEpics(
    authApi: authApi,
    fillerWordsApi: fillerWordsApi,
    speechResultApi: speechResultApi,
    speechAssistantApi: speechAssistantApi,
  );

  return Store<AppState>(
    reducer,
    initialState: AppState.initialState(),
    middleware: <Middleware<AppState>>[
      EpicMiddleware<AppState>(epic.epics),
    ],
  )
    ..dispatch(const GetCurrentUser())
    ..dispatch(const GetSpeechResultList())
    ..dispatch(const GetSyncedSpeechResults());
}
