part of '../../import.dart';

class DetailsColors extends StatefulWidget {
  final ProductModel product;
  const DetailsColors({super.key, required this.product});

  @override
  State<DetailsColors> createState() => _DetailsColorsState();
}

class _DetailsColorsState extends State<DetailsColors> {
  int currentcolor = 1;
  @override
  Widget build(BuildContext context) {
    return Row(
        children: List.generate(
            widget.product.colors.length,
            (index) => GestureDetector(
                  onTap: () {
                    setState(() {
                      currentcolor = index;
                    });
                  },
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 300),
                    width: 35,
                    height: 35,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: currentcolor == index
                            ? Colors.white
                            : widget.product.colors[index],
                        border: currentcolor == index
                            ? Border.all(color: widget.product.colors[index])
                            : null),
                    padding:
                        currentcolor == index ? const EdgeInsets.all(5) : null,
                    margin: const EdgeInsets.only(right: 10),
                    child: Container(
                      width: 35,
                      height: 35,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: widget.product.colors[index]),
                    ),
                  ),
                )));
  }
}
