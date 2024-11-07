import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery_app/models/cart_item.dart';
import 'package:food_delivery_app/models/food.dart';
import 'package:intl/intl.dart';

class Restaurant extends ChangeNotifier {
  final List<Food> _menu = [
    // burgers
    Food(
      availableAddons: [
        Addon(name: "Cheese", price: 0.33),
        Addon(name: "Tomato", price: 0.33),
        Addon(name: "Bacon", price: 0.49),
      ],
      category: FoodCategory.burgers,
      image: "assets/images/burger/cheeseBurger.jpg",
      description:
          "A juicy beef with melted chedar, lettuce, tomato, a hiont of onion pcikle.",
      name: "Classic Cheeseburger",
      price: 0.99,
    ),
    Food(
      availableAddons: [
        Addon(name: "Cheese", price: 0.33),
        Addon(name: "Tomato", price: 0.33),
        Addon(name: "Bacon", price: 0.49),
      ],
      category: FoodCategory.burgers,
      image: "assets/images/burger/burgerBacon.jpg",
      description:
          "Indulge in the succulent flavors of a beefy delight with gooey melted cheddar, fresh lettuce, ripe tomato, and a touch of tangy onion pickle.",
      name: "Bacon Burger",
      price: 1.49,
    ),
    Food(
      availableAddons: [
        Addon(name: "Cheese", price: 0.33),
        Addon(name: "Tomato", price: 0.33),
        Addon(name: "Bacon", price: 0.49),
      ],
      category: FoodCategory.burgers,
      image: "assets/images/burger/steakBurger.jpg",
      description:
          "Savor the smoky goodness of a Bacon Burger featuring a juicy beef patty topped with crispy bacon strips, melted cheese, fresh lettuce, ripe tomatoes, and a dollop of tangy barbecue sauce.",
      name: "Steak Burger",
      price: 1.99,
    ),
    Food(
      availableAddons: [
        Addon(name: "Cheese", price: 0.33),
        Addon(name: "Tomato", price: 0.33),
        Addon(name: "Bacon", price: 0.49),
      ],
      category: FoodCategory.burgers,
      image: "assets/images/burger/doubleCheeseBurger.jpg",
      description:
          "Indulge in our Double Cheeseburger: two juicy beef patties with melted cheese, fresh lettuce, ripe tomatoes, and savory special sauce, served on soft, toasted buns.",
      name: "Double Cheeseburger",
      price: 2.99,
    ),
    // salads
    Food(
      availableAddons: [
        Addon(name: "Tomato", price: 0.33),
        Addon(name: "Cucumber", price: 0.33),
        Addon(name: "Cabbage", price: 0.33),
      ],
      category: FoodCategory.salads,
      image: "assets/images/salads/tomatoCucumberCabbageSalad.jpg",
      description:
          "Savor a vibrant Tomato, Cucumber, and Cabbage Salad with a zesty vinaigrette, ideal for a light, healthy meal or a refreshing side.",
      name: "Tomato, Cucumber, and Cabbage Salad",
      price: 1.39,
    ),
    // sides
    Food(
      availableAddons: [
        Addon(name: "Salt", price: 0.00),
      ],
      category: FoodCategory.sides,
      image: "assets/images/sides/bread.jpg",
      description:
          "Whether a crusty baguette, fluffy brioche, or hearty whole wheat loaf, each bite celebrates tradition and craftsmanship, inviting you to savor good food and good company.",
      name: "Freshly bread",
      price: 0.39,
    ),
    Food(
      availableAddons: [
        Addon(name: "Bacon", price: 0.49),
        Addon(name: "Pasta", price: 0.49),
        Addon(name: "Sauce", price: 0.33),
      ],
      category: FoodCategory.sides,
      image: "assets/images/sides/carbonara.jpg",
      description:
          "Savor the rich delight of Carbonara: al dente spaghetti coated in a creamy sauce of eggs, cheese, pancetta, and black pepper, a symphony of savory flavors in every bite.",
      name: "Carbonara",
      price: 3.99,
    ),
    Food(
      availableAddons: [
        Addon(name: "Bacon", price: 0.49),
        Addon(name: "Pasta", price: 0.49),
        Addon(name: "Sauce", price: 0.33)
      ],
      category: FoodCategory.sides,
      image: "assets/images/sides/fingerPastaSauce.jpg",
      description:
          "Al dente spaghetti with a luscious sauce of eggs, cheese, pancetta, and black pepper, offering a rich and satisfying blend of savory flavors.",
      name: "Finger Pasta with Sauce",
      price: 3.99,
    ),
    Food(
      availableAddons: [
        Addon(name: "Shrimps", price: 0.99),
        Addon(name: "Sauce", price: 0.33)
      ],
      category: FoodCategory.sides,
      image: "assets/images/sides/shrimpLemon.jpg",
      description:
          "A delightful mix of seafood and citrus that highlights shrimp's natural sweetness and zesty lemon for a refreshing dish.",
      name: "Shrimp with Lemon",
      price: 4.99,
    ),
    // drinks
    Food(
      availableAddons: [
        Addon(name: "Tube", price: 0.00),
      ],
      category: FoodCategory.drinks,
      image: "assets/images/drinks/juiceAloeApple.jpg",
      description:
          "A harmonious mix of crisp apple and soothing aloe vera, offering both delicious flavor and health benefits in every sip.",
      name: "Juice with Aloe Vera & Apple",
      price: 1.49,
    ),
    // Food(
    //   availableAddons: [
    //     Addon(name: "Tube", price: 0.00),
    //   ],
    //   category: FoodCategory.drinks,
    //   image: "assets/images/drinks/juiceSummerMix.jpg",
    //   description:
    //       "A tantalizing blend of kiwi, peach, and grape captures sun-kissed flavors in every sip, transporting you to a blissful tropical paradise with each glass.",
    //   name: "Juice 'Summer Mix'",
    //   price: 1.49,
    // ),
    // Food(
    //   availableAddons: [
    //     Addon(name: "Tube", price: 0.00),
    //   ],
    //   category: FoodCategory.drinks,
    //   image: "assets/images/drinks/juiceTropicalMix.jpg",
    //   description:
    //       "Experience a tropical getaway with JuiceTropicalMix: kiwi, strawberry, pineapple, and mango unite in a harmonious blend that awakens your senses with sun-kissed fruit flavors.",
    //   name: "Juice 'Tropical Mix'",
    //   price: 1.49,
    // ),
    Food(
      availableAddons: [
        Addon(name: "Tube", price: 0.00),
      ],
      category: FoodCategory.drinks,
      image: "assets/images/drinks/orangeGrapefruitJuice.jpg",
      description:
          "Refreshing and tangy juice blend bursting with the zesty flavors of oranges and grapefruits, a perfect pick-me-up for any time of the day.",
      name: "Juice 'Citrus Strawberry Freshness'",
      price: 1.49,
    ),
    // dessetrs
    Food(
      availableAddons: [
        Addon(name: "Spoon", price: 0.00),
      ],
      category: FoodCategory.desserts,
      image: "assets/images/desserts/cakeBouton.jpg",
      description:
          "Cake 'Bouton' - Indulge in the delicate and exquisite flavors of this sophisticated cake creation.",
      name: "Cake 'Bouton'",
      price: 1.79,
    ),
    // Food(
    //   availableAddons: [
    //     Addon(name: "Fork", price: 0.00),
    //     Addon(name: "Knife", price: 0.00),
    //   ],
    //   category: FoodCategory.desserts,
    //   image: "assets/images/desserts/pancakesBlackberriesNutsSauce.jpg",
    //   description:
    //       "Enjoy our Blackberries Nuts Sauce pancakes for a deliciously indulgent breakfast.",
    //   name: "Blueberry pancakes with pecans in gravy",
    //   price: 1.79,
    // ),
    // Food(
    //   availableAddons: [
    //     Addon(name: "Fork", price: 0.00),
    //     Addon(name: "Knife", price: 0.00),
    //   ],
    //   category: FoodCategory.desserts,
    //   image: "assets/images/desserts/pancakesScrambledPeanutsSauce.jpg",
    //   description:
    //       "Try our Scrambled Peanuts Sauce pancakes for a creative breakfast twist with sweet and nutty flavors.",
    //   name: "Pancakes with cream, peanuts in gravy.",
    //   price: 1.79,
    // ),
    Food(
      availableAddons: [
        Addon(name: "Fork", price: 0.00),
        Addon(name: "Knife", price: 0.00),
      ],
      category: FoodCategory.desserts,
      image: "assets/images/desserts/strawberryRoulade.jpg",
      description:
          "Try our Strawberry Roulade: a light sponge cake with a fruity strawberry filling, delivering pure dessert bliss in every bite.",
      name: "Strawberry Roulade.",
      price: 1.79,
    ),
  ];

  // delivery address
  String _deliveryAddress = 'Per Kalinina 19';

  /* 
  
  G E T T E R S

  */

  List<Food> get menu => _menu;
  List<CartItem> get cart => _cart;
  String get deliveryAddress => _deliveryAddress;

  /*
  
  O P E R A T I O N S

  */

  // user cart
  final List<CartItem> _cart = [];
  // add to cart
  void addToCart(Food food, List<Addon> selectedAddons) {
    // see of there is a cart item already with the same foood and selected addons
    CartItem? cartItem = _cart.firstWhereOrNull((item) {
      // check if the food items are the same
      bool isSameFood = item.food == food;

      // check if the list of selected addons are the same
      bool isSameAddons =
          const ListEquality().equals(item.selectedAddons, selectedAddons);

      return isSameAddons && isSameFood;
    });

    // if item already exists, increase it's quanntity
    if (cartItem != null) {
      cartItem.quantity++;
    }

    // otherwise, add new a cart item to the cart
    else {
      _cart.add(
        CartItem(food: food, selectedAddons: selectedAddons),
      );
    }
    notifyListeners();
  }

  // remove from cart ?????????????

  void removeFromCart(CartItem cartItem) {
    int cartIndex = _cart.indexOf(cartItem);
    if (cartIndex != -1) {
      _cart[cartIndex].quantity--;
    } else {
      _cart.removeAt(cartIndex);
    }
    notifyListeners();
  }

  // get total price of cart
  double getTotalPrice() {
    double total = 0.0;
    for (CartItem cartItem in _cart) {
      double itemTotal = cartItem.food.price;
      for (Addon addon in cartItem.selectedAddons) {
        itemTotal += addon.price;
      }
      total += itemTotal * cartItem.quantity;
    }
    return total;
  }

  // get total number of items in cart
  int getTotalItemCount() {
    int totalItemCount = 0;
    for (CartItem cartItem in _cart) {
      totalItemCount += cartItem.quantity;
    }
    return totalItemCount;
  }

  // claer cart
  void clearCart() {
    _cart.clear();
    notifyListeners();
  }

  //update delivery adress
  void updateDeliveryAdress(String newAdress) {
    _deliveryAddress = newAdress;
    notifyListeners();
  }

  /* 
  
  H E L P E R S

  */

  // generate a receipt
  String displayCartReceipt() {
    final receipt = StringBuffer();
    receipt.writeln("Here's your receipt.");
    receipt.writeln();

    // format the date to indclude up to seconds only
    String formattedDate =
        DateFormat('yyyy-MM-dd HH:mm:ss').format(DateTime.now());

    receipt.writeln(formattedDate);
    receipt.writeln();
    receipt.writeln("-------------");

    for (final cartItem in _cart) {
      receipt.writeln(
          "${cartItem.quantity} x ${cartItem.food.name} - ${_formatPrice(cartItem.food.price)}");
      if (cartItem.selectedAddons.isNotEmpty) {
        receipt
            .writeln("     Add-ons: ${_formatAddons(cartItem.selectedAddons)}");
      }
      receipt.writeln();
    }

    receipt.writeln("-------------");
    receipt.writeln();
    receipt.writeln("Total Items: ${getTotalItemCount()}");
    receipt.writeln("Total Price: ${_formatPrice(getTotalPrice())}");
    receipt.writeln();
    receipt.writeln("Deliverig to: $deliveryAddress");
    return receipt.toString();
  }

  // format double value into money
  String _formatPrice(double price) {
    return "\$${price.toStringAsFixed(2)}";
  }

  // format list of addons into a string
  String _formatAddons(List<Addon> addons) {
    return addons
        .map((addon) => "${addon.name} (${_formatPrice(addon.price)})")
        .join(", ");
  }
}
