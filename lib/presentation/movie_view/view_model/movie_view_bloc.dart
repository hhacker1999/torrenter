import 'dart:io';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:open_file/open_file.dart';
import 'package:path_provider/path_provider.dart';
import 'package:torrenter/domain/entity/torrent_entity.dart';
import 'package:torrenter/domain/usecase/download_torrent_file_usecase.dart';

class MovieViewBloc extends Bloc<MovieBlocDownloadEvent, bool> {
  final DownloadTorrentFileUsecase _downloadTorrentFileUsecase;

  MovieViewBloc(this._downloadTorrentFileUsecase) : super(false) {
    on<MovieBlocDownloadEvent>((event, emit) async {
      emit(true);
      await _downloadTorrent(event.torrent);
      emit(false);
    });
  }
  Future<void> _downloadTorrent(TorrentEntity torrent) async {
    final Directory dir = await getTemporaryDirectory();
    final filePath = dir.path + "/${torrent.hash}.torrent";
    await _downloadTorrentFileUsecase.execute(filePath, torrent.url);
    await OpenFile.open(filePath);
  }
}

class MovieBlocDownloadEvent {
  final TorrentEntity torrent;

  const MovieBlocDownloadEvent(this.torrent);
}
