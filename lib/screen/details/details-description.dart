part of '../../import.dart';

class DetailsDescription extends StatelessWidget {
  final String test;
  const DetailsDescription({super.key, required this.test});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 120,
              height: 50,
              decoration: BoxDecoration(
                  color: Colors.red, borderRadius: BorderRadius.circular(20)),
              alignment: Alignment.center,
              child: const Text(
                'Description',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: AppConstant.appMaincolor),
              ),
            ),
            const Text(
              'Specifications',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: AppConstant.appTextcolor),
            ),
            const Text(
              'Reviews',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: AppConstant.appTextcolor),
            ),
          ],
        ),
        const SizedBox(height: 10),
        Text(
          test,
          style: const TextStyle(fontSize: 18),
        )
      ],
    );
  }
}
