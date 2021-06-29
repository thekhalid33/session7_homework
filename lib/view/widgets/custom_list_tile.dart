import 'package:flutter/material.dart';

import '../../data/product_dummy_data.dart';

import '../../constance.dart';

class CustomListTile extends StatefulWidget {
  final String title;
  final String imagePath;
  final double price;
  bool isFavourite;

  CustomListTile({this.title, this.imagePath, this.price, this.isFavourite});
  @override
  _CustomListTileState createState() => _CustomListTileState();
}

class _CustomListTileState extends State<CustomListTile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65,
      margin: EdgeInsets.only(left: 20, right: 20, bottom: 10),
      width: double.infinity,
      decoration: BoxDecoration(
        color: kSecondaryColor,
        borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(15), topLeft: Radius.circular(15)),
      ),
      child: ListTile(
        dense: true,
        leading: CircleAvatar(
          backgroundColor: Colors.white,
          child: Image.asset(
            widget.imagePath,
            fit: BoxFit.cover,
            width: 30,
            height: 30,
          ),
        ),
        title: Text(widget.title ?? "GSG TITle"),
        subtitle: Text(widget.price.toString() ?? "\$100"),
        trailing: IconButton(
          onPressed: () {
            setState(() {
              widget.isFavourite
                  ? widget.isFavourite = false
                  : widget.isFavourite = true;

              if (widget.isFavourite == true) {
                Products.productsData.addToFavorites(widget.title);
              } else {
                Products.productsData.removeFromFavorites(widget.title);
              }
            });
          },
          icon: widget.isFavourite
              ? Icon(
                  Icons.favorite,
                  color: Colors.red,
                )
              : Icon(Icons.favorite_outline),
        ),
      ),
    );
  }
}
