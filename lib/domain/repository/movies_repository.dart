import 'package:torrenter/domain/entity/movie_entity.dart';

abstract class MoviesRepository {
  Future<List<MovieEntity>> getMovies();
  Future<List<MovieEntity>> searchMovie(String name);
}
