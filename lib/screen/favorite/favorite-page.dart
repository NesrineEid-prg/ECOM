part of '../../import.dart';

class FavoritePge extends ChangeNotifier {
    final List<ProductModel> _favorites=[];
List<ProductModel>get favorites =>_favorites;
   void tgoogleFavorite(ProductModel product) {
    if (_favorites.contains(product)) {
      _favorites.remove(product);
    
    } else {
      _favorites.add(product);
    }
    notifyListeners();
  }

 

  static CartProvider of(
    BuildContext context, {
    bool listen = true,
  }) {
    return Provider.of<CartProvider>(context, listen: listen);
  }
}
