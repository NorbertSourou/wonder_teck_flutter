import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignupController extends GetxController {
  // Champs de texte pour l'inscription
  var fullNameController = TextEditingController();
  var emailController = TextEditingController();
  var passwordController = TextEditingController();

  // Méthode pour la validation de l'inscription
  void signup() {
    final fullName = fullNameController.text.trim();
    final email = emailController.text.trim();
    final password = passwordController.text.trim();

    if (fullName.isEmpty || email.isEmpty || password.isEmpty) {
      Get.snackbar(
        "Error",
        "All fields are required!",
        backgroundColor: Colors.red,
        colorText: Colors.white,
      );
      return;
    }

    // Logique d'inscription (peut être relié à une API ou à une base de données plus tard)
    Get.snackbar(
      "Success",
      "Account created for $fullName",
      backgroundColor: Colors.green,
      colorText: Colors.white,
    );

    // Redirection vers l'écran d'accueil après inscription
    Get.offAllNamed('/home');
  }
}
