import 'package:torrenter/domain/entity/movie_entity.dart';
import 'package:torrenter/domain/repository/movies_repository.dart';
import 'package:http/http.dart' as http;

class MovieRepositoryImplementation implements MoviesRepository {
  final http.Client _client;

  const MovieRepositoryImplementation(this._client);
  @override
  Future<MovieEntity> getMovies() {
    throw UnimplementedError();
  }
}
