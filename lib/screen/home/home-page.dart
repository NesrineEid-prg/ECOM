part of '../../import.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
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
                  })
            ],
          ),
        ),
      ),
    );
  }
}
