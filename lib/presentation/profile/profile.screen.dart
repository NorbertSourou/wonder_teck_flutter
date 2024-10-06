import 'package:flutter/material.dart';
import 'package:projet_test/domain/entities/dog_walker.dart';

class ProfileScreen extends StatelessWidget {
  final DogWalker dogWalker = DogWalker(
    name: "Alex Murray",
    imageUrl: 'assets/images/login_onboarding/dog_walker_1.png',
    hourlyRate: 5,
    distance: 10,
    rating: 4.4,
    walks: 450,
    age: 30,
    experienceMonths: 11,
    about: "Alex has loved dogs since childhood. He is currently a veterinary student. Visits the dog shelter we...",
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Top Image and Close Button
          Stack(
            children: [
              Container(
                height: 300,
                width: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(dogWalker.imageUrl),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30),
                  ),
                ),
              ),
              Positioned(
                top: 40,
                left: 20,
                child: IconButton(
                  icon: Icon(Icons.close, color: Colors.white),
                  onPressed: () {},
                ),
              ),
              Positioned(
                top: 40,
                right: 20,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.7),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Row(
                    children: [
                      Icon(Icons.verified, color: Colors.white, size: 18),
                      SizedBox(width: 5),
                      Text(
                        'Verified',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          // Dog Walker Details
          Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  dogWalker.name,
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 5),
                Row(
                  children: [
                    Text("\$${dogWalker.hourlyRate}/hr",
                        style: TextStyle(color: Colors.grey, fontSize: 16)),
                    SizedBox(width: 10),
                    Text("${dogWalker.distance} km",
                        style: TextStyle(color: Colors.grey, fontSize: 16)),
                    SizedBox(width: 10),
                    Row(
                      children: [
                        Icon(Icons.star, color: Colors.amber, size: 16),
                        SizedBox(width: 5),
                        Text(dogWalker.rating.toString(),
                            style: TextStyle(color: Colors.grey, fontSize: 16)),
                      ],
                    ),
                    SizedBox(width: 10),
                    Text("${dogWalker.walks} walks",
                        style: TextStyle(color: Colors.grey, fontSize: 16)),
                  ],
                ),
                Divider(height: 30, thickness: 1, color: Colors.grey[300]),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Text('About', style: TextStyle(fontSize: 16)),
                        Container(
                          margin: EdgeInsets.only(top: 5),
                          height: 3,
                          width: 60,
                          color: Colors.black,
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Text('Location', style: TextStyle(fontSize: 16, color: Colors.grey)),
                      ],
                    ),
                    Column(
                      children: [
                        Text('Reviews', style: TextStyle(fontSize: 16, color: Colors.grey)),
                      ],
                    ),
                  ],
                ),
                Divider(height: 30, thickness: 1, color: Colors.grey[300]),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Age", style: TextStyle(color: Colors.grey, fontSize: 16)),
                    Text("${dogWalker.age} years",
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Experience", style: TextStyle(color: Colors.grey, fontSize: 16)),
                    Text("${dogWalker.experienceMonths} months",
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                  ],
                ),
                SizedBox(height: 20),
                Text(
                  dogWalker.about,
                  style: TextStyle(color: Colors.grey, height: 1.4),
                ),
                SizedBox(height: 5),
                InkWell(
                  onTap: () {},
                  child: Text(
                    "Read more",
                    style: TextStyle(color: Colors.orange, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(height: 20),
                Center(
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 100, vertical: 15),
                    ),
                    child: Text(
                      "Recruiter",
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
class DogWalker {
  final String name;
  final String imageUrl;
  final double hourlyRate;
  final double distance;
  final double rating;
  final int walks;
  final int age;
  final int experienceMonths;
  final String about;

  DogWalker({
    required this.name,
    required this.imageUrl,
    required this.hourlyRate,
    required this.distance,
    required this.rating,
    required this.walks,
    required this.age,
    required this.experienceMonths,
    required this.about,
  });
}

