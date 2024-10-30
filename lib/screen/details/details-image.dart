part of '../../import.dart';

class DetailsImage extends StatelessWidget {
  final String image;

  final Function(int) onchange;
  const DetailsImage({
    super.key,
    required this.image,
    required this.onchange,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      child: PageView.builder(
          onPageChanged: onchange,
          itemBuilder: (context, index) {
            return Hero(tag: image, child: Image.asset(image));
          }),
    );
  }
}
