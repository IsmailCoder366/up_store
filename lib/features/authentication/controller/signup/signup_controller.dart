import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class SignUpController extends GetxController{
  static SignUpController get instance => Get.find();

  /// variables
  final signUpFormKey = GlobalKey<FormState>();


  /// Function to register the user with email and password
  Future<void> registerUser() async{
    try{

      /// Form Validation
      if(!signUpFormKey.currentState!.validate()){
        return;
      }
    }catch(e){

    }
  }
}