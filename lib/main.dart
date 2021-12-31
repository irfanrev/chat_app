import 'package:chat_app/app/utils/error_screen.dart';
import 'package:chat_app/app/utils/loading_screen.dart';
import 'package:chat_app/app/utils/splash_screen.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'app/routes/app_pages.dart';
import 'package:firebase_core/firebase_core.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'ChatApp',
      initialRoute: Routes.HOME,
    );
  }
}
