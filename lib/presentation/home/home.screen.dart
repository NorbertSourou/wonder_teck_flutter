import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:projet_test/domain/entities/dog_walker.dart';
import 'package:projet_test/infrastructure/widgets/textField.dart';
import 'package:projet_test/presentation/home/controllers/home.controller.dart';

void main() {
  runApp(HomeScreen());
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final controller = Get.put(HomeController());
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xFFF7F7F7),
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Text('Home', style: TextStyle(color: Colors.black)),
        ),
        body: SingleChildScrollView(
            child: Padding(
          padding:
              EdgeInsets.symmetric(vertical: 0, horizontal: Get.width * 0.05),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  BookWalkButton(),
                ],
              ),
              StyledTextField(
                labelText: "Kiyv, Ukraine",
                // hintText: "Cristian",
                prefixIcon: Icons.location_pin,
                controller: controller.searchController,
              ),
              // Near You Section
              SectionHeader(title: "Near you"),
              Container(
                height: Get.height * 0.3,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    DogWalkerCard(
                      name: "Mason York",
                      distance: "7 km from you",
                      price: "\$3/h",
                      rating: 4.1,
                      image: 'assets/images/home/near_1.png',
                      walker: controller.nearbyWalkers[0],
                    ),
                    DogWalkerCard(
                      name: "Mark Greene",
                      distance: "14 km from you",
                      price: "\$3/h",
                      rating: 4.0,
                      image: 'assets/images/home/near_1.png',
                      walker: controller.nearbyWalkers[0],
                    ),
                  ],
                ),
              ),

              // Suggested Section
              SectionHeader(title: "Suggested"),
              Container(
                height: Get.height * 0.3,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    DogWalkerCard(
                      name: "Mark Greene",
                      distance: "2 km from you",
                      price: "\$5/h",
                      rating: 4.2,
                      image: 'assets/images/home/near_1.png',
                      walker: controller.nearbyWalkers[0],
                    ),
                    DogWalkerCard(
                      name: "Trina Kain",
                      distance: "4 km from you",
                      price: "\$4/h",
                      rating: 4.0,
                      image: 'assets/images/home/near_1.png',
                      walker: controller.nearbyWalkers[0],
                    ),
                  ],
                ),
              ),
            ],
          ),
        )),
      ),
    );
  }
}


// Book Walk Button
class BookWalkButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.orange,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      ),
      child: Text("+ Book a walk", style: TextStyle(color: Colors.white)),
    );
  }
}

// Section Header Widget
class SectionHeader extends StatelessWidget {
  final String title;
  const SectionHeader({required this.title});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(
              fontSize: Get.width * 0.08,
              fontWeight: FontWeight.bold,
              color: Colors.black),
        ),
        Text(
          "View all",
          style: TextStyle(fontSize: Get.width * 0.035, decoration: TextDecoration.underline),
        ),
      ],
    );
  }
}

// Dog Walker Card Widget
class DogWalkerCard extends StatelessWidget {
  final String name;
  final String distance;
  final String price;
  final double rating;
  final String image;
  final DogWalker walker;

  const DogWalkerCard({
    required this.name,
    required this.distance,
    required this.price,
    required this.rating,
    required this.image,
    required this.walker,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.toNamed('/profile', arguments: walker);
      },
      child: Container(
        margin: EdgeInsets.all(10),
        width: Get.width * 0.5,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.1),
              spreadRadius: 2,
              blurRadius: 5,
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.vertical(top: Radius.circular(15)),
              child: Image.asset(
                image,
                fit: BoxFit.fill,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(name,
                          style:
                              TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                      Text(distance,
                          style: TextStyle(fontSize: 12, color: Colors.grey)),
                    ],
                  ),
                  Container(
                    width: Get.width * 0.12,
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(7),
                    ),
                    child: Text(
                      price.toString(),
                      style: TextStyle(color: Colors.white, fontSize: 12),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
