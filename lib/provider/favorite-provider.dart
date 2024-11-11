part of '../import.dart';

class FavoriteProvider extends ChangeNotifier {
  final List<ProductModel> _favorites = [];
  List<ProductModel> get favorites => _favorites;
  void tgoogleFavorite(ProductModel product) {
    if (_favorites.contains(product)) {
      _favorites.remove(product);
    } else {
      _favorites.add(product);
    }
    notifyListeners();
  }

  bool isExist(ProductModel product) {
    final isExist = _favorites.contains(product);
    return isExist;
  }

  static FavoriteProvider of(
    BuildContext context, {
    bool listen = true,
  }) {
    return Provider.of<FavoriteProvider>(context, listen: listen);
  }
}
