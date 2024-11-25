import 'package:flutter/material.dart';

import 'shoe.dart';

class Cart extends ChangeNotifier {
  List<Shoe> shoeShop = [
    Shoe(
      name: 'Nike Airmax',
      price: '300',
      description: 'birşeyler',
      imagePath: 'lib/images/nike_airmax.png',
    ),
    Shoe(
      name: 'Nike Blazer Mid',
      price: '370',
      description: 'birşeyler',
      imagePath: 'lib/images/nike_blazer_mid.png',
    ),
    Shoe(
      name: 'Nike Dunk Low',
      price: '410',
      description: 'birşeyler',
      imagePath: 'lib/images/nike_dunk_low.png',
    ),
    Shoe(
      name: 'Nike Sb Blazer',
      price: '405',
      description: 'birşeyler',
      imagePath: 'lib/images/nike_sb_blazer.png',
    ),
  ];

  List<Shoe> userCart = [];

  List<Shoe> getShoeList() {
    return shoeShop;
  }

  List<Shoe> getUserCart() {
    return userCart;
  }

  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
