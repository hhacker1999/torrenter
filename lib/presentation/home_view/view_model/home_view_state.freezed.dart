// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'home_view_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$HomeViewStateTearOff {
  const _$HomeViewStateTearOff();

  Loading loading() {
    return const Loading();
  }

  MovieLoading movieLoading() {
    return const MovieLoading();
  }

  Error error(String error) {
    return Error(
      error,
    );
  }

  Loaded loaded(List<MovieEntity> movies) {
    return Loaded(
      movies,
    );
  }
}

/// @nodoc
const $HomeViewState = _$HomeViewStateTearOff();

/// @nodoc
mixin _$HomeViewState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() movieLoading,
    required TResult Function(String error) error,
    required TResult Function(List<MovieEntity> movies) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? movieLoading,
    TResult Function(String error)? error,
    TResult Function(List<MovieEntity> movies)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? movieLoading,
    TResult Function(String error)? error,
    TResult Function(List<MovieEntity> movies)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Loading value) loading,
    required TResult Function(MovieLoading value) movieLoading,
    required TResult Function(Error value) error,
    required TResult Function(Loaded value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(MovieLoading value)? movieLoading,
    TResult Function(Error value)? error,
    TResult Function(Loaded value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(MovieLoading value)? movieLoading,
    TResult Function(Error value)? error,
    TResult Function(Loaded value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeViewStateCopyWith<$Res> {
  factory $HomeViewStateCopyWith(
          HomeViewState value, $Res Function(HomeViewState) then) =
      _$HomeViewStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$HomeViewStateCopyWithImpl<$Res>
    implements $HomeViewStateCopyWith<$Res> {
  _$HomeViewStateCopyWithImpl(this._value, this._then);

  final HomeViewState _value;
  // ignore: unused_field
  final $Res Function(HomeViewState) _then;
}

/// @nodoc
abstract class $LoadingCopyWith<$Res> {
  factory $LoadingCopyWith(Loading value, $Res Function(Loading) then) =
      _$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadingCopyWithImpl<$Res> extends _$HomeViewStateCopyWithImpl<$Res>
    implements $LoadingCopyWith<$Res> {
  _$LoadingCopyWithImpl(Loading _value, $Res Function(Loading) _then)
      : super(_value, (v) => _then(v as Loading));

  @override
  Loading get _value => super._value as Loading;
}

/// @nodoc

class _$Loading with DiagnosticableTreeMixin implements Loading {
  const _$Loading();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeViewState.loading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'HomeViewState.loading'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() movieLoading,
    required TResult Function(String error) error,
    required TResult Function(List<MovieEntity> movies) loaded,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? movieLoading,
    TResult Function(String error)? error,
    TResult Function(List<MovieEntity> movies)? loaded,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? movieLoading,
    TResult Function(String error)? error,
    TResult Function(List<MovieEntity> movies)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Loading value) loading,
    required TResult Function(MovieLoading value) movieLoading,
    required TResult Function(Error value) error,
    required TResult Function(Loaded value) loaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(MovieLoading value)? movieLoading,
    TResult Function(Error value)? error,
    TResult Function(Loaded value)? loaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(MovieLoading value)? movieLoading,
    TResult Function(Error value)? error,
    TResult Function(Loaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements HomeViewState {
  const factory Loading() = _$Loading;
}

/// @nodoc
abstract class $MovieLoadingCopyWith<$Res> {
  factory $MovieLoadingCopyWith(
          MovieLoading value, $Res Function(MovieLoading) then) =
      _$MovieLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$MovieLoadingCopyWithImpl<$Res> extends _$HomeViewStateCopyWithImpl<$Res>
    implements $MovieLoadingCopyWith<$Res> {
  _$MovieLoadingCopyWithImpl(
      MovieLoading _value, $Res Function(MovieLoading) _then)
      : super(_value, (v) => _then(v as MovieLoading));

  @override
  MovieLoading get _value => super._value as MovieLoading;
}

/// @nodoc

class _$MovieLoading with DiagnosticableTreeMixin implements MovieLoading {
  const _$MovieLoading();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeViewState.movieLoading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'HomeViewState.movieLoading'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is MovieLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() movieLoading,
    required TResult Function(String error) error,
    required TResult Function(List<MovieEntity> movies) loaded,
  }) {
    return movieLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? movieLoading,
    TResult Function(String error)? error,
    TResult Function(List<MovieEntity> movies)? loaded,
  }) {
    return movieLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? movieLoading,
    TResult Function(String error)? error,
    TResult Function(List<MovieEntity> movies)? loaded,
    required TResult orElse(),
  }) {
    if (movieLoading != null) {
      return movieLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Loading value) loading,
    required TResult Function(MovieLoading value) movieLoading,
    required TResult Function(Error value) error,
    required TResult Function(Loaded value) loaded,
  }) {
    return movieLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(MovieLoading value)? movieLoading,
    TResult Function(Error value)? error,
    TResult Function(Loaded value)? loaded,
  }) {
    return movieLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(MovieLoading value)? movieLoading,
    TResult Function(Error value)? error,
    TResult Function(Loaded value)? loaded,
    required TResult orElse(),
  }) {
    if (movieLoading != null) {
      return movieLoading(this);
    }
    return orElse();
  }
}

abstract class MovieLoading implements HomeViewState {
  const factory MovieLoading() = _$MovieLoading;
}

/// @nodoc
abstract class $ErrorCopyWith<$Res> {
  factory $ErrorCopyWith(Error value, $Res Function(Error) then) =
      _$ErrorCopyWithImpl<$Res>;
  $Res call({String error});
}

/// @nodoc
class _$ErrorCopyWithImpl<$Res> extends _$HomeViewStateCopyWithImpl<$Res>
    implements $ErrorCopyWith<$Res> {
  _$ErrorCopyWithImpl(Error _value, $Res Function(Error) _then)
      : super(_value, (v) => _then(v as Error));

  @override
  Error get _value => super._value as Error;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(Error(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$Error with DiagnosticableTreeMixin implements Error {
  const _$Error(this.error);

  @override
  final String error;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeViewState.error(error: $error)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'HomeViewState.error'))
      ..add(DiagnosticsProperty('error', error));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Error &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  $ErrorCopyWith<Error> get copyWith =>
      _$ErrorCopyWithImpl<Error>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() movieLoading,
    required TResult Function(String error) error,
    required TResult Function(List<MovieEntity> movies) loaded,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? movieLoading,
    TResult Function(String error)? error,
    TResult Function(List<MovieEntity> movies)? loaded,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? movieLoading,
    TResult Function(String error)? error,
    TResult Function(List<MovieEntity> movies)? loaded,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Loading value) loading,
    required TResult Function(MovieLoading value) movieLoading,
    required TResult Function(Error value) error,
    required TResult Function(Loaded value) loaded,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(MovieLoading value)? movieLoading,
    TResult Function(Error value)? error,
    TResult Function(Loaded value)? loaded,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(MovieLoading value)? movieLoading,
    TResult Function(Error value)? error,
    TResult Function(Loaded value)? loaded,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class Error implements HomeViewState {
  const factory Error(String error) = _$Error;

  String get error;
  @JsonKey(ignore: true)
  $ErrorCopyWith<Error> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoadedCopyWith<$Res> {
  factory $LoadedCopyWith(Loaded value, $Res Function(Loaded) then) =
      _$LoadedCopyWithImpl<$Res>;
  $Res call({List<MovieEntity> movies});
}

/// @nodoc
class _$LoadedCopyWithImpl<$Res> extends _$HomeViewStateCopyWithImpl<$Res>
    implements $LoadedCopyWith<$Res> {
  _$LoadedCopyWithImpl(Loaded _value, $Res Function(Loaded) _then)
      : super(_value, (v) => _then(v as Loaded));

  @override
  Loaded get _value => super._value as Loaded;

  @override
  $Res call({
    Object? movies = freezed,
  }) {
    return _then(Loaded(
      movies == freezed
          ? _value.movies
          : movies // ignore: cast_nullable_to_non_nullable
              as List<MovieEntity>,
    ));
  }
}

/// @nodoc

class _$Loaded with DiagnosticableTreeMixin implements Loaded {
  const _$Loaded(this.movies);

  @override
  final List<MovieEntity> movies;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeViewState.loaded(movies: $movies)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'HomeViewState.loaded'))
      ..add(DiagnosticsProperty('movies', movies));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Loaded &&
            const DeepCollectionEquality().equals(other.movies, movies));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(movies));

  @JsonKey(ignore: true)
  @override
  $LoadedCopyWith<Loaded> get copyWith =>
      _$LoadedCopyWithImpl<Loaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() movieLoading,
    required TResult Function(String error) error,
    required TResult Function(List<MovieEntity> movies) loaded,
  }) {
    return loaded(movies);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? movieLoading,
    TResult Function(String error)? error,
    TResult Function(List<MovieEntity> movies)? loaded,
  }) {
    return loaded?.call(movies);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? movieLoading,
    TResult Function(String error)? error,
    TResult Function(List<MovieEntity> movies)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(movies);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Loading value) loading,
    required TResult Function(MovieLoading value) movieLoading,
    required TResult Function(Error value) error,
    required TResult Function(Loaded value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(MovieLoading value)? movieLoading,
    TResult Function(Error value)? error,
    TResult Function(Loaded value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(MovieLoading value)? movieLoading,
    TResult Function(Error value)? error,
    TResult Function(Loaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class Loaded implements HomeViewState {
  const factory Loaded(List<MovieEntity> movies) = _$Loaded;

  List<MovieEntity> get movies;
  @JsonKey(ignore: true)
  $LoadedCopyWith<Loaded> get copyWith => throw _privateConstructorUsedError;
}
