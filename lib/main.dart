import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:user_login/views/home.dart';
import 'package:user_login/views/login.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/home',
      getPages: [
        GetPage(name: '/login', page: () => Login()),
        GetPage(name: '/home', page: () => const Home()),
      ],
    );
  }
}
