part of '../import.dart';

class SearchApp extends StatelessWidget {
  const SearchApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 55,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: AppConstant.appMaincolor,
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.search,
                  size: 30,
                )),
            const SizedBox(
              width: 10,
            ),
            const Flexible(
              flex: 4,
              child: TextField(
                  decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Search...',
              )),
            ),
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.tune,
                  size: 30,
                ))
          ],
        ),
      ),
    );
  }
}
