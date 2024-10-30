part of '../import.dart';

class ProductCartWidget extends StatelessWidget {
  final ProductModel product;

  const ProductCartWidget({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => DetailsPage(
                        product: product,
                      )));
        },
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Stack(children: [
            Container(
              width: 200,
              height: 500,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: AppConstant.appStatusBarcolor),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 15),
                    Center(
                      child: Hero(
                        tag: product.image,
                        child: Image.asset(
                          product.image,
                          width: 130,
                          height: 130,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(height: 15),
                    Text(
                      product.title,
                      style: const TextStyle(fontSize: 15),
                    ),
                    const SizedBox(height: 5),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '\$${product.price}',
                          style: const TextStyle(fontSize: 15),
                        ),
                        Row(
                            children: List.generate(
                                product.colors.length,
                                (index) => Container(
                                      width: 18,
                                      height: 18,
                                      margin: const EdgeInsets.only(right: 4),
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: product.colors[index]),
                                    )))
                      ],
                    )
                  ],
                ),
              ),
            ),
            Positioned(
              child: Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    height: 40,
                    width: 40,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(20),
                            bottomLeft: Radius.circular(10)),
                        color: AppConstant.appSecodrycolor),
                    child: GestureDetector(
                        onTap: () {},
                        child: const Icon(
                          Icons.favorite,
                          size: 22,
                          color: AppConstant.appwhitecolor,
                        )),
                  )),
            )
          ]),
        ));
  }
}
