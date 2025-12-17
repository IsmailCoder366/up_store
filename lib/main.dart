import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get_storage/get_storage.dart';
import 'package:up_store/data/repository/authenitication_repository.dart';
import 'package:up_store/firebase_options.dart';

import 'my_app.dart' show MyApp;

void main() async{

    /// widgets flutter binding
  final widgetsBinding = WidgetsFlutterBinding.ensureInitialized();


  /// flutter native splash
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  /// get Storage initialization
  await GetStorage.init();

  /// firebase initializtion
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  ).then((value){
    Get.put(AuthenticationRepository());
  });




    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(const MyApp());
}
