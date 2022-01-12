import 'package:torrenter/domain/entity/movie_entity.dart';
import 'package:torrenter/domain/repository/movies_repository.dart';

class SearchMovieUseCase {
  final MoviesRepository _moviesRepository;

  const SearchMovieUseCase(this._moviesRepository);
  Future<List<MovieEntity>> execute(String name) {
    return _moviesRepository.searchMovie(name);
  }
}
