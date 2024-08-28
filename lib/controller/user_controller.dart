import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:user_login/model/user_model.dart';
import 'package:user_login/services/api.dart';

class UserController extends GetxController {
  final Api _apiService = Api();

  var isLoading = false.obs;

  Future<void> user() async {
    isLoading.value = true;
    try {
      final data = await _apiService.user();
      final List user = userFromJson(data);

      debugPrint(user.toString());

      // debugPrint(data.toString());
      // Get.offAllNamed('/home');
    } catch (e) {
      // Get.snackbar('Error', e.toString());
      debugPrint('Error');
    } finally {
      isLoading.value = false;
    }
  }
}
