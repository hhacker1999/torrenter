import 'package:freezed_annotation/freezed_annotation.dart';
part 'torrent_metadata.freezed.dart';

@freezed
abstract class TorrentMetaData with _$TorrentMetaData {
  const factory TorrentMetaData.downloaded(String hash) = Downloaded;
  const factory TorrentMetaData.downloading(double percentageDone,  String hash ) =
      Downloading;
}
