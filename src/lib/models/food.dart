// food item
class Food {
  final String name; // cheese burger
  final String description; // a bureger full of cheese
  final String image; // spider env
  final double price; // 4.99
  final FoodCategory category; // burger
  List<Addon> availableAddons; // [extra cheese, sauce]

  Food({
    required this.availableAddons,
    required this.category,
    required this.image,
    required this.description,
    required this.name,
    required this.price,
  });
}

// food categorys
enum FoodCategory {
  burgers,
  salads,
  sides,
  desserts,
  drinks,
}

// class addons
class Addon {
  String name;
  double price;

  Addon({
    required this.name,
    required this.price,
  });
}
