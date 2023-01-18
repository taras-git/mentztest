class JsonResponse {
  JsonResponse({
    required this.version,
    required this.systemMessages,
    required this.locations,
  });
  late final String version;
  late final List<SystemMessage> systemMessages;
  late final List<Location> locations;

  JsonResponse.fromJson(Map<String, dynamic> json) {
    version = json['version'];
    systemMessages = List.from(json['systemMessages'])
        .map((e) => SystemMessage.fromJson(e))
        .toList();
    locations =
        List.from(json['locations']).map((e) => Location.fromJson(e)).toList();
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['version'] = version;
    data['systemMessages'] = systemMessages.map((e) => e.toJson()).toList();
    data['locations'] = locations.map((e) => e.toJson()).toList();
    return data;
  }
}

class SystemMessage {
  SystemMessage({
    required this.type,
    required this.module,
    required this.code,
    required this.text,
  });
  late final String type;
  late final String module;
  late final int code;
  late final String text;

  SystemMessage.fromJson(Map<String, dynamic> json) {
    type = json['type'];
    module = json['module'];
    code = json['code'];
    text = json['text'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['type'] = type;
    data['module'] = module;
    data['code'] = code;
    data['text'] = text;
    return data;
  }
}

class Location {
  Location({
    required this.id,
    required this.name,
    required this.coord,
    required this.type,
    required this.matchQuality,
    required this.isBest,
    required this.parent,
  });
  late final String id;
  late final String? name;
  late final List coord;
  late final String type;
  late final int matchQuality;
  late final bool? isBest;
  late final parent;

  Location.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    coord = json['coord'];
    type = json['type'];
    matchQuality = json['matchQuality'];
    isBest = json['isBest'];
    parent = json['parent'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['coord'] = coord;
    data['type'] = type;
    data['matchQuality'] = matchQuality;
    data['isBest'] = isBest;
    data['parent'] = parent;
    return data;
  }
}

class Parent {
  Parent({
    required this.id,
    required this.name,
    required this.type,
  });
  late final String id;
  late final String name;
  late final String type;

  Parent.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    type = json['type'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['type'] = type;
    return data;
  }
}
