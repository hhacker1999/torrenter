import 'package:http/http.dart' as http;
import 'package:torrenter/domain/repository/movies_repository.dart';
import 'package:torrenter/domain/usecase/get_movies_usecase.dart';
import 'package:torrenter/insfrastructure/repository/movie_repository_implementation.dart';

class AppDependencies {
/* Plugins */
  late http.Client _httpClient;

/* Repositories */
  late MoviesRepository _moviesRepository;

/* Usecases */
  late GetMoviesUsecase _getMoviesUsecase;

  AppDependencies() {
/* Plugins */
    _httpClient = http.Client();

/* Repositories */
    _moviesRepository = MovieRepositoryImplementation(_httpClient);

/* Usecases */
    _getMoviesUsecase = GetMoviesUsecase(_moviesRepository);
  }

/* Getters */
  GetMoviesUsecase get getMoviesUsecase => _getMoviesUsecase;
}
