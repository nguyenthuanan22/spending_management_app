import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

List<Map<String, dynamic>> transactionData = [
  {
    'icon': const FaIcon(FontAwesomeIcons.burger, color: Colors.white),
    'color': Colors.yellow[700],
    'name': 'Ăn uống',
    'totalAmount': '-45.000 VNĐ',
    'date': 'Hôm nay',
  },
  {
    'icon': const FaIcon(FontAwesomeIcons.film, color: Colors.white),
    'color': Colors.red[500],
    'name': 'Xem phim',
    'totalAmount': '-190.000 VNĐ',
    'date': 'Hôm qua',
  },
  {
    'icon': const FaIcon(FontAwesomeIcons.bagShopping, color: Colors.white),
    'color': Colors.purple,
    'name': 'Mua sắm',
    'totalAmount': '-230.000 VNĐ',
    'date': 'Hôm nay',
  },
  {
    'icon': const FaIcon(FontAwesomeIcons.heartCircleCheck, color: Colors.white),
    'color': Colors.green,
    'name': 'Mua sắm',
    'totalAmount': '-79.000 VNĐ',
    'date': 'Hôm qua',
  },
  {
    'icon': const FaIcon(FontAwesomeIcons.plane, color: Colors.white),
    'color': Colors.blue,
    'name': 'Du lịch',
    'totalAmount': '-350.000 VNĐ',
    'date': 'Hôm qua',
  },
];


