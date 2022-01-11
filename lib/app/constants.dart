import 'package:flutter/material.dart';

class AppConstants {
  static const String homeRoute = "/";
  static const String movieRoute = "/movie";
  static const String _ytsApi = "https://yts.mx/api/v2/list_movies.json?sort_by=year&limit=40&";
  static String ytsApiPage(int page) {
    final String stringPage = page.toString();
    final String url = _ytsApi + "page=" + stringPage;
    return url;
  }

  static Color get whiteGrey => const Color(0xFF3E424E);
  static Color get purple => const Color(0xFF070D2D);
}
