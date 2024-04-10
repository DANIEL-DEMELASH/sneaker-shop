import 'package:flutter/material.dart';

import 'shoe.dart';

class Cart extends ChangeNotifier {
  List<Shoe> shoeShop = [
    Shoe(
        name: 'Air Jordan',
        price: '199.99',
        imagePath: 'images/airjordan.png',
        description:
            'The forward thinking design of his latest signature shoe'),
    Shoe(
        name: 'All Star',
        price: '299.99',
        imagePath: 'images/allstar.png',
        description:
            'The forward thinking design of his latest signature shoe'),
    Shoe(
        name: 'Nike Air Force',
        price: '249.99',
        imagePath: 'images/nike_green.png',
        description:
            'The forward thinking design of his latest signature shoe'),
    Shoe(
        name: 'Vans',
        price: '149.99',
        imagePath: 'images/vans.png',
        description:
            'The forward thinking design of his latest signature shoe'),
  ];

  List<Shoe> userCart = [];

  List<Shoe> getShoeList() {
    return shoeShop;
  }

  List<Shoe> getUserCart = [];

  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
