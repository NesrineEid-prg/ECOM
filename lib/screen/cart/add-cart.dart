part of '../../import.dart';

class AddToCart extends StatefulWidget {
  final ProductModel product;
  const AddToCart({super.key, required this.product});

  @override
  State<AddToCart> createState() => _AddToCartState();
}

class _AddToCartState extends State<AddToCart> {
  int currentindex = 1;

  @override
  Widget build(BuildContext context) {
    final provider = CartProvider.of(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 11),
      child: Container(
        height: 60,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: AppConstant.appTextcolor),
        padding: const EdgeInsets.symmetric(horizontal: 15),
        alignment: Alignment.center,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 40,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: AppConstant.appTextcolor),
              child: Row(
                children: [
                  IconButton(
                      onPressed: () {
                        if (currentindex != 1) {
                          setState(() {
                            currentindex--;
                          });
                        }
                      },
                      icon: const Icon(
                        Icons.remove,
                        size: 16,
                        color: AppConstant.appwhitecolor,
                      )),
                  const SizedBox(width: 4),
                  Text(currentindex.toString(),
                      style: const TextStyle(
                        fontSize: 16,
                        color: AppConstant.appwhitecolor,
                      )),
                  const SizedBox(width: 4),
                  IconButton(
                      onPressed: () {
                        setState(() {
                          currentindex++;
                        });
                      },
                      icon: const Icon(
                        color: AppConstant.appwhitecolor,
                        Icons.add,
                        size: 16,
                      )),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                provider.tgoogleFavorite(widget.product);
                const snackbar = SnackBar(
                  content: Text(
                    'successfully added!',
                    style: TextStyle(
                        fontSize: 22, color: AppConstant.appSecodrycolor),
                  ),
                  duration: Duration(milliseconds: 1),
                );
                ScaffoldMessenger.of(context).showSnackBar(snackbar);
              },
              child: Container(
                height: 55,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: AppConstant.appSecodrycolor),
                alignment: Alignment.center,
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 33),
                  child: Center(
                    child: Text(
                      'Add To Cart',
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: AppConstant.appwhitecolor),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
