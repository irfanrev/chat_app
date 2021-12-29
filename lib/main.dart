import 'package:chat_app/app/utils/error_screen.dart';
import 'package:chat_app/app/utils/loading_screen.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'app/routes/app_pages.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: _initialization,
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return ErrorScreen();
          }

          if (snapshot.connectionState == ConnectionState.done) {
            return GetMaterialApp(
              title: 'ChatApp',
              initialRoute: Routes.HOME,
              getPages: AppPages.routes,
            );
          }
          return LoadingScreen();
        });
  }
}
