part of '../import.dart';

class CategorieModel {
  final String title;
  final String image;

  CategorieModel({required this.image, required this.title});
}

final List<CategorieModel> categories = [
  // CategorieModel(image: 'assets/images/earrings.png', title: 'Earrings'),
  CategorieModel(image: 'assets/images/slider3.png', title: 'all'),
  // CategorieModel(image: 'assets/images/kurta.png', title: 'kurta'),
  // CategorieModel(image: 'assets/images/lehenga.png', title: 'lehenga'),
  // CategorieModel(image: 'assets/images/men.png', title: 'men'),

  // CategorieModel(
  //     image: 'assets/images/necklace.png', title: 'necklace-jewellery'),
  // CategorieModel(image: 'assets/images/perfume.png', title: 'perfume'),
  CategorieModel(image: 'assets/images/sweet.png', title: 'wear'),
  CategorieModel(image: 'assets/images/miband.jpg', title: 'electonic'),
  CategorieModel(image: 'assets/images/sports shoes.png', title: 'shoes'),
];
