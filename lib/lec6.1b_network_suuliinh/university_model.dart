import 'package:g_json/g_json.dart';

//syyld zaasan hicheeliin model
class UniversityModel {
  final String country;
  final List<String> webPages;
  final String name;

  UniversityModel.fromJson(JSON json)
      : country = json['country'].stringValue,
        webPages =
            json['web_pages'].listValue.map((e) => e.stringValue).toList(),
        name = json['name'].stringValue;

  UniversityModel.fromMap(Map<String, dynamic> map)
      : country = map['country'] as String,
        webPages = (map['web_pages'] as List<dynamic>)
            .map((e) => e as String)
            .toList(),
        name = map['name'] as String;

  Map<String, dynamic> toMap() {
    return {
      'country': country,
      'name': name,
      'webPages': webPages,
    };
  }
}
