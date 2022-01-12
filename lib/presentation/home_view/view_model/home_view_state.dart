import 'package:torrenter/domain/entity/movie_entity.dart';

abstract class HomeViewState {
  const factory HomeViewState.loading() = HomeStateLoading;
  const factory HomeViewState.loaded(List<MovieEntity> movies) =
      HomeStateLoaded;

  const factory HomeViewState.error(String movies) = HomeStateError;
}

class HomeStateLoaded implements HomeViewState {
  final List<MovieEntity> movies;

  const HomeStateLoaded(this.movies);
}

class HomeStateError implements HomeViewState {
  final String error;

  const HomeStateError(this.error);
}

class HomeStateLoading implements HomeViewState {
  const HomeStateLoading();
}
