import '../model/product_model.dart';

class Products {
  Products._();
  static final productsData = Products._();

  List<ProductModel> products = [
    ProductModel(
      title: 'Product1',
      imagePath: 'assets/images/product_image.jpg',
      price: 100,
      isFavourite: false,
    ),
    ProductModel(
      title: 'Product2',
      imagePath: 'assets/images/product_image.jpg',
      price: 200,
      isFavourite: false,
    ),
    ProductModel(
      title: 'Product3',
      imagePath: 'assets/images/product_image.jpg',
      price: 300,
      isFavourite: false,
    ),
    ProductModel(
      title: 'Product4',
      imagePath: 'assets/images/product_image.jpg',
      price: 400,
      isFavourite: false,
    ),
  ];

  List<ProductModel> favoritesProducts = [];

  addToFavorites(String title) {
    products.forEach((element) {
      if (element.title == title) {
        element.isFavourite = true;
        favoritesProducts.add(element);
      }
    });
  }

  removeFromFavorites(title) {
    products.forEach((element) {
      if (element.title == title) {
        element.isFavourite = false;
        favoritesProducts.remove(element);
      }
    });
  }

  List<ProductModel> getProducts() {
    return [...products];
  }
}
