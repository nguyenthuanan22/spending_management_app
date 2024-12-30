import 'package:flutter/material.dart';
import 'package:spending_management_app/common/colors.dart';
import 'package:spending_management_app/screens/home/views/home_screen.dart';

class MyAppView extends StatelessWidget {
  const MyAppView({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Spending Management App',
      theme: ThemeData(
        colorScheme: const ColorScheme.light(
          surface: TColor.background, // Sử dụng màu từ `TColor`
          onSurface: Colors.black,    // Màu trên bề mặt
        ),
      ),
      home: const HomeScreen(),
    );
  }
}
