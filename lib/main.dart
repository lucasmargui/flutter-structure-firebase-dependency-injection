import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crud_1/firebase_options.dart';
import 'package:flutter/material.dart';

import 'app.dart';
import 'locator/locator.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  setupDependencies();
  runApp(const App());
}
