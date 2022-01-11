// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'torrent_metadata.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$TorrentMetaDataTearOff {
  const _$TorrentMetaDataTearOff();

  Downloaded downloaded(String hash) {
    return Downloaded(
      hash,
    );
  }

  Downloading downloading(double percentageDone, String hash) {
    return Downloading(
      percentageDone,
      hash,
    );
  }
}

/// @nodoc
const $TorrentMetaData = _$TorrentMetaDataTearOff();

/// @nodoc
mixin _$TorrentMetaData {
  String get hash => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String hash) downloaded,
    required TResult Function(double percentageDone, String hash) downloading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String hash)? downloaded,
    TResult Function(double percentageDone, String hash)? downloading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String hash)? downloaded,
    TResult Function(double percentageDone, String hash)? downloading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Downloaded value) downloaded,
    required TResult Function(Downloading value) downloading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Downloaded value)? downloaded,
    TResult Function(Downloading value)? downloading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Downloaded value)? downloaded,
    TResult Function(Downloading value)? downloading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TorrentMetaDataCopyWith<TorrentMetaData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TorrentMetaDataCopyWith<$Res> {
  factory $TorrentMetaDataCopyWith(
          TorrentMetaData value, $Res Function(TorrentMetaData) then) =
      _$TorrentMetaDataCopyWithImpl<$Res>;
  $Res call({String hash});
}

/// @nodoc
class _$TorrentMetaDataCopyWithImpl<$Res>
    implements $TorrentMetaDataCopyWith<$Res> {
  _$TorrentMetaDataCopyWithImpl(this._value, this._then);

  final TorrentMetaData _value;
  // ignore: unused_field
  final $Res Function(TorrentMetaData) _then;

  @override
  $Res call({
    Object? hash = freezed,
  }) {
    return _then(_value.copyWith(
      hash: hash == freezed
          ? _value.hash
          : hash // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class $DownloadedCopyWith<$Res>
    implements $TorrentMetaDataCopyWith<$Res> {
  factory $DownloadedCopyWith(
          Downloaded value, $Res Function(Downloaded) then) =
      _$DownloadedCopyWithImpl<$Res>;
  @override
  $Res call({String hash});
}

/// @nodoc
class _$DownloadedCopyWithImpl<$Res> extends _$TorrentMetaDataCopyWithImpl<$Res>
    implements $DownloadedCopyWith<$Res> {
  _$DownloadedCopyWithImpl(Downloaded _value, $Res Function(Downloaded) _then)
      : super(_value, (v) => _then(v as Downloaded));

  @override
  Downloaded get _value => super._value as Downloaded;

  @override
  $Res call({
    Object? hash = freezed,
  }) {
    return _then(Downloaded(
      hash == freezed
          ? _value.hash
          : hash // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$Downloaded implements Downloaded {
  const _$Downloaded(this.hash);

  @override
  final String hash;

  @override
  String toString() {
    return 'TorrentMetaData.downloaded(hash: $hash)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Downloaded &&
            const DeepCollectionEquality().equals(other.hash, hash));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(hash));

  @JsonKey(ignore: true)
  @override
  $DownloadedCopyWith<Downloaded> get copyWith =>
      _$DownloadedCopyWithImpl<Downloaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String hash) downloaded,
    required TResult Function(double percentageDone, String hash) downloading,
  }) {
    return downloaded(hash);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String hash)? downloaded,
    TResult Function(double percentageDone, String hash)? downloading,
  }) {
    return downloaded?.call(hash);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String hash)? downloaded,
    TResult Function(double percentageDone, String hash)? downloading,
    required TResult orElse(),
  }) {
    if (downloaded != null) {
      return downloaded(hash);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Downloaded value) downloaded,
    required TResult Function(Downloading value) downloading,
  }) {
    return downloaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Downloaded value)? downloaded,
    TResult Function(Downloading value)? downloading,
  }) {
    return downloaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Downloaded value)? downloaded,
    TResult Function(Downloading value)? downloading,
    required TResult orElse(),
  }) {
    if (downloaded != null) {
      return downloaded(this);
    }
    return orElse();
  }
}

abstract class Downloaded implements TorrentMetaData {
  const factory Downloaded(String hash) = _$Downloaded;

  @override
  String get hash;
  @override
  @JsonKey(ignore: true)
  $DownloadedCopyWith<Downloaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DownloadingCopyWith<$Res>
    implements $TorrentMetaDataCopyWith<$Res> {
  factory $DownloadingCopyWith(
          Downloading value, $Res Function(Downloading) then) =
      _$DownloadingCopyWithImpl<$Res>;
  @override
  $Res call({double percentageDone, String hash});
}

/// @nodoc
class _$DownloadingCopyWithImpl<$Res>
    extends _$TorrentMetaDataCopyWithImpl<$Res>
    implements $DownloadingCopyWith<$Res> {
  _$DownloadingCopyWithImpl(
      Downloading _value, $Res Function(Downloading) _then)
      : super(_value, (v) => _then(v as Downloading));

  @override
  Downloading get _value => super._value as Downloading;

  @override
  $Res call({
    Object? percentageDone = freezed,
    Object? hash = freezed,
  }) {
    return _then(Downloading(
      percentageDone == freezed
          ? _value.percentageDone
          : percentageDone // ignore: cast_nullable_to_non_nullable
              as double,
      hash == freezed
          ? _value.hash
          : hash // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$Downloading implements Downloading {
  const _$Downloading(this.percentageDone, this.hash);

  @override
  final double percentageDone;
  @override
  final String hash;

  @override
  String toString() {
    return 'TorrentMetaData.downloading(percentageDone: $percentageDone, hash: $hash)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Downloading &&
            const DeepCollectionEquality()
                .equals(other.percentageDone, percentageDone) &&
            const DeepCollectionEquality().equals(other.hash, hash));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(percentageDone),
      const DeepCollectionEquality().hash(hash));

  @JsonKey(ignore: true)
  @override
  $DownloadingCopyWith<Downloading> get copyWith =>
      _$DownloadingCopyWithImpl<Downloading>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String hash) downloaded,
    required TResult Function(double percentageDone, String hash) downloading,
  }) {
    return downloading(percentageDone, hash);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String hash)? downloaded,
    TResult Function(double percentageDone, String hash)? downloading,
  }) {
    return downloading?.call(percentageDone, hash);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String hash)? downloaded,
    TResult Function(double percentageDone, String hash)? downloading,
    required TResult orElse(),
  }) {
    if (downloading != null) {
      return downloading(percentageDone, hash);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Downloaded value) downloaded,
    required TResult Function(Downloading value) downloading,
  }) {
    return downloading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Downloaded value)? downloaded,
    TResult Function(Downloading value)? downloading,
  }) {
    return downloading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Downloaded value)? downloaded,
    TResult Function(Downloading value)? downloading,
    required TResult orElse(),
  }) {
    if (downloading != null) {
      return downloading(this);
    }
    return orElse();
  }
}

abstract class Downloading implements TorrentMetaData {
  const factory Downloading(double percentageDone, String hash) = _$Downloading;

  double get percentageDone;
  @override
  String get hash;
  @override
  @JsonKey(ignore: true)
  $DownloadingCopyWith<Downloading> get copyWith =>
      throw _privateConstructorUsedError;
}
