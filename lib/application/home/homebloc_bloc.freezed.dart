// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'homebloc_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HomeblocEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadTrendingMovies,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadTrendingMovies,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadTrendingMovies,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadTrendingMovies value) loadTrendingMovies,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadTrendingMovies value)? loadTrendingMovies,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadTrendingMovies value)? loadTrendingMovies,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeblocEventCopyWith<$Res> {
  factory $HomeblocEventCopyWith(
          HomeblocEvent value, $Res Function(HomeblocEvent) then) =
      _$HomeblocEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$HomeblocEventCopyWithImpl<$Res>
    implements $HomeblocEventCopyWith<$Res> {
  _$HomeblocEventCopyWithImpl(this._value, this._then);

  final HomeblocEvent _value;
  // ignore: unused_field
  final $Res Function(HomeblocEvent) _then;
}

/// @nodoc
abstract class _$$LoadTrendingMoviesCopyWith<$Res> {
  factory _$$LoadTrendingMoviesCopyWith(_$LoadTrendingMovies value,
          $Res Function(_$LoadTrendingMovies) then) =
      __$$LoadTrendingMoviesCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadTrendingMoviesCopyWithImpl<$Res>
    extends _$HomeblocEventCopyWithImpl<$Res>
    implements _$$LoadTrendingMoviesCopyWith<$Res> {
  __$$LoadTrendingMoviesCopyWithImpl(
      _$LoadTrendingMovies _value, $Res Function(_$LoadTrendingMovies) _then)
      : super(_value, (v) => _then(v as _$LoadTrendingMovies));

  @override
  _$LoadTrendingMovies get _value => super._value as _$LoadTrendingMovies;
}

/// @nodoc

class _$LoadTrendingMovies
    with DiagnosticableTreeMixin
    implements LoadTrendingMovies {
  const _$LoadTrendingMovies();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeblocEvent.loadTrendingMovies()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'HomeblocEvent.loadTrendingMovies'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadTrendingMovies);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadTrendingMovies,
  }) {
    return loadTrendingMovies();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadTrendingMovies,
  }) {
    return loadTrendingMovies?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadTrendingMovies,
    required TResult orElse(),
  }) {
    if (loadTrendingMovies != null) {
      return loadTrendingMovies();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadTrendingMovies value) loadTrendingMovies,
  }) {
    return loadTrendingMovies(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadTrendingMovies value)? loadTrendingMovies,
  }) {
    return loadTrendingMovies?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadTrendingMovies value)? loadTrendingMovies,
    required TResult orElse(),
  }) {
    if (loadTrendingMovies != null) {
      return loadTrendingMovies(this);
    }
    return orElse();
  }
}

abstract class LoadTrendingMovies implements HomeblocEvent {
  const factory LoadTrendingMovies() = _$LoadTrendingMovies;
}

/// @nodoc
mixin _$HomeblocState {
  List<MainScreenData>? get moviesList => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeblocStateCopyWith<HomeblocState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeblocStateCopyWith<$Res> {
  factory $HomeblocStateCopyWith(
          HomeblocState value, $Res Function(HomeblocState) then) =
      _$HomeblocStateCopyWithImpl<$Res>;
  $Res call({List<MainScreenData>? moviesList, bool isLoading, bool isError});
}

/// @nodoc
class _$HomeblocStateCopyWithImpl<$Res>
    implements $HomeblocStateCopyWith<$Res> {
  _$HomeblocStateCopyWithImpl(this._value, this._then);

  final HomeblocState _value;
  // ignore: unused_field
  final $Res Function(HomeblocState) _then;

  @override
  $Res call({
    Object? moviesList = freezed,
    Object? isLoading = freezed,
    Object? isError = freezed,
  }) {
    return _then(_value.copyWith(
      moviesList: moviesList == freezed
          ? _value.moviesList
          : moviesList // ignore: cast_nullable_to_non_nullable
              as List<MainScreenData>?,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: isError == freezed
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res>
    implements $HomeblocStateCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  @override
  $Res call({List<MainScreenData>? moviesList, bool isLoading, bool isError});
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res> extends _$HomeblocStateCopyWithImpl<$Res>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, (v) => _then(v as _$_Initial));

  @override
  _$_Initial get _value => super._value as _$_Initial;

  @override
  $Res call({
    Object? moviesList = freezed,
    Object? isLoading = freezed,
    Object? isError = freezed,
  }) {
    return _then(_$_Initial(
      moviesList: moviesList == freezed
          ? _value._moviesList
          : moviesList // ignore: cast_nullable_to_non_nullable
              as List<MainScreenData>?,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: isError == freezed
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_Initial with DiagnosticableTreeMixin implements _Initial {
  const _$_Initial(
      {final List<MainScreenData>? moviesList,
      required this.isLoading,
      required this.isError})
      : _moviesList = moviesList;

  final List<MainScreenData>? _moviesList;
  @override
  List<MainScreenData>? get moviesList {
    final value = _moviesList;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final bool isLoading;
  @override
  final bool isError;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeblocState(moviesList: $moviesList, isLoading: $isLoading, isError: $isError)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'HomeblocState'))
      ..add(DiagnosticsProperty('moviesList', moviesList))
      ..add(DiagnosticsProperty('isLoading', isLoading))
      ..add(DiagnosticsProperty('isError', isError));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initial &&
            const DeepCollectionEquality()
                .equals(other._moviesList, _moviesList) &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality().equals(other.isError, isError));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_moviesList),
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(isError));

  @JsonKey(ignore: true)
  @override
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      __$$_InitialCopyWithImpl<_$_Initial>(this, _$identity);
}

abstract class _Initial implements HomeblocState {
  const factory _Initial(
      {final List<MainScreenData>? moviesList,
      required final bool isLoading,
      required final bool isError}) = _$_Initial;

  @override
  List<MainScreenData>? get moviesList => throw _privateConstructorUsedError;
  @override
  bool get isLoading => throw _privateConstructorUsedError;
  @override
  bool get isError => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}
