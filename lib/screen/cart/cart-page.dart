part of '../../import.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    final provider = CartProvider.of(context);
    final listcart = provider.cart;
    productqtity(
      IconData icon,
      int index,
    ) {
      return GestureDetector(
        onTap: () {
          setState(() {
            (icon) == (Icons.add)
                ? provider.incrementqty(
                    index,
                  )
                : provider.decrementqty(index);
          });
        },
        child: Icon(icon, size: 20),
      );
    }

    return Scaffold(
      bottomSheet: const CartCheckOut(),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                      style: IconButton.styleFrom(
                          backgroundColor: AppConstant.appwhitecolor),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const BottonNavBar()));
                      },
                      icon: const Icon(
                        Icons.arrow_back_ios,
                        size: 30,
                      )),
                  const Text(
                    'My Cart',
                    style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                  ),
                  Container()
                ],
              ),
            ),
            Expanded(
                child: ListView.builder(
                    itemCount: listcart.length,
                    itemBuilder: (context, index) {
                      final cartitems = listcart[index];

                      return Stack(children: [
                        Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                                color: AppConstant.appMaincolor,
                                borderRadius: BorderRadius.circular(22)),
                            child: Row(
                              children: [
                                Container(
                                  width: 90,
                                  height: 100,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(22)),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Image.asset(cartitems.image),
                                  ),
                                ),
                                const SizedBox(width: 5),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      cartitems.title,
                                      style: const TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16,
                                          color: AppConstant.appTextcolor),
                                    ),
                                    const SizedBox(height: 5),
                                    Text(
                                      cartitems.category,
                                      style: const TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16,
                                          color: AppConstant.appTextcolor),
                                    ),
                                    const SizedBox(height: 5),
                                    Text(
                                      " \$${cartitems.price}",
                                      style: const TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16,
                                          color: AppConstant.appTextcolor),
                                    ),
                                  ],
                                )
                              ],
                            )),
                        Positioned(
                            top: 5,
                            right: 15,
                            left: 300,
                            bottom: 0,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                IconButton(
                                    onPressed: () {
                                      listcart.removeAt(index);
                                      setState(() {});
                                    },
                                    icon: const Icon(
                                      Icons.delete,
                                      size: 25,
                                      color: Colors.red,
                                    )),
                                const SizedBox(height: 5),
                                Container(
                                  height: 30,
                                  // width: 53,
                                  decoration: BoxDecoration(
                                      color: const Color.fromARGB(
                                          192, 170, 218, 248),
                                      borderRadius: BorderRadius.circular(25)),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Container(
                                          height: 22,
                                          width: 22,
                                          decoration: BoxDecoration(
                                              color: AppConstant.appMaincolor,
                                              borderRadius:
                                                  BorderRadius.circular(25)),
                                          child: Center(
                                            child: productqtity(
                                              Icons.add,
                                              index,
                                            ),
                                          )),
                                      const SizedBox(width: 2),
                                      Container(
                                        height: 22,
                                        width: 22,
                                        decoration: BoxDecoration(
                                            color: AppConstant.appMaincolor,
                                            borderRadius:
                                                BorderRadius.circular(25)),
                                        child: Center(
                                          child: Text(
                                            cartitems.quantity.toString(),
                                            style: const TextStyle(
                                                fontSize: 20,
                                                color: AppConstant.appTextcolor,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                      ),
                                      const SizedBox(width: 2),
                                      Container(
                                          height: 22,
                                          width: 22,
                                          decoration: BoxDecoration(
                                              color: AppConstant.appMaincolor,
                                              borderRadius:
                                                  BorderRadius.circular(22)),
                                          child: Center(
                                            child: productqtity(
                                              Icons.remove,
                                              index,
                                            ),
                                          )),
                                    ],
                                  ),
                                ),
                              ],
                            )),
                      ]);
                    })),
          ],
        ),
      ),
    );
  }
}
