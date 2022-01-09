import 'dart:convert';

import 'package:torrenter/app/constants.dart';
import 'package:torrenter/domain/entity/movie_entity.dart';
import 'package:torrenter/domain/repository/movies_repository.dart';
import 'package:http/http.dart' as http;

class MovieRepositoryImplementation implements MoviesRepository {
  int page = 1;
  final http.Client _client;

  MovieRepositoryImplementation(this._client);
  @override
  Future<List<MovieEntity>> getMovies() async {
    try {
      final uri = AppConstants.ytsApiPage(page);
      final res = await _client.get(Uri.parse(uri));
      if (res.statusCode == 200) {
        page++;
        final Map data = jsonDecode(res.body);
        final List movies = data["data"]["movies"];
        final List<MovieEntity> movieEntities =
            movies.map((a) => MovieEntity.fromJson(a)).toList();
        return movieEntities;
      } else {
        throw "Bad connection";
      }
    } catch (_) {
      rethrow;
    }
  }
}
