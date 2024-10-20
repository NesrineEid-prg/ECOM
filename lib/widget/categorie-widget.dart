part of '../import.dart';

class CategrieWidget extends StatelessWidget {
  const CategrieWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: ListView.separated(
        itemCount: categories.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Container(
                width: 65,
                height: 66,
                decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    image: DecorationImage(
                        image: AssetImage(categories[index].image),
                        fit: BoxFit.contain)),
              ),
              const SizedBox(
                height: 4,
              ),
              Text(
                categories[index].title,
                style: const TextStyle(fontSize: 15),
              )
            ],
          );
        },
        separatorBuilder: (context, index) => const SizedBox(
          width: 20,
        ),
      ),
    );
  }
}
