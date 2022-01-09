import 'package:torrenter/domain/entity/movie_entity.dart';
import 'package:torrenter/domain/repository/movies_repository.dart';

class GetMoviesUsecase {
  final MoviesRepository _repository;

  const GetMoviesUsecase(this._repository);
  Future<List<MovieEntity>> execute() {
    return _repository.getMovies();
  }
}
