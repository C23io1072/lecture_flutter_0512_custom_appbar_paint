import 'package:g_json/g_json.dart';

//Umnu ni bichileer oruulsan hicheeliin model
class UniversityModel0 {
  final String country;
  final List<String> webPages;
  final String name;

  UniversityModel0({
    required this.country,
    required this.webPages,
    required this.name,
  });

  UniversityModel0.fromJson(JSON json)
      : country = json['country'].stringValue,
        webPages =
            json['web_pages'].listValue.map((e) => e.stringValue).toList(),
        name = json['name'].stringValue;

  // UniversityModel0.fromMap(Map<String, dynamic> map)
  //     : country = map['country'] as String,
  //       webPages = (map['web_pages'] as List<dynamic>)
  //           .map((e) => e as String)
  //           .toList(),
  //       name = map['name'] as String;

  Map<String, dynamic> toMap() {
    return {
      'country': country,
      'name': name,
      'webPages': webPages,
    };
  }
}
