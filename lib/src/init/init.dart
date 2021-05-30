import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:hive/hive.dart';
import 'package:public_speaking_assistant/src/actions/index.dart';
import 'package:public_speaking_assistant/src/data/auth_api.dart';
import 'package:public_speaking_assistant/src/data/filler_words_api.dart';
import 'package:public_speaking_assistant/src/data/speech_result_api.dart';
import 'package:public_speaking_assistant/src/epics/app_epics.dart';
import 'package:public_speaking_assistant/src/models/index.dart';
import 'package:public_speaking_assistant/src/models/speech_result/hive_model/hiveSpeechResult.dart';
import 'package:public_speaking_assistant/src/reducer/reducer.dart';
import 'package:redux/redux.dart';
import 'package:redux_epics/redux_epics.dart';
import 'package:uuid/uuid.dart';

Future<Store<AppState>> init() async {
  await Firebase.initializeApp();

  final FirebaseAuth auth = FirebaseAuth.instance;
  final FirebaseFirestore firestore = FirebaseFirestore.instance;
  final Box<String> fillerWordsBox = await Hive.openBox<String>('fillerWords');
  final Box<HiveSpeechResult> speechResultsBox = await Hive.openBox<HiveSpeechResult>('speechResults');
  final Uuid uuidInstance = Uuid();

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

  final AppEpics epic = AppEpics(
    authApi: authApi,
    fillerWordsApi: fillerWordsApi,
    speechResultApi: speechResultApi,
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
