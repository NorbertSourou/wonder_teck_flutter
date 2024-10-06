import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:projet_test/infrastructure/widgets/gradient_button.dart';

class OnboardingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      body: Stack(
        children: [
          // Image de fond
          Positioned.fill(
            bottom: Get.height * 0.2,
            child: Image.asset(
              'assets/images/login_onboarding/dog_walking.png',
              fit: BoxFit.cover,
            ),
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 50.0, left: 20.0),
                child: Row(
                  children: [
                    Image.asset(
                      'assets/images/login_onboarding/woo_dog.png', // Chemin vers ton logo WooDog
                      width: 100,
                    ),
                  ],
                ),
              ),
            ],
          ),
          Positioned.fill(
              top: Get.height * 0.7,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text(
                        "Too tired to walk your dog?",
                        style: TextStyle(
                          fontSize: 28,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "Let’s help you!",
                        style: TextStyle(
                          fontSize: 28,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: GradientButton(
                      text: "Join our community",
                      onPressed: () {
                        Get!.toNamed("/signup");
                      },
                      gradientColors: [
                        Color(0xFFFE904B),
                        Color(0xFFFB724C),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20.0),
                    child: TextButton(
                      onPressed: () {
                        Get!.toNamed('/signup');
                      },
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "Already a member? ",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 16),
                            ),
                            TextSpan(
                              text: "Sign in",
                              style: TextStyle(
                                color: Color(
                                    0xFFF78361), // Couleur orange pour "Sign in"
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ))
        ],
      ),
    );
  }
}
