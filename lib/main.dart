import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:projet_test/presentation/chat/chat.screen.dart';
import 'package:projet_test/presentation/home/home.screen.dart';
import 'package:projet_test/presentation/onboarding/onboarding.screen.dart';
import 'package:projet_test/presentation/profile/profile.screen.dart';
import 'package:projet_test/presentation/signup/signup.screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/onboarding',
      getPages: [
        GetPage(name: '/onboarding', page: () => OnboardingScreen()),
        GetPage(name: '/signup', page: () => SignupScreen()),
        GetPage(name: '/home', page: () => HomeScreen()),
        GetPage(name: '/profile', page: () => ProfileScreen()),
        GetPage(name: '/chat', page: () => ChatScreen()),
      ],
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
    );
  }
}

