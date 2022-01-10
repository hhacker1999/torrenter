import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:torrenter/domain/entity/movie_entity.dart';
import 'package:torrenter/domain/usecase/get_movies_usecase.dart';
import 'package:torrenter/presentation/home_view/view_model/home_view_state.dart';
import 'home_view_event.dart';

class HomeViewBloc extends Bloc<HomeViewEvent, HomeViewState> {
  final GetMoviesUsecase getMoviesUsecase;

  HomeViewBloc({required this.getMoviesUsecase})
      : super(const HomeViewState.loading()) {
    on<LoadPages>((event, emit) => _fetchMovies(emit));
  }

  Future<void> _fetchMovies(void Function(HomeViewState) emit) async {
    try {
      final List<MovieEntity> movies = await getMoviesUsecase.execute();
      emit(HomeViewState.loaded(movies));
    } catch (e) {
      emit(HomeViewState.error(e.toString()));
    }
  }
}
