part of '../../import.dart';

class DetailsPage extends StatefulWidget {
  final ProductModel product;
  const DetailsPage({super.key, required this.product});

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  int currentimage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(249, 238, 236, 236),
      floatingActionButton: AddToCart(product: widget.product),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 20),
              const DetailsAppbar(),
              DetailsImage(
                  image: widget.product.image,
                  onchange: (index) {
                    setState(() {
                      currentimage = index;
                    });
                  }),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                    5,
                    (index) => AnimatedContainer(
                        duration: const Duration(microseconds: 300),
                        width: currentimage == index ? 15 : 8,
                        height: 8,
                        margin: const EdgeInsets.only(right: 3),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: currentimage == index
                                ? AppConstant.appTextcolor
                                : AppConstant.appSecodrycolor,
                            border: Border.all(
                                color:
                                    const Color.fromARGB(232, 102, 27, 27))))),
              ),
              const SizedBox(height: 10),
              Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(44),
                        topLeft: Radius.circular(44))),
                padding: const EdgeInsets.only(
                    left: 20, right: 20, top: 20, bottom: 100),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    DetailsItems(products: widget.product),
                    const SizedBox(height: 10),
                    const Text(
                      'Colors',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    const SizedBox(height: 10),
                    DetailsColors(product: widget.product),
                    const SizedBox(height: 10),
                    DetailsDescription(test: widget.product.description),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
