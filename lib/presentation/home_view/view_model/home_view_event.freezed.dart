// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'home_view_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$HomeViewEventTearOff {
  const _$HomeViewEventTearOff();

  LoadPages loadPages() {
    return const LoadPages();
  }

  SearchMovie searchMovie(String name) {
    return SearchMovie(
      name,
    );
  }
}

/// @nodoc
const $HomeViewEvent = _$HomeViewEventTearOff();

/// @nodoc
mixin _$HomeViewEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadPages,
    required TResult Function(String name) searchMovie,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadPages,
    TResult Function(String name)? searchMovie,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadPages,
    TResult Function(String name)? searchMovie,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadPages value) loadPages,
    required TResult Function(SearchMovie value) searchMovie,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadPages value)? loadPages,
    TResult Function(SearchMovie value)? searchMovie,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadPages value)? loadPages,
    TResult Function(SearchMovie value)? searchMovie,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeViewEventCopyWith<$Res> {
  factory $HomeViewEventCopyWith(
          HomeViewEvent value, $Res Function(HomeViewEvent) then) =
      _$HomeViewEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$HomeViewEventCopyWithImpl<$Res>
    implements $HomeViewEventCopyWith<$Res> {
  _$HomeViewEventCopyWithImpl(this._value, this._then);

  final HomeViewEvent _value;
  // ignore: unused_field
  final $Res Function(HomeViewEvent) _then;
}

/// @nodoc
abstract class $LoadPagesCopyWith<$Res> {
  factory $LoadPagesCopyWith(LoadPages value, $Res Function(LoadPages) then) =
      _$LoadPagesCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadPagesCopyWithImpl<$Res> extends _$HomeViewEventCopyWithImpl<$Res>
    implements $LoadPagesCopyWith<$Res> {
  _$LoadPagesCopyWithImpl(LoadPages _value, $Res Function(LoadPages) _then)
      : super(_value, (v) => _then(v as LoadPages));

  @override
  LoadPages get _value => super._value as LoadPages;
}

/// @nodoc

class _$LoadPages with DiagnosticableTreeMixin implements LoadPages {
  const _$LoadPages();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeViewEvent.loadPages()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'HomeViewEvent.loadPages'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is LoadPages);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadPages,
    required TResult Function(String name) searchMovie,
  }) {
    return loadPages();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadPages,
    TResult Function(String name)? searchMovie,
  }) {
    return loadPages?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadPages,
    TResult Function(String name)? searchMovie,
    required TResult orElse(),
  }) {
    if (loadPages != null) {
      return loadPages();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadPages value) loadPages,
    required TResult Function(SearchMovie value) searchMovie,
  }) {
    return loadPages(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadPages value)? loadPages,
    TResult Function(SearchMovie value)? searchMovie,
  }) {
    return loadPages?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadPages value)? loadPages,
    TResult Function(SearchMovie value)? searchMovie,
    required TResult orElse(),
  }) {
    if (loadPages != null) {
      return loadPages(this);
    }
    return orElse();
  }
}

abstract class LoadPages implements HomeViewEvent {
  const factory LoadPages() = _$LoadPages;
}

/// @nodoc
abstract class $SearchMovieCopyWith<$Res> {
  factory $SearchMovieCopyWith(
          SearchMovie value, $Res Function(SearchMovie) then) =
      _$SearchMovieCopyWithImpl<$Res>;
  $Res call({String name});
}

/// @nodoc
class _$SearchMovieCopyWithImpl<$Res> extends _$HomeViewEventCopyWithImpl<$Res>
    implements $SearchMovieCopyWith<$Res> {
  _$SearchMovieCopyWithImpl(
      SearchMovie _value, $Res Function(SearchMovie) _then)
      : super(_value, (v) => _then(v as SearchMovie));

  @override
  SearchMovie get _value => super._value as SearchMovie;

  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(SearchMovie(
      name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SearchMovie with DiagnosticableTreeMixin implements SearchMovie {
  const _$SearchMovie(this.name);

  @override
  final String name;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeViewEvent.searchMovie(name: $name)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'HomeViewEvent.searchMovie'))
      ..add(DiagnosticsProperty('name', name));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SearchMovie &&
            const DeepCollectionEquality().equals(other.name, name));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(name));

  @JsonKey(ignore: true)
  @override
  $SearchMovieCopyWith<SearchMovie> get copyWith =>
      _$SearchMovieCopyWithImpl<SearchMovie>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadPages,
    required TResult Function(String name) searchMovie,
  }) {
    return searchMovie(name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadPages,
    TResult Function(String name)? searchMovie,
  }) {
    return searchMovie?.call(name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadPages,
    TResult Function(String name)? searchMovie,
    required TResult orElse(),
  }) {
    if (searchMovie != null) {
      return searchMovie(name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadPages value) loadPages,
    required TResult Function(SearchMovie value) searchMovie,
  }) {
    return searchMovie(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadPages value)? loadPages,
    TResult Function(SearchMovie value)? searchMovie,
  }) {
    return searchMovie?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadPages value)? loadPages,
    TResult Function(SearchMovie value)? searchMovie,
    required TResult orElse(),
  }) {
    if (searchMovie != null) {
      return searchMovie(this);
    }
    return orElse();
  }
}

abstract class SearchMovie implements HomeViewEvent {
  const factory SearchMovie(String name) = _$SearchMovie;

  String get name;
  @JsonKey(ignore: true)
  $SearchMovieCopyWith<SearchMovie> get copyWith =>
      throw _privateConstructorUsedError;
}
