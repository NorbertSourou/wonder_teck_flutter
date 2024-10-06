class DogWalker {
  final String name;
  final double rate;
  final double distance;
  final String imagePath;
  final String about;

  DogWalker({
    required this.name,
    required this.rate,
    required this.distance,
    required this.imagePath,
    required this.about,
  });

  DogWalker.empty()
      : name = '',
        rate = 0.0,
        distance = 0.0,
        imagePath = '',
        about = '';

  @override
  String toString() {
    return 'DogWalker{name: $name, rate: $rate, distance: $distance, imagePath: $imagePath, about: $about}';
  }
}
