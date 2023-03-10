import 'package:freezed_annotation/freezed_annotation.dart';

part 'locations_data.freezed.dart';
part 'locations_data.g.dart';

@freezed
class LocationsData with _$LocationsData {
  const factory LocationsData({
    String? version,
    List<SystemMessage>? systemMessages,
    List<Location>? locations,
  }) = _LocationsData;

  factory LocationsData.fromJson(Map<String, dynamic> json) =>
      _$LocationsDataFromJson(json);
}

@freezed
class Location with _$Location {
  const factory Location({
    String? id,
    bool? isGlobalId,
    String? name,
    String? disassembledName,
    List? coord,
    String? type,
    int? matchQuality,
    bool? isBest,
    List<int>? productClasses,
    Parent? parent,
    Properties? properties,
    String? streetName,
    String? buildingNumber,
  }) = _Location;

  factory Location.fromJson(Map<String, dynamic> json) =>
      _$LocationFromJson(json);
}

@freezed
class Parent with _$Parent {
  const factory Parent({
    String? id,
    String? name,
    String? type,
  }) = _Parent;

  factory Parent.fromJson(Map<String, dynamic> json) => _$ParentFromJson(json);
}

@freezed
class Properties with _$Properties {
  const factory Properties({
    String? stopId,
  }) = _Properties;

  factory Properties.fromJson(Map<String, dynamic> json) =>
      _$PropertiesFromJson(json);
}

@freezed
class SystemMessage with _$SystemMessage {
  const factory SystemMessage({
    String? type,
    String? module,
    int? code,
    String? text,
  }) = _SystemMessage;

  factory SystemMessage.fromJson(Map<String, dynamic> json) =>
      _$SystemMessageFromJson(json);
}
