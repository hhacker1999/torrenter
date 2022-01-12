import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:torrenter/domain/entity/movie_entity.dart';
import 'package:torrenter/domain/usecase/get_movies_usecase.dart';
import 'package:torrenter/domain/usecase/search_movies_usecase.dart';
import 'package:torrenter/presentation/home_view/view_model/home_view_state.dart';
import 'home_view_event.dart';

class HomeViewBloc extends Bloc<HomeViewEvent, HomeViewState> {
  final List<MovieEntity> _movieList = List.empty(growable: true);
  final GetMoviesUsecase getMoviesUsecase;
  final SearchMovieUseCase searchMovieUseCase;

  HomeViewBloc(
      {required this.getMoviesUsecase, required this.searchMovieUseCase})
      : super(const HomeViewState.loading()) {
    on<LoadPages>((event, emit) => _fetchMovies(emit));
    on<SearchMovie>((event, emit) => _searchMovies(event.name, emit));
  }

  Future<void> _fetchMovies(void Function(HomeViewState) emit) async {
    try {
      final List<MovieEntity> movies = await getMoviesUsecase.execute();
      _movieList.addAll(movies);
      emit(HomeViewState.loaded(_movieList));
    } catch (e) {
      emit(HomeViewState.error(e.toString()));
    }
  }

  Future<void> _searchMovies(
      String name, void Function(HomeViewState) emit) async {
    try {
      if (name.isEmpty) {
        emit(HomeViewState.loaded(_movieList));
      } else {
        final List<MovieEntity> movies = await searchMovieUseCase.execute(name);
        emit(HomeViewState.loaded(movies));
      }
    } catch (e) {
      emit(HomeViewState.error(e.toString()));
    }
  }
}
