import 'package:torrenter/domain/entity/movie_entity.dart';

abstract class MoviesRepository {
  Future<MovieEntity> getMovies();
}
