import 'package:flutter/material.dart';

import '../../data/product_dummy_data.dart';

import '../widgets/custom_list_tile.dart';

class FavoritesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: Products.productsData.favoritesProducts.length,
        itemBuilder: (context, index) {
          return CustomListTile(
            title: Products.productsData.favoritesProducts[index].title,
            imagePath: Products.productsData.favoritesProducts[index].imagePath,
            price: Products.productsData.favoritesProducts[index].price,
            isFavourite:
                Products.productsData.favoritesProducts[index].isFavourite,
          );
        });
  }
}
