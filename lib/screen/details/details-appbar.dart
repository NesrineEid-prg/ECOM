part of '../../import.dart';

class DetailsAppbar extends StatelessWidget {
  final ProductModel products;
  const DetailsAppbar({super.key, required this.products});

  @override
  Widget build(BuildContext context) {
    final provider = FavoriteProvider.of(context);

    return Padding(
      padding: const EdgeInsets.all(11),
      child: Row(
        children: [
          IconButton(
              style: IconButton.styleFrom(
                  backgroundColor: AppConstant.appwhitecolor),
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.arrow_back_ios,
                size: 30,
              )),
          const Spacer(),
          IconButton(
              style: IconButton.styleFrom(
                  backgroundColor: AppConstant.appwhitecolor),
              onPressed: () {},
              icon: const Icon(
                Icons.share_outlined,
                size: 30,
              )),
          const SizedBox(width: 10),
          IconButton(
              style: IconButton.styleFrom(
                  backgroundColor: AppConstant.appwhitecolor),
              onPressed: () {
                provider.tgoogleFavorite(products);
              },
              icon: Icon(
                provider.isExist(products)
                    ? Icons.favorite
                    : Icons.favorite_border,
                color: AppConstant.appTextcolor,
                size: 30,
              ))
        ],
      ),
    );
  }
}
