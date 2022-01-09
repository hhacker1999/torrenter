import 'package:flutter/material.dart';

class AppConstants {
  static const String _ytsApi = "https://yts.mx/api/v2/list_movies.json";
  static String ytsApiPage(int page) {
    final String stringPage = page.toString();
    final String url = _ytsApi + "?page=" + stringPage;
    return url;
  }

  static Color get whiteGrey=> Colors.white.withOpacity(0.5);
}
