import 'package:torrenter/domain/entity/movie_entity.dart';

abstract class HomeViewState {
  const HomeViewState();
}

class HomeViewStateLoading extends HomeViewState {
  const HomeViewStateLoading();
}

class HomeViewStateLoaded extends HomeViewState {
  final List<MovieEntity> movies;
  const HomeViewStateLoaded({required this.movies});
}

class HomeViewStateError extends HomeViewState {
  final String error;
  const HomeViewStateError({required this.error});
}
