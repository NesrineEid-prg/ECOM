part of '../../import.dart';

class ImageWidget extends StatelessWidget {
  final Function(int) onChange;
  final int currentIndex;
  const ImageWidget(
      {super.key, required this.currentIndex, required this.onChange});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
            height: 220,
            width: double.infinity,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: PageView(
                scrollDirection: Axis.horizontal,
                allowImplicitScrolling: true,
                onPageChanged: onChange,
                physics: const ClampingScrollPhysics(),
                children: [
                  Image.asset(
                    'assets/images/maine.png',
                    fit: BoxFit.contain,
                  ),
                  Image.asset(
                    'assets/images/slider.png',
                    fit: BoxFit.contain,
                  ),
                  Image.asset(
                    'assets/images/slider3.png',
                    fit: BoxFit.contain,
                  ),
                ],
              ),
            )),
        Positioned(
            child: Align(
          alignment: Alignment.bottomCenter,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
                5,
                (index) => AnimatedContainer(
                    duration: const Duration(microseconds: 300),
                    width: currentIndex == index ? 15 : 3,
                    height: 8,
                    margin: const EdgeInsets.only(right: 3),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: currentIndex == index
                            ? AppConstant.appTextcolor
                            : AppConstant.appSecodrycolor,
                        border: Border.all(
                            color: const Color.fromARGB(232, 102, 27, 27))))),
          ),
        ))
      ],
    );
  }
}
