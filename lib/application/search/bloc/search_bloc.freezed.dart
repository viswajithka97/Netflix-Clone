// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'search_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SearchEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() intialize,
    required TResult Function(String query) searchMovie,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? intialize,
    TResult Function(String query)? searchMovie,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? intialize,
    TResult Function(String query)? searchMovie,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Intialize value) intialize,
    required TResult Function(SearchMovie value) searchMovie,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Intialize value)? intialize,
    TResult Function(SearchMovie value)? searchMovie,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Intialize value)? intialize,
    TResult Function(SearchMovie value)? searchMovie,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchEventCopyWith<$Res> {
  factory $SearchEventCopyWith(
          SearchEvent value, $Res Function(SearchEvent) then) =
      _$SearchEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SearchEventCopyWithImpl<$Res> implements $SearchEventCopyWith<$Res> {
  _$SearchEventCopyWithImpl(this._value, this._then);

  final SearchEvent _value;
  // ignore: unused_field
  final $Res Function(SearchEvent) _then;
}

/// @nodoc
abstract class _$$IntializeCopyWith<$Res> {
  factory _$$IntializeCopyWith(
          _$Intialize value, $Res Function(_$Intialize) then) =
      __$$IntializeCopyWithImpl<$Res>;
}

/// @nodoc
class __$$IntializeCopyWithImpl<$Res> extends _$SearchEventCopyWithImpl<$Res>
    implements _$$IntializeCopyWith<$Res> {
  __$$IntializeCopyWithImpl(
      _$Intialize _value, $Res Function(_$Intialize) _then)
      : super(_value, (v) => _then(v as _$Intialize));

  @override
  _$Intialize get _value => super._value as _$Intialize;
}

/// @nodoc

class _$Intialize implements Intialize {
  const _$Intialize();

  @override
  String toString() {
    return 'SearchEvent.intialize()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Intialize);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() intialize,
    required TResult Function(String query) searchMovie,
  }) {
    return intialize();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? intialize,
    TResult Function(String query)? searchMovie,
  }) {
    return intialize?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? intialize,
    TResult Function(String query)? searchMovie,
    required TResult orElse(),
  }) {
    if (intialize != null) {
      return intialize();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Intialize value) intialize,
    required TResult Function(SearchMovie value) searchMovie,
  }) {
    return intialize(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Intialize value)? intialize,
    TResult Function(SearchMovie value)? searchMovie,
  }) {
    return intialize?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Intialize value)? intialize,
    TResult Function(SearchMovie value)? searchMovie,
    required TResult orElse(),
  }) {
    if (intialize != null) {
      return intialize(this);
    }
    return orElse();
  }
}

abstract class Intialize implements SearchEvent {
  const factory Intialize() = _$Intialize;
}

/// @nodoc
abstract class _$$SearchMovieCopyWith<$Res> {
  factory _$$SearchMovieCopyWith(
          _$SearchMovie value, $Res Function(_$SearchMovie) then) =
      __$$SearchMovieCopyWithImpl<$Res>;
  $Res call({String query});
}

/// @nodoc
class __$$SearchMovieCopyWithImpl<$Res> extends _$SearchEventCopyWithImpl<$Res>
    implements _$$SearchMovieCopyWith<$Res> {
  __$$SearchMovieCopyWithImpl(
      _$SearchMovie _value, $Res Function(_$SearchMovie) _then)
      : super(_value, (v) => _then(v as _$SearchMovie));

  @override
  _$SearchMovie get _value => super._value as _$SearchMovie;

  @override
  $Res call({
    Object? query = freezed,
  }) {
    return _then(_$SearchMovie(
      query: query == freezed
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SearchMovie implements SearchMovie {
  const _$SearchMovie({required this.query});

  @override
  final String query;

  @override
  String toString() {
    return 'SearchEvent.searchMovie(query: $query)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchMovie &&
            const DeepCollectionEquality().equals(other.query, query));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(query));

  @JsonKey(ignore: true)
  @override
  _$$SearchMovieCopyWith<_$SearchMovie> get copyWith =>
      __$$SearchMovieCopyWithImpl<_$SearchMovie>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() intialize,
    required TResult Function(String query) searchMovie,
  }) {
    return searchMovie(query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? intialize,
    TResult Function(String query)? searchMovie,
  }) {
    return searchMovie?.call(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? intialize,
    TResult Function(String query)? searchMovie,
    required TResult orElse(),
  }) {
    if (searchMovie != null) {
      return searchMovie(query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Intialize value) intialize,
    required TResult Function(SearchMovie value) searchMovie,
  }) {
    return searchMovie(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Intialize value)? intialize,
    TResult Function(SearchMovie value)? searchMovie,
  }) {
    return searchMovie?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Intialize value)? intialize,
    TResult Function(SearchMovie value)? searchMovie,
    required TResult orElse(),
  }) {
    if (searchMovie != null) {
      return searchMovie(this);
    }
    return orElse();
  }
}

abstract class SearchMovie implements SearchEvent {
  const factory SearchMovie({required final String query}) = _$SearchMovie;

  String get query => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$SearchMovieCopyWith<_$SearchMovie> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SearchState {
  List<SearchResultData> get searchResultData =>
      throw _privateConstructorUsedError;
  List<Downloads> get IdleList => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchStateCopyWith<SearchState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchStateCopyWith<$Res> {
  factory $SearchStateCopyWith(
          SearchState value, $Res Function(SearchState) then) =
      _$SearchStateCopyWithImpl<$Res>;
  $Res call(
      {List<SearchResultData> searchResultData,
      List<Downloads> IdleList,
      bool isLoading,
      bool isError});
}

/// @nodoc
class _$SearchStateCopyWithImpl<$Res> implements $SearchStateCopyWith<$Res> {
  _$SearchStateCopyWithImpl(this._value, this._then);

  final SearchState _value;
  // ignore: unused_field
  final $Res Function(SearchState) _then;

  @override
  $Res call({
    Object? searchResultData = freezed,
    Object? IdleList = freezed,
    Object? isLoading = freezed,
    Object? isError = freezed,
  }) {
    return _then(_value.copyWith(
      searchResultData: searchResultData == freezed
          ? _value.searchResultData
          : searchResultData // ignore: cast_nullable_to_non_nullable
              as List<SearchResultData>,
      IdleList: IdleList == freezed
          ? _value.IdleList
          : IdleList // ignore: cast_nullable_to_non_nullable
              as List<Downloads>,
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
abstract class _$$_SearchStateCopyWith<$Res>
    implements $SearchStateCopyWith<$Res> {
  factory _$$_SearchStateCopyWith(
          _$_SearchState value, $Res Function(_$_SearchState) then) =
      __$$_SearchStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<SearchResultData> searchResultData,
      List<Downloads> IdleList,
      bool isLoading,
      bool isError});
}

/// @nodoc
class __$$_SearchStateCopyWithImpl<$Res> extends _$SearchStateCopyWithImpl<$Res>
    implements _$$_SearchStateCopyWith<$Res> {
  __$$_SearchStateCopyWithImpl(
      _$_SearchState _value, $Res Function(_$_SearchState) _then)
      : super(_value, (v) => _then(v as _$_SearchState));

  @override
  _$_SearchState get _value => super._value as _$_SearchState;

  @override
  $Res call({
    Object? searchResultData = freezed,
    Object? IdleList = freezed,
    Object? isLoading = freezed,
    Object? isError = freezed,
  }) {
    return _then(_$_SearchState(
      searchResultData: searchResultData == freezed
          ? _value._searchResultData
          : searchResultData // ignore: cast_nullable_to_non_nullable
              as List<SearchResultData>,
      IdleList: IdleList == freezed
          ? _value._IdleList
          : IdleList // ignore: cast_nullable_to_non_nullable
              as List<Downloads>,
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

class _$_SearchState implements _SearchState {
  const _$_SearchState(
      {required final List<SearchResultData> searchResultData,
      required final List<Downloads> IdleList,
      required this.isLoading,
      required this.isError})
      : _searchResultData = searchResultData,
        _IdleList = IdleList;

  final List<SearchResultData> _searchResultData;
  @override
  List<SearchResultData> get searchResultData {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_searchResultData);
  }

  final List<Downloads> _IdleList;
  @override
  List<Downloads> get IdleList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_IdleList);
  }

  @override
  final bool isLoading;
  @override
  final bool isError;

  @override
  String toString() {
    return 'SearchState(searchResultData: $searchResultData, IdleList: $IdleList, isLoading: $isLoading, isError: $isError)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchState &&
            const DeepCollectionEquality()
                .equals(other._searchResultData, _searchResultData) &&
            const DeepCollectionEquality().equals(other._IdleList, _IdleList) &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality().equals(other.isError, isError));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_searchResultData),
      const DeepCollectionEquality().hash(_IdleList),
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(isError));

  @JsonKey(ignore: true)
  @override
  _$$_SearchStateCopyWith<_$_SearchState> get copyWith =>
      __$$_SearchStateCopyWithImpl<_$_SearchState>(this, _$identity);
}

abstract class _SearchState implements SearchState {
  const factory _SearchState(
      {required final List<SearchResultData> searchResultData,
      required final List<Downloads> IdleList,
      required final bool isLoading,
      required final bool isError}) = _$_SearchState;

  @override
  List<SearchResultData> get searchResultData =>
      throw _privateConstructorUsedError;
  @override
  List<Downloads> get IdleList => throw _privateConstructorUsedError;
  @override
  bool get isLoading => throw _privateConstructorUsedError;
  @override
  bool get isError => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_SearchStateCopyWith<_$_SearchState> get copyWith =>
      throw _privateConstructorUsedError;
}
