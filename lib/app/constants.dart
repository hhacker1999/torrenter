class AppConstants {
  static const String ytsApi = "https://yts.mx/api/v2/list_movies.json";
  static String ytsApiPage(int page) {
    final String stringPage = page.toString();
    final String url = ytsApi + "?page=" + stringPage;
    return url;
  }
}
