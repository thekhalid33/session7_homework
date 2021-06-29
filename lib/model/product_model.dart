class ProductModel {
  String title;
  String imagePath;
  double price;
  bool isFavourite;

  ProductModel({
    this.title,
    this.imagePath = 'assets/images/product_image.jpg',
    this.price,
    this.isFavourite = false,
  });
}
