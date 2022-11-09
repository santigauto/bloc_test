// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'personajes_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Personajes _$PersonajesFromJson(Map<String, dynamic> json) {
  return _Personajes.fromJson(json);
}

/// @nodoc
mixin _$Personajes {
  int? get count => throw _privateConstructorUsedError;
  String? get next => throw _privateConstructorUsedError;
  String? get previous => throw _privateConstructorUsedError;
  List<Personaje>? get results => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PersonajesCopyWith<Personajes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PersonajesCopyWith<$Res> {
  factory $PersonajesCopyWith(
          Personajes value, $Res Function(Personajes) then) =
      _$PersonajesCopyWithImpl<$Res, Personajes>;
  @useResult
  $Res call(
      {int? count, String? next, String? previous, List<Personaje>? results});
}

/// @nodoc
class _$PersonajesCopyWithImpl<$Res, $Val extends Personajes>
    implements $PersonajesCopyWith<$Res> {
  _$PersonajesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = freezed,
    Object? next = freezed,
    Object? previous = freezed,
    Object? results = freezed,
  }) {
    return _then(_value.copyWith(
      count: freezed == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
      next: freezed == next
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as String?,
      previous: freezed == previous
          ? _value.previous
          : previous // ignore: cast_nullable_to_non_nullable
              as String?,
      results: freezed == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<Personaje>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PersonajesCopyWith<$Res>
    implements $PersonajesCopyWith<$Res> {
  factory _$$_PersonajesCopyWith(
          _$_Personajes value, $Res Function(_$_Personajes) then) =
      __$$_PersonajesCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? count, String? next, String? previous, List<Personaje>? results});
}

/// @nodoc
class __$$_PersonajesCopyWithImpl<$Res>
    extends _$PersonajesCopyWithImpl<$Res, _$_Personajes>
    implements _$$_PersonajesCopyWith<$Res> {
  __$$_PersonajesCopyWithImpl(
      _$_Personajes _value, $Res Function(_$_Personajes) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = freezed,
    Object? next = freezed,
    Object? previous = freezed,
    Object? results = freezed,
  }) {
    return _then(_$_Personajes(
      count: freezed == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
      next: freezed == next
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as String?,
      previous: freezed == previous
          ? _value.previous
          : previous // ignore: cast_nullable_to_non_nullable
              as String?,
      results: freezed == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<Personaje>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Personajes implements _Personajes {
  const _$_Personajes(
      {this.count, this.next, this.previous, final List<Personaje>? results})
      : _results = results;

  factory _$_Personajes.fromJson(Map<String, dynamic> json) =>
      _$$_PersonajesFromJson(json);

  @override
  final int? count;
  @override
  final String? next;
  @override
  final String? previous;
  final List<Personaje>? _results;
  @override
  List<Personaje>? get results {
    final value = _results;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Personajes(count: $count, next: $next, previous: $previous, results: $results)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Personajes &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.next, next) || other.next == next) &&
            (identical(other.previous, previous) ||
                other.previous == previous) &&
            const DeepCollectionEquality().equals(other._results, _results));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, count, next, previous,
      const DeepCollectionEquality().hash(_results));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PersonajesCopyWith<_$_Personajes> get copyWith =>
      __$$_PersonajesCopyWithImpl<_$_Personajes>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PersonajesToJson(
      this,
    );
  }
}

abstract class _Personajes implements Personajes {
  const factory _Personajes(
      {final int? count,
      final String? next,
      final String? previous,
      final List<Personaje>? results}) = _$_Personajes;

  factory _Personajes.fromJson(Map<String, dynamic> json) =
      _$_Personajes.fromJson;

  @override
  int? get count;
  @override
  String? get next;
  @override
  String? get previous;
  @override
  List<Personaje>? get results;
  @override
  @JsonKey(ignore: true)
  _$$_PersonajesCopyWith<_$_Personajes> get copyWith =>
      throw _privateConstructorUsedError;
}
