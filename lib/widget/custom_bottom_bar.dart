// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
// class CustomBottomBar extends StatelessWidget {
//   final int currentIndex;
//   final Function(int) onTap;
//
//   const CustomBottomBar({
//     super.key,
//     required this.currentIndex,
//     required this.onTap,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     const Color selectedItem = Colors.blue;
//     const Color unselectedItem = Colors.grey;
//
//     return ClipRRect(
//       borderRadius: const BorderRadius.vertical(top: Radius.circular(30)),
//       child: BottomNavigationBar(
//         currentIndex: currentIndex,
//         onTap: onTap,
//         showSelectedLabels: false,
//         showUnselectedLabels: false,
//         elevation: 3,
//         items: [
//           BottomNavigationBarItem(
//             icon: Icon(
//               CupertinoIcons.home,
//               color: currentIndex == 0 ? selectedItem : unselectedItem,
//             ),
//             label: 'Home',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(
//               CupertinoIcons.graph_square_fill,
//               color: currentIndex == 1 ? selectedItem : unselectedItem,
//             ),
//             label: 'Stats',
//           ),
//         ],
//       ),
//     );
//   }
// }
