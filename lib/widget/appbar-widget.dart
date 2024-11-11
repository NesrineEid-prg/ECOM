part of '../import.dart';
class CustumAppbar extends StatelessWidget {
  const CustumAppbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
            style: IconButton.styleFrom(
                backgroundColor: AppConstant.appStatusBarcolor),
            onPressed: () {},
            icon: const Icon(Icons.grid_4x4_sharp, size: 30)),
        IconButton(
            style: IconButton.styleFrom(
                backgroundColor: AppConstant.appStatusBarcolor),
            onPressed: () {},
            icon: const Icon(
              Icons.notifications,
              size: 30,
            ))
      ],
    );
  }
}
