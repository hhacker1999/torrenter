import 'package:torrenter/domain/entity/movie_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
part 'home_view_state.freezed.dart';


@freezed
abstract class HomeViewState with _$HomeViewState {
  const factory HomeViewState.loading() = Loading;
  const factory HomeViewState.error(String error) = Error;
  const factory HomeViewState.loaded(List<MovieEntity> movies) = Loaded;
}

