import 'package:flutter/material.dart';

import '../../constance.dart';

import '../../data/product_dummy_data.dart';
import '../../view/widgets/custom_list_tile.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 1,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: Products.productsData.getProducts().map((e) {
                  return Container(
                    margin: EdgeInsets.symmetric(
                      horizontal: 10.0,
                    ),
                    width: 250,
                    height: 200,
                    child: Stack(
                      alignment: Alignment.bottomLeft,
                      children: [
                        Image.asset(e.imagePath),
                        Text(
                          e.title,
                          style: TextStyle(
                            color: kSecondaryColor,
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                  );
                }).toList(),
              ),
            ),
          ),
          SizedBox(
            height: 50,
            width: double.infinity,
            child: Text(
              'Products',
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 30,
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: ListView.builder(
                itemCount: Products.productsData.products.length,
                itemBuilder: (context, index) {
                  return CustomListTile(
                    title: Products.productsData.products[index].title,
                    imagePath: Products.productsData.products[index].imagePath,
                    price: Products.productsData.products[index].price,
                    isFavourite:
                        Products.productsData.products[index].isFavourite,
                  );
                }),
          ),
        ],
      ),
    );
  }
}
