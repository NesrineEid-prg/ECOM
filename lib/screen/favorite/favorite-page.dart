part of '../../import.dart';

class FavoritePage extends StatefulWidget {
  const FavoritePage({super.key});

  @override
  State<FavoritePage> createState() => _FavoritePageState();

  static of(BuildContext context) {}
}

class _FavoritePageState extends State<FavoritePage> {
  @override
  Widget build(BuildContext context) {
    final provider = FavoriteProvider.of(context);
    final finalList = provider._favorites;

    return Scaffold(
      backgroundColor: AppConstant.appMaincolor,
      appBar: AppBar(
        title: const Text(
          'Favorite',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
              child: ListView.builder(
                  itemCount: finalList.length,
                  itemBuilder: (context, index) {
                    final favoritItems = finalList[index];

                    return Stack(
                      children: [
                        Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                                color: AppConstant.appMaincolor,
                                borderRadius: BorderRadius.circular(22)),
                            child: Row(
                              children: [
                                Container(
                                  width: 85,
                                  height: 85,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(22)),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Image.asset(favoritItems.image),
                                  ),
                                ),
                                const SizedBox(width: 5),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      favoritItems.title,
                                      style: const TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16,
                                          color: AppConstant.appTextcolor),
                                    ),
                                    const SizedBox(height: 5),
                                    Text(
                                      favoritItems.category,
                                      style: const TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16,
                                          color: AppConstant.appTextcolor),
                                    ),
                                    const SizedBox(height: 5),
                                    Text(
                                      " \$${favoritItems.price}",
                                      style: const TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16,
                                          color: AppConstant.appTextcolor),
                                    ),
                                  ],
                                )
                              ],
                            )),
                        Positioned(
                          top: 5,
                          right: 15,
                          left: 300,
                          bottom: 0,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              IconButton(
                                  onPressed: () {
                                    finalList.removeAt(index);
                                    setState(() {});
                                  },
                                  icon: const Icon(
                                    Icons.delete,
                                    size: 25,
                                    color: Colors.red,
                                  )),
                              const SizedBox(height: 5),
                            ],
                          ),
                        ),
                      ],
                    );
                  })),
        ],
      ),
    );
  }
}
