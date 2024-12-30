import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:spending_management_app/common/colors.dart';
import 'package:spending_management_app/screens/add_expense/views/add_expense.dart';
import 'package:spending_management_app/screens/calender/calender_screen.dart';
import 'package:spending_management_app/screens/home/views/main_screen.dart';
import '../../stats/stats.dart';
import '../../profile/profile_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int index = 0;

  // Danh sách màn hình
  final List<Widget> screens = [
    const MainScreen(),
    const StatScreen(),
    Container(), // Placeholder để giữ chỗ cho FAB
    const CalendarScreen(),
    const ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Hiển thị màn hình tương ứng
      body: screens[index],

      // Nút nổi (FAB) chuyển sang màn hình thêm chi phí
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Chuyển đến màn hình thêm chi phí
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (BuildContext context) => const AddExpense(),
            ),
          );
        },
        shape: const CircleBorder(),
        backgroundColor: TColor.primary,
        child: const Icon(
          CupertinoIcons.add,
          color: Colors.white,
        ),
      ),

      // Thanh điều hướng dưới cùng
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.vertical(top: Radius.circular(30)),
        child: BottomNavigationBar(
          onTap: (value) {
            if (value != 2) {
              setState(() {
                index = value; // Không điều chỉnh index
              });
            }
          },
          currentIndex: index, // Sử dụng index gốc
          type: BottomNavigationBarType.fixed,
          selectedItemColor: TColor.primary,
          unselectedItemColor: TColor.gray30,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.chart_bar_alt_fill),
              label: 'Stats',
            ),
            BottomNavigationBarItem(
              icon: SizedBox(width: 60), // Placeholder giữ chỗ cho FAB
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.calendar),
              label: 'Spending Details',
            ),
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.profile_circled),
              label: 'Profile',
            ),
          ],
        ),
      ),
    );
  }
}
