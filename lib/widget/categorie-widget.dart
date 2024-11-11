part of '../import.dart';

class CategrieWidget extends StatefulWidget {
  const CategrieWidget({super.key});

  @override
  State<CategrieWidget> createState() => _CategrieWidgetState();
}

class _CategrieWidgetState extends State<CategrieWidget> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: ListView.builder(
        itemCount: categories.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex = index;
              });
            },
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: selectedIndex == index
                      ? Colors.blue
                      : Colors.transparent),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
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
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
