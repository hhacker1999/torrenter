import 'package:rxdart/rxdart.dart';
import 'package:torrenter/domain/entity/movie_entity.dart';
import 'package:torrenter/domain/usecase/get_movies_usecase.dart';
import 'package:torrenter/presentation/home_view/view_model/home_view_state.dart';

class HomeViewModel {
  final GetMoviesUsecase getMoviesUsecase;
  final BehaviorSubject<HomeViewState> _stateSubject =
      BehaviorSubject.seeded(const HomeViewStateLoading());
  HomeViewModel({required this.getMoviesUsecase}) {
    _fetchMovies();
  }

  ValueStream<HomeViewState> get stateStream => _stateSubject;

  Future<void> _fetchMovies() async {
    try {
      final List<MovieEntity> movies = await getMoviesUsecase.execute();
      _stateSubject.add(
        HomeViewStateLoaded(movies: movies),
      );
    } catch (e) {
      _stateSubject.add(
        HomeViewStateError(
          error: e.toString(),
        ),
      );
    }
  }

  void dispose() {
    _stateSubject.close();
  }
}
