part of '../import.dart';

class BottonNavBar extends StatefulWidget {
  const BottonNavBar({super.key});

  @override
  State<BottonNavBar> createState() => _BottonNavBarState();
}

class _BottonNavBarState extends State<BottonNavBar> {
  int currentIndex = 2;
  List screen = [
    const Scaffold(),
    FavoritePge(),
    const HomePage(),
    const CartPage(),
    const Scaffold()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              currentIndex = 2;
            });
          },
          shape: const CircleBorder(),
          backgroundColor: AppConstant.appSecodrycolor,
          child: Icon(
            Icons.home,
            size: 30,
            color: currentIndex == 2
                ? AppConstant.appTextcolor
                : AppConstant.appStatusBarcolor,
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomAppBar(
            height: 60,
            color: Colors.white,
            elevation: 1,
            shape: const CircularNotchedRectangle(),
            notchMargin: 3.0,
            clipBehavior: Clip.antiAliasWithSaveLayer,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.max,
                children: [
                  IconButton(
                    onPressed: () {
                      setState(() {
                        currentIndex = 0;
                      });
                    },
                    icon: Icon(Icons.grid_view_outlined,
                        size: 30,
                        color: currentIndex == 0
                            ? AppConstant.appTextcolor
                            : AppConstant.appSecodrycolor),
                  ),
                  IconButton(
                    onPressed: () {
                      setState(() {
                        currentIndex = 1;
                      });
                    },
                    icon: Icon(Icons.favorite,
                        size: 30,
                        color: currentIndex == 1
                            ? AppConstant.appTextcolor
                            : AppConstant.appSecodrycolor),
                  ),
                  IconButton(
                    onPressed: () {
                      setState(() {
                        currentIndex = 3;
                      });
                    },
                    icon: Icon(Icons.shopping_cart,
                        size: 30,
                        color: currentIndex == 3
                            ? AppConstant.appTextcolor
                            : AppConstant.appSecodrycolor),
                  ),
                  IconButton(
                    onPressed: () {
                      setState(() {
                        currentIndex = 4;
                      });
                    },
                    icon: Icon(Icons.person_2,
                        size: 30,
                        color: currentIndex == 4
                            ? AppConstant.appTextcolor
                            : AppConstant.appSecodrycolor),
                  ),
                ])),
        body: screen[currentIndex]);
  }
}
