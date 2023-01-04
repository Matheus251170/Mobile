import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:greengrocer/src/models/user_model.dart';
import 'package:greengrocer/src/pages/auth/repository/auth_repository.dart';
import 'package:greengrocer/src/pages/auth/repository/navigation_service.dart';
import 'package:greengrocer/src/pages/auth/result/auth_result.dart';
import 'package:greengrocer/src/pages/pages_route/app_pages.dart';
import 'package:greengrocer/src/services/utils_services.dart';

class AuthController extends GetxController {
  RxBool isLoading = false.obs;
  final authRepository = AuthRepository();
  final UtilsServices utils = UtilsServices();
  UserModel user = UserModel();

  Future<void> signIn({required String email, required String password}) async {
    isLoading.value = true;

    AuthResult result =
        await authRepository.signIn(email: email, password: password);

    isLoading.value = false;

    result.when(success: (user) {
      this.user = user;

      Get.offAllNamed(PagesRoutes.baseRoute);
    }, error: (message) {
      utils.showToast(
          message: message,
          isError: true,
          context: NavigationService.navigatorKey.currentContext);
    });
  }

  Future<void> signUp(
      {required String email,
      required String password,
      required String name,
      required String cpf,
      required String cell}) async {
    isLoading.value = true;

    await Future.delayed(
      const Duration(seconds: 2),
    );

    isLoading.value = false;
  }
}
