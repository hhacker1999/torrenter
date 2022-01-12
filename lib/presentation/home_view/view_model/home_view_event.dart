import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
part 'home_view_event.freezed.dart';

@freezed
abstract class HomeViewEvent with _$HomeViewEvent {
  const factory HomeViewEvent.loadPages() = LoadPages;
  const factory HomeViewEvent.searchMovie(String name) = SearchMovie;
}
