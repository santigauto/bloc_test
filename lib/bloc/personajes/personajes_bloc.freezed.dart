// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'personajes_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PersonajesEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(bool isRefresh) getMore,
    required TResult Function(String query) search,
    required TResult Function(String id, String dateTime, String characterName)
        create,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(bool isRefresh)? getMore,
    TResult? Function(String query)? search,
    TResult? Function(String id, String dateTime, String characterName)? create,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(bool isRefresh)? getMore,
    TResult Function(String query)? search,
    TResult Function(String id, String dateTime, String characterName)? create,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PersonajesInitialLoadStarted value) started,
    required TResult Function(PersonajesGetMore value) getMore,
    required TResult Function(PersonajesSearch value) search,
    required TResult Function(PersonajesCreate value) create,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PersonajesInitialLoadStarted value)? started,
    TResult? Function(PersonajesGetMore value)? getMore,
    TResult? Function(PersonajesSearch value)? search,
    TResult? Function(PersonajesCreate value)? create,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PersonajesInitialLoadStarted value)? started,
    TResult Function(PersonajesGetMore value)? getMore,
    TResult Function(PersonajesSearch value)? search,
    TResult Function(PersonajesCreate value)? create,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PersonajesEventCopyWith<$Res> {
  factory $PersonajesEventCopyWith(
          PersonajesEvent value, $Res Function(PersonajesEvent) then) =
      _$PersonajesEventCopyWithImpl<$Res, PersonajesEvent>;
}

/// @nodoc
class _$PersonajesEventCopyWithImpl<$Res, $Val extends PersonajesEvent>
    implements $PersonajesEventCopyWith<$Res> {
  _$PersonajesEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$PersonajesInitialLoadStartedCopyWith<$Res> {
  factory _$$PersonajesInitialLoadStartedCopyWith(
          _$PersonajesInitialLoadStarted value,
          $Res Function(_$PersonajesInitialLoadStarted) then) =
      __$$PersonajesInitialLoadStartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PersonajesInitialLoadStartedCopyWithImpl<$Res>
    extends _$PersonajesEventCopyWithImpl<$Res, _$PersonajesInitialLoadStarted>
    implements _$$PersonajesInitialLoadStartedCopyWith<$Res> {
  __$$PersonajesInitialLoadStartedCopyWithImpl(
      _$PersonajesInitialLoadStarted _value,
      $Res Function(_$PersonajesInitialLoadStarted) _then)
      : super(_value, _then);
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$PersonajesInitialLoadStarted implements PersonajesInitialLoadStarted {
  const _$PersonajesInitialLoadStarted();

  @override
  String toString() {
    return 'PersonajesEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PersonajesInitialLoadStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(bool isRefresh) getMore,
    required TResult Function(String query) search,
    required TResult Function(String id, String dateTime, String characterName)
        create,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(bool isRefresh)? getMore,
    TResult? Function(String query)? search,
    TResult? Function(String id, String dateTime, String characterName)? create,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(bool isRefresh)? getMore,
    TResult Function(String query)? search,
    TResult Function(String id, String dateTime, String characterName)? create,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PersonajesInitialLoadStarted value) started,
    required TResult Function(PersonajesGetMore value) getMore,
    required TResult Function(PersonajesSearch value) search,
    required TResult Function(PersonajesCreate value) create,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PersonajesInitialLoadStarted value)? started,
    TResult? Function(PersonajesGetMore value)? getMore,
    TResult? Function(PersonajesSearch value)? search,
    TResult? Function(PersonajesCreate value)? create,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PersonajesInitialLoadStarted value)? started,
    TResult Function(PersonajesGetMore value)? getMore,
    TResult Function(PersonajesSearch value)? search,
    TResult Function(PersonajesCreate value)? create,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class PersonajesInitialLoadStarted implements PersonajesEvent {
  const factory PersonajesInitialLoadStarted() = _$PersonajesInitialLoadStarted;
}

/// @nodoc
abstract class _$$PersonajesGetMoreCopyWith<$Res> {
  factory _$$PersonajesGetMoreCopyWith(
          _$PersonajesGetMore value, $Res Function(_$PersonajesGetMore) then) =
      __$$PersonajesGetMoreCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isRefresh});
}

/// @nodoc
class __$$PersonajesGetMoreCopyWithImpl<$Res>
    extends _$PersonajesEventCopyWithImpl<$Res, _$PersonajesGetMore>
    implements _$$PersonajesGetMoreCopyWith<$Res> {
  __$$PersonajesGetMoreCopyWithImpl(
      _$PersonajesGetMore _value, $Res Function(_$PersonajesGetMore) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isRefresh = null,
  }) {
    return _then(_$PersonajesGetMore(
      isRefresh: null == isRefresh
          ? _value.isRefresh
          : isRefresh // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$PersonajesGetMore implements PersonajesGetMore {
  const _$PersonajesGetMore({this.isRefresh = false});

  @override
  @JsonKey()
  final bool isRefresh;

  @override
  String toString() {
    return 'PersonajesEvent.getMore(isRefresh: $isRefresh)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PersonajesGetMore &&
            (identical(other.isRefresh, isRefresh) ||
                other.isRefresh == isRefresh));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isRefresh);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PersonajesGetMoreCopyWith<_$PersonajesGetMore> get copyWith =>
      __$$PersonajesGetMoreCopyWithImpl<_$PersonajesGetMore>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(bool isRefresh) getMore,
    required TResult Function(String query) search,
    required TResult Function(String id, String dateTime, String characterName)
        create,
  }) {
    return getMore(isRefresh);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(bool isRefresh)? getMore,
    TResult? Function(String query)? search,
    TResult? Function(String id, String dateTime, String characterName)? create,
  }) {
    return getMore?.call(isRefresh);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(bool isRefresh)? getMore,
    TResult Function(String query)? search,
    TResult Function(String id, String dateTime, String characterName)? create,
    required TResult orElse(),
  }) {
    if (getMore != null) {
      return getMore(isRefresh);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PersonajesInitialLoadStarted value) started,
    required TResult Function(PersonajesGetMore value) getMore,
    required TResult Function(PersonajesSearch value) search,
    required TResult Function(PersonajesCreate value) create,
  }) {
    return getMore(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PersonajesInitialLoadStarted value)? started,
    TResult? Function(PersonajesGetMore value)? getMore,
    TResult? Function(PersonajesSearch value)? search,
    TResult? Function(PersonajesCreate value)? create,
  }) {
    return getMore?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PersonajesInitialLoadStarted value)? started,
    TResult Function(PersonajesGetMore value)? getMore,
    TResult Function(PersonajesSearch value)? search,
    TResult Function(PersonajesCreate value)? create,
    required TResult orElse(),
  }) {
    if (getMore != null) {
      return getMore(this);
    }
    return orElse();
  }
}

abstract class PersonajesGetMore implements PersonajesEvent {
  const factory PersonajesGetMore({final bool isRefresh}) = _$PersonajesGetMore;

  bool get isRefresh;
  @JsonKey(ignore: true)
  _$$PersonajesGetMoreCopyWith<_$PersonajesGetMore> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PersonajesSearchCopyWith<$Res> {
  factory _$$PersonajesSearchCopyWith(
          _$PersonajesSearch value, $Res Function(_$PersonajesSearch) then) =
      __$$PersonajesSearchCopyWithImpl<$Res>;
  @useResult
  $Res call({String query});
}

/// @nodoc
class __$$PersonajesSearchCopyWithImpl<$Res>
    extends _$PersonajesEventCopyWithImpl<$Res, _$PersonajesSearch>
    implements _$$PersonajesSearchCopyWith<$Res> {
  __$$PersonajesSearchCopyWithImpl(
      _$PersonajesSearch _value, $Res Function(_$PersonajesSearch) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
  }) {
    return _then(_$PersonajesSearch(
      null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PersonajesSearch implements PersonajesSearch {
  const _$PersonajesSearch(this.query);

  @override
  final String query;

  @override
  String toString() {
    return 'PersonajesEvent.search(query: $query)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PersonajesSearch &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PersonajesSearchCopyWith<_$PersonajesSearch> get copyWith =>
      __$$PersonajesSearchCopyWithImpl<_$PersonajesSearch>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(bool isRefresh) getMore,
    required TResult Function(String query) search,
    required TResult Function(String id, String dateTime, String characterName)
        create,
  }) {
    return search(query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(bool isRefresh)? getMore,
    TResult? Function(String query)? search,
    TResult? Function(String id, String dateTime, String characterName)? create,
  }) {
    return search?.call(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(bool isRefresh)? getMore,
    TResult Function(String query)? search,
    TResult Function(String id, String dateTime, String characterName)? create,
    required TResult orElse(),
  }) {
    if (search != null) {
      return search(query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PersonajesInitialLoadStarted value) started,
    required TResult Function(PersonajesGetMore value) getMore,
    required TResult Function(PersonajesSearch value) search,
    required TResult Function(PersonajesCreate value) create,
  }) {
    return search(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PersonajesInitialLoadStarted value)? started,
    TResult? Function(PersonajesGetMore value)? getMore,
    TResult? Function(PersonajesSearch value)? search,
    TResult? Function(PersonajesCreate value)? create,
  }) {
    return search?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PersonajesInitialLoadStarted value)? started,
    TResult Function(PersonajesGetMore value)? getMore,
    TResult Function(PersonajesSearch value)? search,
    TResult Function(PersonajesCreate value)? create,
    required TResult orElse(),
  }) {
    if (search != null) {
      return search(this);
    }
    return orElse();
  }
}

abstract class PersonajesSearch implements PersonajesEvent {
  const factory PersonajesSearch(final String query) = _$PersonajesSearch;

  String get query;
  @JsonKey(ignore: true)
  _$$PersonajesSearchCopyWith<_$PersonajesSearch> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PersonajesCreateCopyWith<$Res> {
  factory _$$PersonajesCreateCopyWith(
          _$PersonajesCreate value, $Res Function(_$PersonajesCreate) then) =
      __$$PersonajesCreateCopyWithImpl<$Res>;
  @useResult
  $Res call({String id, String dateTime, String characterName});
}

/// @nodoc
class __$$PersonajesCreateCopyWithImpl<$Res>
    extends _$PersonajesEventCopyWithImpl<$Res, _$PersonajesCreate>
    implements _$$PersonajesCreateCopyWith<$Res> {
  __$$PersonajesCreateCopyWithImpl(
      _$PersonajesCreate _value, $Res Function(_$PersonajesCreate) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? dateTime = null,
    Object? characterName = null,
  }) {
    return _then(_$PersonajesCreate(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      null == dateTime
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as String,
      null == characterName
          ? _value.characterName
          : characterName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PersonajesCreate implements PersonajesCreate {
  const _$PersonajesCreate(this.id, this.dateTime, this.characterName);

  @override
  final String id;
  @override
  final String dateTime;
  @override
  final String characterName;

  @override
  String toString() {
    return 'PersonajesEvent.create(id: $id, dateTime: $dateTime, characterName: $characterName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PersonajesCreate &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.dateTime, dateTime) ||
                other.dateTime == dateTime) &&
            (identical(other.characterName, characterName) ||
                other.characterName == characterName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, dateTime, characterName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PersonajesCreateCopyWith<_$PersonajesCreate> get copyWith =>
      __$$PersonajesCreateCopyWithImpl<_$PersonajesCreate>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(bool isRefresh) getMore,
    required TResult Function(String query) search,
    required TResult Function(String id, String dateTime, String characterName)
        create,
  }) {
    return create(id, dateTime, characterName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(bool isRefresh)? getMore,
    TResult? Function(String query)? search,
    TResult? Function(String id, String dateTime, String characterName)? create,
  }) {
    return create?.call(id, dateTime, characterName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(bool isRefresh)? getMore,
    TResult Function(String query)? search,
    TResult Function(String id, String dateTime, String characterName)? create,
    required TResult orElse(),
  }) {
    if (create != null) {
      return create(id, dateTime, characterName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PersonajesInitialLoadStarted value) started,
    required TResult Function(PersonajesGetMore value) getMore,
    required TResult Function(PersonajesSearch value) search,
    required TResult Function(PersonajesCreate value) create,
  }) {
    return create(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PersonajesInitialLoadStarted value)? started,
    TResult? Function(PersonajesGetMore value)? getMore,
    TResult? Function(PersonajesSearch value)? search,
    TResult? Function(PersonajesCreate value)? create,
  }) {
    return create?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PersonajesInitialLoadStarted value)? started,
    TResult Function(PersonajesGetMore value)? getMore,
    TResult Function(PersonajesSearch value)? search,
    TResult Function(PersonajesCreate value)? create,
    required TResult orElse(),
  }) {
    if (create != null) {
      return create(this);
    }
    return orElse();
  }
}

abstract class PersonajesCreate implements PersonajesEvent {
  const factory PersonajesCreate(
          final String id, final String dateTime, final String characterName) =
      _$PersonajesCreate;

  String get id;
  String get dateTime;
  String get characterName;
  @JsonKey(ignore: true)
  _$$PersonajesCreateCopyWith<_$PersonajesCreate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PersonajesState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Personajes personajes, bool hasReachedMax) loaded,
    required TResult Function(String message) error,
    required TResult Function() searching,
    required TResult Function(Personajes personajes, bool hasReachedMax)
        searched,
    required TResult Function() created,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Personajes personajes, bool hasReachedMax)? loaded,
    TResult? Function(String message)? error,
    TResult? Function()? searching,
    TResult? Function(Personajes personajes, bool hasReachedMax)? searched,
    TResult? Function()? created,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Personajes personajes, bool hasReachedMax)? loaded,
    TResult Function(String message)? error,
    TResult Function()? searching,
    TResult Function(Personajes personajes, bool hasReachedMax)? searched,
    TResult Function()? created,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
    required TResult Function(_Searching value) searching,
    required TResult Function(_Searched value) searched,
    required TResult Function(_Created value) created,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
    TResult? Function(_Searching value)? searching,
    TResult? Function(_Searched value)? searched,
    TResult? Function(_Created value)? created,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    TResult Function(_Searching value)? searching,
    TResult Function(_Searched value)? searched,
    TResult Function(_Created value)? created,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PersonajesStateCopyWith<$Res> {
  factory $PersonajesStateCopyWith(
          PersonajesState value, $Res Function(PersonajesState) then) =
      _$PersonajesStateCopyWithImpl<$Res, PersonajesState>;
}

/// @nodoc
class _$PersonajesStateCopyWithImpl<$Res, $Val extends PersonajesState>
    implements $PersonajesStateCopyWith<$Res> {
  _$PersonajesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$PersonajesStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'PersonajesState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Personajes personajes, bool hasReachedMax) loaded,
    required TResult Function(String message) error,
    required TResult Function() searching,
    required TResult Function(Personajes personajes, bool hasReachedMax)
        searched,
    required TResult Function() created,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Personajes personajes, bool hasReachedMax)? loaded,
    TResult? Function(String message)? error,
    TResult? Function()? searching,
    TResult? Function(Personajes personajes, bool hasReachedMax)? searched,
    TResult? Function()? created,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Personajes personajes, bool hasReachedMax)? loaded,
    TResult Function(String message)? error,
    TResult Function()? searching,
    TResult Function(Personajes personajes, bool hasReachedMax)? searched,
    TResult Function()? created,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
    required TResult Function(_Searching value) searching,
    required TResult Function(_Searched value) searched,
    required TResult Function(_Created value) created,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
    TResult? Function(_Searching value)? searching,
    TResult? Function(_Searched value)? searched,
    TResult? Function(_Created value)? created,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    TResult Function(_Searching value)? searching,
    TResult Function(_Searched value)? searched,
    TResult Function(_Created value)? created,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements PersonajesState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_LoadingCopyWith<$Res> {
  factory _$$_LoadingCopyWith(
          _$_Loading value, $Res Function(_$_Loading) then) =
      __$$_LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadingCopyWithImpl<$Res>
    extends _$PersonajesStateCopyWithImpl<$Res, _$_Loading>
    implements _$$_LoadingCopyWith<$Res> {
  __$$_LoadingCopyWithImpl(_$_Loading _value, $Res Function(_$_Loading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'PersonajesState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Personajes personajes, bool hasReachedMax) loaded,
    required TResult Function(String message) error,
    required TResult Function() searching,
    required TResult Function(Personajes personajes, bool hasReachedMax)
        searched,
    required TResult Function() created,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Personajes personajes, bool hasReachedMax)? loaded,
    TResult? Function(String message)? error,
    TResult? Function()? searching,
    TResult? Function(Personajes personajes, bool hasReachedMax)? searched,
    TResult? Function()? created,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Personajes personajes, bool hasReachedMax)? loaded,
    TResult Function(String message)? error,
    TResult Function()? searching,
    TResult Function(Personajes personajes, bool hasReachedMax)? searched,
    TResult Function()? created,
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
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
    required TResult Function(_Searching value) searching,
    required TResult Function(_Searched value) searched,
    required TResult Function(_Created value) created,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
    TResult? Function(_Searching value)? searching,
    TResult? Function(_Searched value)? searched,
    TResult? Function(_Created value)? created,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    TResult Function(_Searching value)? searching,
    TResult Function(_Searched value)? searched,
    TResult Function(_Created value)? created,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements PersonajesState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$$_LoadedCopyWith<$Res> {
  factory _$$_LoadedCopyWith(_$_Loaded value, $Res Function(_$_Loaded) then) =
      __$$_LoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({Personajes personajes, bool hasReachedMax});

  $PersonajesCopyWith<$Res> get personajes;
}

/// @nodoc
class __$$_LoadedCopyWithImpl<$Res>
    extends _$PersonajesStateCopyWithImpl<$Res, _$_Loaded>
    implements _$$_LoadedCopyWith<$Res> {
  __$$_LoadedCopyWithImpl(_$_Loaded _value, $Res Function(_$_Loaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? personajes = null,
    Object? hasReachedMax = null,
  }) {
    return _then(_$_Loaded(
      personajes: null == personajes
          ? _value.personajes
          : personajes // ignore: cast_nullable_to_non_nullable
              as Personajes,
      hasReachedMax: null == hasReachedMax
          ? _value.hasReachedMax
          : hasReachedMax // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $PersonajesCopyWith<$Res> get personajes {
    return $PersonajesCopyWith<$Res>(_value.personajes, (value) {
      return _then(_value.copyWith(personajes: value));
    });
  }
}

/// @nodoc

class _$_Loaded implements _Loaded {
  const _$_Loaded({required this.personajes, required this.hasReachedMax});

  @override
  final Personajes personajes;
  @override
  final bool hasReachedMax;

  @override
  String toString() {
    return 'PersonajesState.loaded(personajes: $personajes, hasReachedMax: $hasReachedMax)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Loaded &&
            (identical(other.personajes, personajes) ||
                other.personajes == personajes) &&
            (identical(other.hasReachedMax, hasReachedMax) ||
                other.hasReachedMax == hasReachedMax));
  }

  @override
  int get hashCode => Object.hash(runtimeType, personajes, hasReachedMax);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadedCopyWith<_$_Loaded> get copyWith =>
      __$$_LoadedCopyWithImpl<_$_Loaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Personajes personajes, bool hasReachedMax) loaded,
    required TResult Function(String message) error,
    required TResult Function() searching,
    required TResult Function(Personajes personajes, bool hasReachedMax)
        searched,
    required TResult Function() created,
  }) {
    return loaded(personajes, hasReachedMax);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Personajes personajes, bool hasReachedMax)? loaded,
    TResult? Function(String message)? error,
    TResult? Function()? searching,
    TResult? Function(Personajes personajes, bool hasReachedMax)? searched,
    TResult? Function()? created,
  }) {
    return loaded?.call(personajes, hasReachedMax);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Personajes personajes, bool hasReachedMax)? loaded,
    TResult Function(String message)? error,
    TResult Function()? searching,
    TResult Function(Personajes personajes, bool hasReachedMax)? searched,
    TResult Function()? created,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(personajes, hasReachedMax);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
    required TResult Function(_Searching value) searching,
    required TResult Function(_Searched value) searched,
    required TResult Function(_Created value) created,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
    TResult? Function(_Searching value)? searching,
    TResult? Function(_Searched value)? searched,
    TResult? Function(_Created value)? created,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    TResult Function(_Searching value)? searching,
    TResult Function(_Searched value)? searched,
    TResult Function(_Created value)? created,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements PersonajesState {
  const factory _Loaded(
      {required final Personajes personajes,
      required final bool hasReachedMax}) = _$_Loaded;

  Personajes get personajes;
  bool get hasReachedMax;
  @JsonKey(ignore: true)
  _$$_LoadedCopyWith<_$_Loaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ErrorCopyWith<$Res> {
  factory _$$_ErrorCopyWith(_$_Error value, $Res Function(_$_Error) then) =
      __$$_ErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$_ErrorCopyWithImpl<$Res>
    extends _$PersonajesStateCopyWithImpl<$Res, _$_Error>
    implements _$$_ErrorCopyWith<$Res> {
  __$$_ErrorCopyWithImpl(_$_Error _value, $Res Function(_$_Error) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$_Error(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Error implements _Error {
  const _$_Error(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'PersonajesState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Error &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ErrorCopyWith<_$_Error> get copyWith =>
      __$$_ErrorCopyWithImpl<_$_Error>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Personajes personajes, bool hasReachedMax) loaded,
    required TResult Function(String message) error,
    required TResult Function() searching,
    required TResult Function(Personajes personajes, bool hasReachedMax)
        searched,
    required TResult Function() created,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Personajes personajes, bool hasReachedMax)? loaded,
    TResult? Function(String message)? error,
    TResult? Function()? searching,
    TResult? Function(Personajes personajes, bool hasReachedMax)? searched,
    TResult? Function()? created,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Personajes personajes, bool hasReachedMax)? loaded,
    TResult Function(String message)? error,
    TResult Function()? searching,
    TResult Function(Personajes personajes, bool hasReachedMax)? searched,
    TResult Function()? created,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
    required TResult Function(_Searching value) searching,
    required TResult Function(_Searched value) searched,
    required TResult Function(_Created value) created,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
    TResult? Function(_Searching value)? searching,
    TResult? Function(_Searched value)? searched,
    TResult? Function(_Created value)? created,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    TResult Function(_Searching value)? searching,
    TResult Function(_Searched value)? searched,
    TResult Function(_Created value)? created,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements PersonajesState {
  const factory _Error(final String message) = _$_Error;

  String get message;
  @JsonKey(ignore: true)
  _$$_ErrorCopyWith<_$_Error> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SearchingCopyWith<$Res> {
  factory _$$_SearchingCopyWith(
          _$_Searching value, $Res Function(_$_Searching) then) =
      __$$_SearchingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SearchingCopyWithImpl<$Res>
    extends _$PersonajesStateCopyWithImpl<$Res, _$_Searching>
    implements _$$_SearchingCopyWith<$Res> {
  __$$_SearchingCopyWithImpl(
      _$_Searching _value, $Res Function(_$_Searching) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Searching implements _Searching {
  const _$_Searching();

  @override
  String toString() {
    return 'PersonajesState.searching()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Searching);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Personajes personajes, bool hasReachedMax) loaded,
    required TResult Function(String message) error,
    required TResult Function() searching,
    required TResult Function(Personajes personajes, bool hasReachedMax)
        searched,
    required TResult Function() created,
  }) {
    return searching();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Personajes personajes, bool hasReachedMax)? loaded,
    TResult? Function(String message)? error,
    TResult? Function()? searching,
    TResult? Function(Personajes personajes, bool hasReachedMax)? searched,
    TResult? Function()? created,
  }) {
    return searching?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Personajes personajes, bool hasReachedMax)? loaded,
    TResult Function(String message)? error,
    TResult Function()? searching,
    TResult Function(Personajes personajes, bool hasReachedMax)? searched,
    TResult Function()? created,
    required TResult orElse(),
  }) {
    if (searching != null) {
      return searching();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
    required TResult Function(_Searching value) searching,
    required TResult Function(_Searched value) searched,
    required TResult Function(_Created value) created,
  }) {
    return searching(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
    TResult? Function(_Searching value)? searching,
    TResult? Function(_Searched value)? searched,
    TResult? Function(_Created value)? created,
  }) {
    return searching?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    TResult Function(_Searching value)? searching,
    TResult Function(_Searched value)? searched,
    TResult Function(_Created value)? created,
    required TResult orElse(),
  }) {
    if (searching != null) {
      return searching(this);
    }
    return orElse();
  }
}

abstract class _Searching implements PersonajesState {
  const factory _Searching() = _$_Searching;
}

/// @nodoc
abstract class _$$_SearchedCopyWith<$Res> {
  factory _$$_SearchedCopyWith(
          _$_Searched value, $Res Function(_$_Searched) then) =
      __$$_SearchedCopyWithImpl<$Res>;
  @useResult
  $Res call({Personajes personajes, bool hasReachedMax});

  $PersonajesCopyWith<$Res> get personajes;
}

/// @nodoc
class __$$_SearchedCopyWithImpl<$Res>
    extends _$PersonajesStateCopyWithImpl<$Res, _$_Searched>
    implements _$$_SearchedCopyWith<$Res> {
  __$$_SearchedCopyWithImpl(
      _$_Searched _value, $Res Function(_$_Searched) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? personajes = null,
    Object? hasReachedMax = null,
  }) {
    return _then(_$_Searched(
      personajes: null == personajes
          ? _value.personajes
          : personajes // ignore: cast_nullable_to_non_nullable
              as Personajes,
      hasReachedMax: null == hasReachedMax
          ? _value.hasReachedMax
          : hasReachedMax // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $PersonajesCopyWith<$Res> get personajes {
    return $PersonajesCopyWith<$Res>(_value.personajes, (value) {
      return _then(_value.copyWith(personajes: value));
    });
  }
}

/// @nodoc

class _$_Searched implements _Searched {
  const _$_Searched({required this.personajes, required this.hasReachedMax});

  @override
  final Personajes personajes;
  @override
  final bool hasReachedMax;

  @override
  String toString() {
    return 'PersonajesState.searched(personajes: $personajes, hasReachedMax: $hasReachedMax)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Searched &&
            (identical(other.personajes, personajes) ||
                other.personajes == personajes) &&
            (identical(other.hasReachedMax, hasReachedMax) ||
                other.hasReachedMax == hasReachedMax));
  }

  @override
  int get hashCode => Object.hash(runtimeType, personajes, hasReachedMax);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SearchedCopyWith<_$_Searched> get copyWith =>
      __$$_SearchedCopyWithImpl<_$_Searched>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Personajes personajes, bool hasReachedMax) loaded,
    required TResult Function(String message) error,
    required TResult Function() searching,
    required TResult Function(Personajes personajes, bool hasReachedMax)
        searched,
    required TResult Function() created,
  }) {
    return searched(personajes, hasReachedMax);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Personajes personajes, bool hasReachedMax)? loaded,
    TResult? Function(String message)? error,
    TResult? Function()? searching,
    TResult? Function(Personajes personajes, bool hasReachedMax)? searched,
    TResult? Function()? created,
  }) {
    return searched?.call(personajes, hasReachedMax);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Personajes personajes, bool hasReachedMax)? loaded,
    TResult Function(String message)? error,
    TResult Function()? searching,
    TResult Function(Personajes personajes, bool hasReachedMax)? searched,
    TResult Function()? created,
    required TResult orElse(),
  }) {
    if (searched != null) {
      return searched(personajes, hasReachedMax);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
    required TResult Function(_Searching value) searching,
    required TResult Function(_Searched value) searched,
    required TResult Function(_Created value) created,
  }) {
    return searched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
    TResult? Function(_Searching value)? searching,
    TResult? Function(_Searched value)? searched,
    TResult? Function(_Created value)? created,
  }) {
    return searched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    TResult Function(_Searching value)? searching,
    TResult Function(_Searched value)? searched,
    TResult Function(_Created value)? created,
    required TResult orElse(),
  }) {
    if (searched != null) {
      return searched(this);
    }
    return orElse();
  }
}

abstract class _Searched implements PersonajesState {
  const factory _Searched(
      {required final Personajes personajes,
      required final bool hasReachedMax}) = _$_Searched;

  Personajes get personajes;
  bool get hasReachedMax;
  @JsonKey(ignore: true)
  _$$_SearchedCopyWith<_$_Searched> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_CreatedCopyWith<$Res> {
  factory _$$_CreatedCopyWith(
          _$_Created value, $Res Function(_$_Created) then) =
      __$$_CreatedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_CreatedCopyWithImpl<$Res>
    extends _$PersonajesStateCopyWithImpl<$Res, _$_Created>
    implements _$$_CreatedCopyWith<$Res> {
  __$$_CreatedCopyWithImpl(_$_Created _value, $Res Function(_$_Created) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Created implements _Created {
  const _$_Created();

  @override
  String toString() {
    return 'PersonajesState.created()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Created);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Personajes personajes, bool hasReachedMax) loaded,
    required TResult Function(String message) error,
    required TResult Function() searching,
    required TResult Function(Personajes personajes, bool hasReachedMax)
        searched,
    required TResult Function() created,
  }) {
    return created();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Personajes personajes, bool hasReachedMax)? loaded,
    TResult? Function(String message)? error,
    TResult? Function()? searching,
    TResult? Function(Personajes personajes, bool hasReachedMax)? searched,
    TResult? Function()? created,
  }) {
    return created?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Personajes personajes, bool hasReachedMax)? loaded,
    TResult Function(String message)? error,
    TResult Function()? searching,
    TResult Function(Personajes personajes, bool hasReachedMax)? searched,
    TResult Function()? created,
    required TResult orElse(),
  }) {
    if (created != null) {
      return created();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
    required TResult Function(_Searching value) searching,
    required TResult Function(_Searched value) searched,
    required TResult Function(_Created value) created,
  }) {
    return created(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
    TResult? Function(_Searching value)? searching,
    TResult? Function(_Searched value)? searched,
    TResult? Function(_Created value)? created,
  }) {
    return created?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    TResult Function(_Searching value)? searching,
    TResult Function(_Searched value)? searched,
    TResult Function(_Created value)? created,
    required TResult orElse(),
  }) {
    if (created != null) {
      return created(this);
    }
    return orElse();
  }
}

abstract class _Created implements PersonajesState {
  const factory _Created() = _$_Created;
}
