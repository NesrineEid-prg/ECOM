part of '../../import.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 0;
  int selectedcat = 0;
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    List<List<ProductModel>> selectedCategories = [all, wear, electronics];
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(height: 30),
              const CustumAppbar(),
              const SizedBox(height: 20),
              const SearchApp(),
              const SizedBox(height: 20),
              ImageWidget(
                  currentIndex: currentIndex,
                  onChange: (value) {
                    setState(() {
                      currentIndex = value;
                    });
                  }),
              SizedBox(
                height: 120,
                child: ListView.builder(
                  itemCount: selectedCategories.length,
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
                                        image:
                                            AssetImage(categories[index].image),
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
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Special For You",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "See All",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  )
                ],
              ),
              const SizedBox(height: 10),
              GridView.builder(
                  // physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 0.78,
                      mainAxisSpacing: 20),
                  itemCount: selectedCategories[selectedIndex].length,
                  itemBuilder: (context, index) {
                    return ProductCartWidget(
                      product: selectedCategories[selectedIndex][index],
                    );
                  }),
              const Row(children: [Text('')]),
            ],
          ),
        ),
      ),
    );
  }
}
