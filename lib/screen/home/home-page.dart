part of '../../import.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 0;
  int selectedcat = 0;

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
              const CategrieWidget(),
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
                  itemCount: selectedCategories[selectedcat].length,
                  itemBuilder: (context, index) {
                    return ProductCartWidget(
                      product: selectedCategories[selectedcat][index],
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
