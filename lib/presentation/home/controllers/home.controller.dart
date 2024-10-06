import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:projet_test/domain/entities/dog_walker.dart';

class HomeController extends GetxController {
  // Liste des dog walkers près de chez l'utilisateur

  var searchController = TextEditingController();

  var nearbyWalkers = <DogWalker>[
    DogWalker(
      name: "John Doe",
      rate: 20,
      distance: 2.5,
      imagePath: "assets/images/login_onboarding/dog_walker_1.png",
      about: "Experienced dog walker with a passion for animals.",
    ),
    DogWalker(
      name: "Jane Smith",
      rate: 18,
      distance: 3.0,
      imagePath: "assets/images/login_onboarding/dog_walker_2.png",
      about: "Friendly and reliable dog walker. Loves all breeds.",
    ),
    // Ajouter d'autres dog walkers...
  ];

  // Liste des suggestions
  var suggestedWalkers = <DogWalker>[
    DogWalker(
      name: "Alex Johnson",
      rate: 22,
      distance: 1.2,
      imagePath: "assets/images/login_onboarding/dog_walker_3.png",
      about: "Professional dog walker with 5 years of experience.",
    ),
    DogWalker(
      name: "Chris Lee",
      rate: 15,
      distance: 4.1,
      imagePath: "assets/images/login_onboarding/dog_walker_4.png",
      about: "Enthusiastic dog lover and walker available anytime.",
    ),
    // Ajouter d'autres dog walkers...
  ];
}
