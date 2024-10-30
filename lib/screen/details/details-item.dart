part of '../../import.dart';

class DetailsItems extends StatelessWidget {
  final ProductModel products;
  const DetailsItems({super.key, required this.products});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          products.title,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
        ),
        const SizedBox(height: 10),
        Text(
          '\$${products.price}',
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
        ),
        const SizedBox(height: 10),
        Row(
          children: [
            Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 60,
                      height: 23,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.red),
                      alignment: Alignment.center,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 3),
                        child: Row(
                          children: [
                            const Icon(Icons.star,
                                size: 16, color: Colors.white),
                            const SizedBox(width: 6),
                            Text(
                              products.rate.toString(),
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                  color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(width: 6),
                    Text(
                      products.review.toString(),
                      style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          color: Colors.grey),
                    )
                  ],
                ),
              ],
            ),
            const Spacer(),
            Text.rich(TextSpan(
              children: [
                const TextSpan(text: 'sellers', style: TextStyle(fontSize: 16)),
                TextSpan(
                    text: products.seller, style: const TextStyle(fontSize: 16))
              ],
            ))
          ],
        ),
        const SizedBox(height: 10),
      ],
    );
  }
}
