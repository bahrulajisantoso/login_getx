import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:user_login/controller/user_controller.dart';
import 'package:user_login/views/home.dart';
import 'package:user_login/views/login.dart';
import 'package:user_login/services/api.dart';

Future<void> main() async {
  // WidgetsFlutterBinding.ensureInitialized();

  // final UserController userController = Get.put(UserController());

  // await userController.getUser();

  // Api api = Api();
  // var data = await api.user();
  // debugPrint(data.toString());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Login Demo',
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: () => Login()),
        GetPage(name: '/home', page: () => const Home()),
      ],
    );
  }
}
