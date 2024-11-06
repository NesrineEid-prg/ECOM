part of '../import.dart';

class CartProvider extends ChangeNotifier {
  final List<ProductModel> _cartProvider = [];
  List<ProductModel> get cart => _cartProvider;
  void tgoogleFavorite(ProductModel product) {
    if (cart.contains(product)) {
      for (ProductModel element in cart) {
        element.quantity++;
      }
    } else {
      _cartProvider.add(product);
    }
    notifyListeners();
  }

  incrementqty(int index) => _cartProvider[index].quantity++;

  decrementqty(int index) => _cartProvider[index].quantity--;
  totalPrice() {
    double total1 = 0.0;
    for (ProductModel element in _cartProvider) {
      total1 += element.price * element.quantity;
    }
    return total1;
  }

  static CartProvider of(
    BuildContext context, {
    bool listen = true,
  }) {
    return Provider.of<CartProvider>(context, listen: listen);
  }
}
