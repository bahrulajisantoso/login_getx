import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:user_login/controller/user_controller.dart';
import 'package:user_login/login.dart';
import 'package:user_login/services/api.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // final UserController userController = Get.put(UserController());

  // await userController.user();

  Api api = Api();
  var data = await api.user();
  debugPrint(data.toString());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Login(),
    );
  }
}
