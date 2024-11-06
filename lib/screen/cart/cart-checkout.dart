part of '../../import.dart';

class CartCheckOut extends StatelessWidget {
  const CartCheckOut({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = CartProvider.of(context);
    return Container(
      height: 300,
      width: double.infinity,
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(30),
            topLeft: Radius.circular(30),
          ),
          color: AppConstant.appwhitecolor),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide.none),
                  contentPadding:
                      const EdgeInsets.symmetric(vertical: 12, horizontal: 12),
                  // filled: true,
                  fillColor: AppConstant.appMaincolor,
                  hintText: 'Enter Discount Code',
                  hintStyle: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Colors.grey),
                  suffixIcon: TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Apply',
                        style: TextStyle(
                          color: AppConstant.appSecodrycolor,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ))),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('subTotal',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: Colors.grey.shade600)),
                  Text('\$${provider.totalPrice()}',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: Colors.grey.shade600)),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Total',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: Colors.grey.shade600)),
                  Text('\$${provider.totalPrice()}',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: Colors.grey.shade600)),
                ],
              ),
            ),
            ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    backgroundColor: AppConstant.appSecodrycolor,
                    maximumSize: const Size(double.infinity, 55)),
                child: const Text('Check Out',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: AppConstant.appwhitecolor)))
          ],
        ),
      ),
    );
  }
}
