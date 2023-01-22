// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'locations_provider.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LocationsState {
  List<Location> get locations => throw _privateConstructorUsedError;
  List<String> get locationTypes => throw _privateConstructorUsedError;
  String get filterByType => throw _privateConstructorUsedError;
  LoadingState get loadingState => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LocationsStateCopyWith<LocationsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationsStateCopyWith<$Res> {
  factory $LocationsStateCopyWith(
          LocationsState value, $Res Function(LocationsState) then) =
      _$LocationsStateCopyWithImpl<$Res, LocationsState>;
  @useResult
  $Res call(
      {List<Location> locations,
      List<String> locationTypes,
      String filterByType,
      LoadingState loadingState});
}

/// @nodoc
class _$LocationsStateCopyWithImpl<$Res, $Val extends LocationsState>
    implements $LocationsStateCopyWith<$Res> {
  _$LocationsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? locations = null,
    Object? locationTypes = null,
    Object? filterByType = null,
    Object? loadingState = null,
  }) {
    return _then(_value.copyWith(
      locations: null == locations
          ? _value.locations
          : locations // ignore: cast_nullable_to_non_nullable
              as List<Location>,
      locationTypes: null == locationTypes
          ? _value.locationTypes
          : locationTypes // ignore: cast_nullable_to_non_nullable
              as List<String>,
      filterByType: null == filterByType
          ? _value.filterByType
          : filterByType // ignore: cast_nullable_to_non_nullable
              as String,
      loadingState: null == loadingState
          ? _value.loadingState
          : loadingState // ignore: cast_nullable_to_non_nullable
              as LoadingState,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LocationsStateCopyWith<$Res>
    implements $LocationsStateCopyWith<$Res> {
  factory _$$_LocationsStateCopyWith(
          _$_LocationsState value, $Res Function(_$_LocationsState) then) =
      __$$_LocationsStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Location> locations,
      List<String> locationTypes,
      String filterByType,
      LoadingState loadingState});
}

/// @nodoc
class __$$_LocationsStateCopyWithImpl<$Res>
    extends _$LocationsStateCopyWithImpl<$Res, _$_LocationsState>
    implements _$$_LocationsStateCopyWith<$Res> {
  __$$_LocationsStateCopyWithImpl(
      _$_LocationsState _value, $Res Function(_$_LocationsState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? locations = null,
    Object? locationTypes = null,
    Object? filterByType = null,
    Object? loadingState = null,
  }) {
    return _then(_$_LocationsState(
      locations: null == locations
          ? _value._locations
          : locations // ignore: cast_nullable_to_non_nullable
              as List<Location>,
      locationTypes: null == locationTypes
          ? _value._locationTypes
          : locationTypes // ignore: cast_nullable_to_non_nullable
              as List<String>,
      filterByType: null == filterByType
          ? _value.filterByType
          : filterByType // ignore: cast_nullable_to_non_nullable
              as String,
      loadingState: null == loadingState
          ? _value.loadingState
          : loadingState // ignore: cast_nullable_to_non_nullable
              as LoadingState,
    ));
  }
}

/// @nodoc

class _$_LocationsState extends _LocationsState {
  const _$_LocationsState(
      {final List<Location> locations = const [],
      final List<String> locationTypes = const ['All'],
      this.filterByType = 'All',
      this.loadingState = LoadingState.start})
      : _locations = locations,
        _locationTypes = locationTypes,
        super._();

  final List<Location> _locations;
  @override
  @JsonKey()
  List<Location> get locations {
    if (_locations is EqualUnmodifiableListView) return _locations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_locations);
  }

  final List<String> _locationTypes;
  @override
  @JsonKey()
  List<String> get locationTypes {
    if (_locationTypes is EqualUnmodifiableListView) return _locationTypes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_locationTypes);
  }

  @override
  @JsonKey()
  final String filterByType;
  @override
  @JsonKey()
  final LoadingState loadingState;

  @override
  String toString() {
    return 'LocationsState(locations: $locations, locationTypes: $locationTypes, filterByType: $filterByType, loadingState: $loadingState)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LocationsState &&
            const DeepCollectionEquality()
                .equals(other._locations, _locations) &&
            const DeepCollectionEquality()
                .equals(other._locationTypes, _locationTypes) &&
            (identical(other.filterByType, filterByType) ||
                other.filterByType == filterByType) &&
            (identical(other.loadingState, loadingState) ||
                other.loadingState == loadingState));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_locations),
      const DeepCollectionEquality().hash(_locationTypes),
      filterByType,
      loadingState);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LocationsStateCopyWith<_$_LocationsState> get copyWith =>
      __$$_LocationsStateCopyWithImpl<_$_LocationsState>(this, _$identity);
}

abstract class _LocationsState extends LocationsState {
  const factory _LocationsState(
      {final List<Location> locations,
      final List<String> locationTypes,
      final String filterByType,
      final LoadingState loadingState}) = _$_LocationsState;
  const _LocationsState._() : super._();

  @override
  List<Location> get locations;
  @override
  List<String> get locationTypes;
  @override
  String get filterByType;
  @override
  LoadingState get loadingState;
  @override
  @JsonKey(ignore: true)
  _$$_LocationsStateCopyWith<_$_LocationsState> get copyWith =>
      throw _privateConstructorUsedError;
}
