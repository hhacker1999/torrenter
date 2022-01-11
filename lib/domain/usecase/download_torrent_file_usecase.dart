import 'dart:io';
import 'package:http/http.dart' as http;

class DownloadTorrentFileUsecase {
  final http.Client _client;

  const DownloadTorrentFileUsecase(this._client);
  Future<File> execute(String path, String url) async {
    final uri = Uri.parse(url);
    final res = await _client.get(uri);
    final file = await File(path).writeAsBytes(res.bodyBytes);
    return file;
  }
}
