import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:projet_test/infrastructure/widgets/gradient_button.dart';
import 'package:projet_test/infrastructure/widgets/textField.dart';
import 'package:projet_test/presentation/signup/controllers/signup.controller.dart';

class SignupScreen extends StatelessWidget {
  final controller = Get.put(SignupController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Let's start here",
              style: TextStyle(fontSize: Get.width *0.1, fontWeight: FontWeight.bold),
            ),
            Text(
              'Fill in your details to begin',
              style: TextStyle(color: Colors.grey, fontSize: Get.width *0.05),
            ),
            SizedBox(height: 30),
            StyledTextField(
              labelText: "Fullname",
              // hintText: "Cristian",
              prefixIcon: Icons.person,
              controller: controller.fullNameController,
            ),
            StyledTextField(
              labelText: "E-mail",
              // hintText: "Cristiandeb13@gmail.com",
              prefixIcon: Icons.email,
              controller: controller.emailController,
            ),
            StyledTextField(
              labelText: "Password",
              // hintText: "••••••••••••",
              isPassword: true,
              prefixIcon: Icons.lock,
              controller: controller.passwordController,
            ),
            SizedBox(height: Get.height * 0.03,),
            GradientButton(
              text: "Sign Up",
              onPressed: () {
                controller.signup();
              },
              gradientColors: [
                Color(0xFFFE904B),
                Color(0xFFFB724C),
              ],
            ),
            Spacer(),


            Padding(padding: EdgeInsets.symmetric(vertical: 0, horizontal: Get.width *0.15),
            child: Column(
              children: [
                RichText(
                  text: TextSpan(
                    text: "By signing in, I agree with ",
                    style: TextStyle(color: Colors.grey, fontSize: Get.width * 0.03),
                    children: [
                      TextSpan(
                        text: "Terms of Use",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold, fontSize: Get.width * 0.03),
                      ),
                    ],
                  ),
                ),
                RichText(
                  text: TextSpan(
                      text: " and ",
                      style: TextStyle(color: Colors.grey, fontSize: Get.width * 0.03),
                      children: [
                        TextSpan(
                          text: "Privacy Policy",
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold, fontSize: Get.width * 0.03),
                        ),
                      ]
                  ),
                ),

                SizedBox(height: Get.height * 0.05,),
              ],
            ),)
          ],
        ),
      ),
    );
  }
}
