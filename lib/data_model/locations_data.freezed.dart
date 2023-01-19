// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'locations_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LocationsData _$LocationsDataFromJson(Map<String, dynamic> json) {
  return _LocationsData.fromJson(json);
}

/// @nodoc
mixin _$LocationsData {
  String? get version => throw _privateConstructorUsedError;
  List<SystemMessage>? get systemMessages => throw _privateConstructorUsedError;
  List<Location>? get locations => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LocationsDataCopyWith<LocationsData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationsDataCopyWith<$Res> {
  factory $LocationsDataCopyWith(
          LocationsData value, $Res Function(LocationsData) then) =
      _$LocationsDataCopyWithImpl<$Res, LocationsData>;
  @useResult
  $Res call(
      {String? version,
      List<SystemMessage>? systemMessages,
      List<Location>? locations});
}

/// @nodoc
class _$LocationsDataCopyWithImpl<$Res, $Val extends LocationsData>
    implements $LocationsDataCopyWith<$Res> {
  _$LocationsDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? version = freezed,
    Object? systemMessages = freezed,
    Object? locations = freezed,
  }) {
    return _then(_value.copyWith(
      version: freezed == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String?,
      systemMessages: freezed == systemMessages
          ? _value.systemMessages
          : systemMessages // ignore: cast_nullable_to_non_nullable
              as List<SystemMessage>?,
      locations: freezed == locations
          ? _value.locations
          : locations // ignore: cast_nullable_to_non_nullable
              as List<Location>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LocationsDataCopyWith<$Res>
    implements $LocationsDataCopyWith<$Res> {
  factory _$$_LocationsDataCopyWith(
          _$_LocationsData value, $Res Function(_$_LocationsData) then) =
      __$$_LocationsDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? version,
      List<SystemMessage>? systemMessages,
      List<Location>? locations});
}

/// @nodoc
class __$$_LocationsDataCopyWithImpl<$Res>
    extends _$LocationsDataCopyWithImpl<$Res, _$_LocationsData>
    implements _$$_LocationsDataCopyWith<$Res> {
  __$$_LocationsDataCopyWithImpl(
      _$_LocationsData _value, $Res Function(_$_LocationsData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? version = freezed,
    Object? systemMessages = freezed,
    Object? locations = freezed,
  }) {
    return _then(_$_LocationsData(
      version: freezed == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String?,
      systemMessages: freezed == systemMessages
          ? _value._systemMessages
          : systemMessages // ignore: cast_nullable_to_non_nullable
              as List<SystemMessage>?,
      locations: freezed == locations
          ? _value._locations
          : locations // ignore: cast_nullable_to_non_nullable
              as List<Location>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LocationsData implements _LocationsData {
  const _$_LocationsData(
      {this.version,
      final List<SystemMessage>? systemMessages,
      final List<Location>? locations})
      : _systemMessages = systemMessages,
        _locations = locations;

  factory _$_LocationsData.fromJson(Map<String, dynamic> json) =>
      _$$_LocationsDataFromJson(json);

  @override
  final String? version;
  final List<SystemMessage>? _systemMessages;
  @override
  List<SystemMessage>? get systemMessages {
    final value = _systemMessages;
    if (value == null) return null;
    if (_systemMessages is EqualUnmodifiableListView) return _systemMessages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Location>? _locations;
  @override
  List<Location>? get locations {
    final value = _locations;
    if (value == null) return null;
    if (_locations is EqualUnmodifiableListView) return _locations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'LocationsData(version: $version, systemMessages: $systemMessages, locations: $locations)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LocationsData &&
            (identical(other.version, version) || other.version == version) &&
            const DeepCollectionEquality()
                .equals(other._systemMessages, _systemMessages) &&
            const DeepCollectionEquality()
                .equals(other._locations, _locations));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      version,
      const DeepCollectionEquality().hash(_systemMessages),
      const DeepCollectionEquality().hash(_locations));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LocationsDataCopyWith<_$_LocationsData> get copyWith =>
      __$$_LocationsDataCopyWithImpl<_$_LocationsData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LocationsDataToJson(
      this,
    );
  }
}

abstract class _LocationsData implements LocationsData {
  const factory _LocationsData(
      {final String? version,
      final List<SystemMessage>? systemMessages,
      final List<Location>? locations}) = _$_LocationsData;

  factory _LocationsData.fromJson(Map<String, dynamic> json) =
      _$_LocationsData.fromJson;

  @override
  String? get version;
  @override
  List<SystemMessage>? get systemMessages;
  @override
  List<Location>? get locations;
  @override
  @JsonKey(ignore: true)
  _$$_LocationsDataCopyWith<_$_LocationsData> get copyWith =>
      throw _privateConstructorUsedError;
}

Location _$LocationFromJson(Map<String, dynamic> json) {
  return _Location.fromJson(json);
}

/// @nodoc
mixin _$Location {
  String? get id => throw _privateConstructorUsedError;
  bool? get isGlobalId => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get disassembledName => throw _privateConstructorUsedError;
  List<dynamic>? get coord => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  int? get matchQuality => throw _privateConstructorUsedError;
  bool? get isBest => throw _privateConstructorUsedError;
  List<int>? get productClasses => throw _privateConstructorUsedError;
  Parent? get parent => throw _privateConstructorUsedError;
  Properties? get properties => throw _privateConstructorUsedError;
  String? get streetName => throw _privateConstructorUsedError;
  String? get buildingNumber => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LocationCopyWith<Location> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationCopyWith<$Res> {
  factory $LocationCopyWith(Location value, $Res Function(Location) then) =
      _$LocationCopyWithImpl<$Res, Location>;
  @useResult
  $Res call(
      {String? id,
      bool? isGlobalId,
      String? name,
      String? disassembledName,
      List<dynamic>? coord,
      String? type,
      int? matchQuality,
      bool? isBest,
      List<int>? productClasses,
      Parent? parent,
      Properties? properties,
      String? streetName,
      String? buildingNumber});

  $ParentCopyWith<$Res>? get parent;
  $PropertiesCopyWith<$Res>? get properties;
}

/// @nodoc
class _$LocationCopyWithImpl<$Res, $Val extends Location>
    implements $LocationCopyWith<$Res> {
  _$LocationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? isGlobalId = freezed,
    Object? name = freezed,
    Object? disassembledName = freezed,
    Object? coord = freezed,
    Object? type = freezed,
    Object? matchQuality = freezed,
    Object? isBest = freezed,
    Object? productClasses = freezed,
    Object? parent = freezed,
    Object? properties = freezed,
    Object? streetName = freezed,
    Object? buildingNumber = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      isGlobalId: freezed == isGlobalId
          ? _value.isGlobalId
          : isGlobalId // ignore: cast_nullable_to_non_nullable
              as bool?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      disassembledName: freezed == disassembledName
          ? _value.disassembledName
          : disassembledName // ignore: cast_nullable_to_non_nullable
              as String?,
      coord: freezed == coord
          ? _value.coord
          : coord // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      matchQuality: freezed == matchQuality
          ? _value.matchQuality
          : matchQuality // ignore: cast_nullable_to_non_nullable
              as int?,
      isBest: freezed == isBest
          ? _value.isBest
          : isBest // ignore: cast_nullable_to_non_nullable
              as bool?,
      productClasses: freezed == productClasses
          ? _value.productClasses
          : productClasses // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      parent: freezed == parent
          ? _value.parent
          : parent // ignore: cast_nullable_to_non_nullable
              as Parent?,
      properties: freezed == properties
          ? _value.properties
          : properties // ignore: cast_nullable_to_non_nullable
              as Properties?,
      streetName: freezed == streetName
          ? _value.streetName
          : streetName // ignore: cast_nullable_to_non_nullable
              as String?,
      buildingNumber: freezed == buildingNumber
          ? _value.buildingNumber
          : buildingNumber // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ParentCopyWith<$Res>? get parent {
    if (_value.parent == null) {
      return null;
    }

    return $ParentCopyWith<$Res>(_value.parent!, (value) {
      return _then(_value.copyWith(parent: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PropertiesCopyWith<$Res>? get properties {
    if (_value.properties == null) {
      return null;
    }

    return $PropertiesCopyWith<$Res>(_value.properties!, (value) {
      return _then(_value.copyWith(properties: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_LocationCopyWith<$Res> implements $LocationCopyWith<$Res> {
  factory _$$_LocationCopyWith(
          _$_Location value, $Res Function(_$_Location) then) =
      __$$_LocationCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      bool? isGlobalId,
      String? name,
      String? disassembledName,
      List<dynamic>? coord,
      String? type,
      int? matchQuality,
      bool? isBest,
      List<int>? productClasses,
      Parent? parent,
      Properties? properties,
      String? streetName,
      String? buildingNumber});

  @override
  $ParentCopyWith<$Res>? get parent;
  @override
  $PropertiesCopyWith<$Res>? get properties;
}

/// @nodoc
class __$$_LocationCopyWithImpl<$Res>
    extends _$LocationCopyWithImpl<$Res, _$_Location>
    implements _$$_LocationCopyWith<$Res> {
  __$$_LocationCopyWithImpl(
      _$_Location _value, $Res Function(_$_Location) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? isGlobalId = freezed,
    Object? name = freezed,
    Object? disassembledName = freezed,
    Object? coord = freezed,
    Object? type = freezed,
    Object? matchQuality = freezed,
    Object? isBest = freezed,
    Object? productClasses = freezed,
    Object? parent = freezed,
    Object? properties = freezed,
    Object? streetName = freezed,
    Object? buildingNumber = freezed,
  }) {
    return _then(_$_Location(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      isGlobalId: freezed == isGlobalId
          ? _value.isGlobalId
          : isGlobalId // ignore: cast_nullable_to_non_nullable
              as bool?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      disassembledName: freezed == disassembledName
          ? _value.disassembledName
          : disassembledName // ignore: cast_nullable_to_non_nullable
              as String?,
      coord: freezed == coord
          ? _value._coord
          : coord // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      matchQuality: freezed == matchQuality
          ? _value.matchQuality
          : matchQuality // ignore: cast_nullable_to_non_nullable
              as int?,
      isBest: freezed == isBest
          ? _value.isBest
          : isBest // ignore: cast_nullable_to_non_nullable
              as bool?,
      productClasses: freezed == productClasses
          ? _value._productClasses
          : productClasses // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      parent: freezed == parent
          ? _value.parent
          : parent // ignore: cast_nullable_to_non_nullable
              as Parent?,
      properties: freezed == properties
          ? _value.properties
          : properties // ignore: cast_nullable_to_non_nullable
              as Properties?,
      streetName: freezed == streetName
          ? _value.streetName
          : streetName // ignore: cast_nullable_to_non_nullable
              as String?,
      buildingNumber: freezed == buildingNumber
          ? _value.buildingNumber
          : buildingNumber // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Location implements _Location {
  const _$_Location(
      {this.id,
      this.isGlobalId,
      this.name,
      this.disassembledName,
      final List<dynamic>? coord,
      this.type,
      this.matchQuality,
      this.isBest,
      final List<int>? productClasses,
      this.parent,
      this.properties,
      this.streetName,
      this.buildingNumber})
      : _coord = coord,
        _productClasses = productClasses;

  factory _$_Location.fromJson(Map<String, dynamic> json) =>
      _$$_LocationFromJson(json);

  @override
  final String? id;
  @override
  final bool? isGlobalId;
  @override
  final String? name;
  @override
  final String? disassembledName;
  final List<dynamic>? _coord;
  @override
  List<dynamic>? get coord {
    final value = _coord;
    if (value == null) return null;
    if (_coord is EqualUnmodifiableListView) return _coord;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? type;
  @override
  final int? matchQuality;
  @override
  final bool? isBest;
  final List<int>? _productClasses;
  @override
  List<int>? get productClasses {
    final value = _productClasses;
    if (value == null) return null;
    if (_productClasses is EqualUnmodifiableListView) return _productClasses;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final Parent? parent;
  @override
  final Properties? properties;
  @override
  final String? streetName;
  @override
  final String? buildingNumber;

  @override
  String toString() {
    return 'Location(id: $id, isGlobalId: $isGlobalId, name: $name, disassembledName: $disassembledName, coord: $coord, type: $type, matchQuality: $matchQuality, isBest: $isBest, productClasses: $productClasses, parent: $parent, properties: $properties, streetName: $streetName, buildingNumber: $buildingNumber)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Location &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.isGlobalId, isGlobalId) ||
                other.isGlobalId == isGlobalId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.disassembledName, disassembledName) ||
                other.disassembledName == disassembledName) &&
            const DeepCollectionEquality().equals(other._coord, _coord) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.matchQuality, matchQuality) ||
                other.matchQuality == matchQuality) &&
            (identical(other.isBest, isBest) || other.isBest == isBest) &&
            const DeepCollectionEquality()
                .equals(other._productClasses, _productClasses) &&
            (identical(other.parent, parent) || other.parent == parent) &&
            (identical(other.properties, properties) ||
                other.properties == properties) &&
            (identical(other.streetName, streetName) ||
                other.streetName == streetName) &&
            (identical(other.buildingNumber, buildingNumber) ||
                other.buildingNumber == buildingNumber));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      isGlobalId,
      name,
      disassembledName,
      const DeepCollectionEquality().hash(_coord),
      type,
      matchQuality,
      isBest,
      const DeepCollectionEquality().hash(_productClasses),
      parent,
      properties,
      streetName,
      buildingNumber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LocationCopyWith<_$_Location> get copyWith =>
      __$$_LocationCopyWithImpl<_$_Location>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LocationToJson(
      this,
    );
  }
}

abstract class _Location implements Location {
  const factory _Location(
      {final String? id,
      final bool? isGlobalId,
      final String? name,
      final String? disassembledName,
      final List<dynamic>? coord,
      final String? type,
      final int? matchQuality,
      final bool? isBest,
      final List<int>? productClasses,
      final Parent? parent,
      final Properties? properties,
      final String? streetName,
      final String? buildingNumber}) = _$_Location;

  factory _Location.fromJson(Map<String, dynamic> json) = _$_Location.fromJson;

  @override
  String? get id;
  @override
  bool? get isGlobalId;
  @override
  String? get name;
  @override
  String? get disassembledName;
  @override
  List<dynamic>? get coord;
  @override
  String? get type;
  @override
  int? get matchQuality;
  @override
  bool? get isBest;
  @override
  List<int>? get productClasses;
  @override
  Parent? get parent;
  @override
  Properties? get properties;
  @override
  String? get streetName;
  @override
  String? get buildingNumber;
  @override
  @JsonKey(ignore: true)
  _$$_LocationCopyWith<_$_Location> get copyWith =>
      throw _privateConstructorUsedError;
}

Parent _$ParentFromJson(Map<String, dynamic> json) {
  return _Parent.fromJson(json);
}

/// @nodoc
mixin _$Parent {
  String? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ParentCopyWith<Parent> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ParentCopyWith<$Res> {
  factory $ParentCopyWith(Parent value, $Res Function(Parent) then) =
      _$ParentCopyWithImpl<$Res, Parent>;
  @useResult
  $Res call({String? id, String? name, String? type});
}

/// @nodoc
class _$ParentCopyWithImpl<$Res, $Val extends Parent>
    implements $ParentCopyWith<$Res> {
  _$ParentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? type = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ParentCopyWith<$Res> implements $ParentCopyWith<$Res> {
  factory _$$_ParentCopyWith(_$_Parent value, $Res Function(_$_Parent) then) =
      __$$_ParentCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id, String? name, String? type});
}

/// @nodoc
class __$$_ParentCopyWithImpl<$Res>
    extends _$ParentCopyWithImpl<$Res, _$_Parent>
    implements _$$_ParentCopyWith<$Res> {
  __$$_ParentCopyWithImpl(_$_Parent _value, $Res Function(_$_Parent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? type = freezed,
  }) {
    return _then(_$_Parent(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Parent implements _Parent {
  const _$_Parent({this.id, this.name, this.type});

  factory _$_Parent.fromJson(Map<String, dynamic> json) =>
      _$$_ParentFromJson(json);

  @override
  final String? id;
  @override
  final String? name;
  @override
  final String? type;

  @override
  String toString() {
    return 'Parent(id: $id, name: $name, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Parent &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ParentCopyWith<_$_Parent> get copyWith =>
      __$$_ParentCopyWithImpl<_$_Parent>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ParentToJson(
      this,
    );
  }
}

abstract class _Parent implements Parent {
  const factory _Parent(
      {final String? id, final String? name, final String? type}) = _$_Parent;

  factory _Parent.fromJson(Map<String, dynamic> json) = _$_Parent.fromJson;

  @override
  String? get id;
  @override
  String? get name;
  @override
  String? get type;
  @override
  @JsonKey(ignore: true)
  _$$_ParentCopyWith<_$_Parent> get copyWith =>
      throw _privateConstructorUsedError;
}

Properties _$PropertiesFromJson(Map<String, dynamic> json) {
  return _Properties.fromJson(json);
}

/// @nodoc
mixin _$Properties {
  String? get stopId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PropertiesCopyWith<Properties> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PropertiesCopyWith<$Res> {
  factory $PropertiesCopyWith(
          Properties value, $Res Function(Properties) then) =
      _$PropertiesCopyWithImpl<$Res, Properties>;
  @useResult
  $Res call({String? stopId});
}

/// @nodoc
class _$PropertiesCopyWithImpl<$Res, $Val extends Properties>
    implements $PropertiesCopyWith<$Res> {
  _$PropertiesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stopId = freezed,
  }) {
    return _then(_value.copyWith(
      stopId: freezed == stopId
          ? _value.stopId
          : stopId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PropertiesCopyWith<$Res>
    implements $PropertiesCopyWith<$Res> {
  factory _$$_PropertiesCopyWith(
          _$_Properties value, $Res Function(_$_Properties) then) =
      __$$_PropertiesCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? stopId});
}

/// @nodoc
class __$$_PropertiesCopyWithImpl<$Res>
    extends _$PropertiesCopyWithImpl<$Res, _$_Properties>
    implements _$$_PropertiesCopyWith<$Res> {
  __$$_PropertiesCopyWithImpl(
      _$_Properties _value, $Res Function(_$_Properties) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stopId = freezed,
  }) {
    return _then(_$_Properties(
      stopId: freezed == stopId
          ? _value.stopId
          : stopId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Properties implements _Properties {
  const _$_Properties({this.stopId});

  factory _$_Properties.fromJson(Map<String, dynamic> json) =>
      _$$_PropertiesFromJson(json);

  @override
  final String? stopId;

  @override
  String toString() {
    return 'Properties(stopId: $stopId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Properties &&
            (identical(other.stopId, stopId) || other.stopId == stopId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, stopId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PropertiesCopyWith<_$_Properties> get copyWith =>
      __$$_PropertiesCopyWithImpl<_$_Properties>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PropertiesToJson(
      this,
    );
  }
}

abstract class _Properties implements Properties {
  const factory _Properties({final String? stopId}) = _$_Properties;

  factory _Properties.fromJson(Map<String, dynamic> json) =
      _$_Properties.fromJson;

  @override
  String? get stopId;
  @override
  @JsonKey(ignore: true)
  _$$_PropertiesCopyWith<_$_Properties> get copyWith =>
      throw _privateConstructorUsedError;
}

SystemMessage _$SystemMessageFromJson(Map<String, dynamic> json) {
  return _SystemMessage.fromJson(json);
}

/// @nodoc
mixin _$SystemMessage {
  String? get type => throw _privateConstructorUsedError;
  String? get module => throw _privateConstructorUsedError;
  int? get code => throw _privateConstructorUsedError;
  String? get text => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SystemMessageCopyWith<SystemMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SystemMessageCopyWith<$Res> {
  factory $SystemMessageCopyWith(
          SystemMessage value, $Res Function(SystemMessage) then) =
      _$SystemMessageCopyWithImpl<$Res, SystemMessage>;
  @useResult
  $Res call({String? type, String? module, int? code, String? text});
}

/// @nodoc
class _$SystemMessageCopyWithImpl<$Res, $Val extends SystemMessage>
    implements $SystemMessageCopyWith<$Res> {
  _$SystemMessageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = freezed,
    Object? module = freezed,
    Object? code = freezed,
    Object? text = freezed,
  }) {
    return _then(_value.copyWith(
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      module: freezed == module
          ? _value.module
          : module // ignore: cast_nullable_to_non_nullable
              as String?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SystemMessageCopyWith<$Res>
    implements $SystemMessageCopyWith<$Res> {
  factory _$$_SystemMessageCopyWith(
          _$_SystemMessage value, $Res Function(_$_SystemMessage) then) =
      __$$_SystemMessageCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? type, String? module, int? code, String? text});
}

/// @nodoc
class __$$_SystemMessageCopyWithImpl<$Res>
    extends _$SystemMessageCopyWithImpl<$Res, _$_SystemMessage>
    implements _$$_SystemMessageCopyWith<$Res> {
  __$$_SystemMessageCopyWithImpl(
      _$_SystemMessage _value, $Res Function(_$_SystemMessage) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = freezed,
    Object? module = freezed,
    Object? code = freezed,
    Object? text = freezed,
  }) {
    return _then(_$_SystemMessage(
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      module: freezed == module
          ? _value.module
          : module // ignore: cast_nullable_to_non_nullable
              as String?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SystemMessage implements _SystemMessage {
  const _$_SystemMessage({this.type, this.module, this.code, this.text});

  factory _$_SystemMessage.fromJson(Map<String, dynamic> json) =>
      _$$_SystemMessageFromJson(json);

  @override
  final String? type;
  @override
  final String? module;
  @override
  final int? code;
  @override
  final String? text;

  @override
  String toString() {
    return 'SystemMessage(type: $type, module: $module, code: $code, text: $text)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SystemMessage &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.module, module) || other.module == module) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.text, text) || other.text == text));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, type, module, code, text);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SystemMessageCopyWith<_$_SystemMessage> get copyWith =>
      __$$_SystemMessageCopyWithImpl<_$_SystemMessage>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SystemMessageToJson(
      this,
    );
  }
}

abstract class _SystemMessage implements SystemMessage {
  const factory _SystemMessage(
      {final String? type,
      final String? module,
      final int? code,
      final String? text}) = _$_SystemMessage;

  factory _SystemMessage.fromJson(Map<String, dynamic> json) =
      _$_SystemMessage.fromJson;

  @override
  String? get type;
  @override
  String? get module;
  @override
  int? get code;
  @override
  String? get text;
  @override
  @JsonKey(ignore: true)
  _$$_SystemMessageCopyWith<_$_SystemMessage> get copyWith =>
      throw _privateConstructorUsedError;
}
