import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:g_json/g_json.dart';
import 'package:get_storage/get_storage.dart';
import 'package:hive/hive.dart';
import 'package:lecture_flutter/main.dart';
import 'package:path_provider/path_provider.dart';
import 'package:lecture_flutter/lec6.1a_network_umnuh/university_model0.dart';

class NetworkScreenUmnuh extends StatefulWidget {
  const NetworkScreenUmnuh({super.key});

  @override
  State<NetworkScreenUmnuh> createState() => _NetworkScreenUmnuhState();
}

class _NetworkScreenUmnuhState extends State<NetworkScreenUmnuh> {
  List<UniversityModel0> universities = [];
  List<UniversityModel0> universitiesJson = [];
  bool isLoading = false;

  void fetchData() async {
    setState(() {
      isLoading = true;
    });
    final response = await Dio()
        .get('http://universities.hipolabs.com/search?country=United+States');

    print(response.data);

    universities = (response.data as List).map((e) {
      final element = e as Map<String, dynamic>;
      return UniversityModel0(
        country: element['country'] as String,
        webPages:
            (element['web_pages'] as List).map((e) => e as String).toList(),
        name: element['name'] as String,
      );
    }).toList();

    setState(() {
      isLoading = false;
    });
  }

//the easiest way to parse data is to use g_json!!!!:
  void parseDataGjson() async {
    setState(() {
      isLoading = true;
    });
    final response = await Dio()
        .get('http://universities.hipolabs.com/search?country=United+States');
    final jsonData = JSON(response.data);
    print(jsonData);

    universities = jsonData.listValue.map((e) {
      return UniversityModel0.fromJson(e);
    }).toList();

    Future<String> getPath() async {
      final path = await getApplicationDocumentsDirectory();
      print(path);
      return path.path;
    }

    final box = GetStorage('store', await getPath());

    box.write('university', universities.map((e) => e.toMap()).toList());

    setState(() {
      isLoading = false;
    });
  }

//before getData loaded, parseDataGjson() must be pushed.
  void saveData() async {
    setState(() {
      isLoading = true;
    });

    Future<String> getPath() async {
      final path = await getApplicationDocumentsDirectory();
      print(path);
      return path.path;
    }

    final box = GetStorage('store', await getPath());
    box.write('university', universities.map((e) => e.toMap()).toList());

    setState(() {
      isLoading = false;
    });
  }

  void clear() {
    universities = [];
    setState(() {});
  }

//Works???
  void fetchDataFromDb() async {
    setState(() {
      isLoading = true;
    });

    final box = GetStorage('store', await getPath());
    final data = box.read('university');
    final jsonData = JSON(data);

    universities = jsonData.listValue.map((e) {
      return UniversityModel0.fromJson(e);
    }).toList();

    setState(() {
      isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Network umnuh'),
        backgroundColor: Colors.amber,
        automaticallyImplyLeading: true,
      ),
      body: isLoading
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : ListView(
              children: universities
                  .map((e) => ListTile(
                        title: Text(e.name),
                      ))
                  .toList()),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton.extended(
            onPressed: fetchData,
            label: const Text('fetchData'),
          ),
          const SizedBox(height: 15),
          FloatingActionButton.extended(
            onPressed: parseDataGjson,
            label: const Text('g_json'),
          ),
          const SizedBox(height: 15),
          FloatingActionButton.extended(
            onPressed: saveData,
            label: const Text('saveData'),
          ),
          const SizedBox(height: 15),
          FloatingActionButton.extended(
            onPressed: clear,
            label: const Text('clear body'),
          ),
          const SizedBox(height: 15),
          FloatingActionButton.extended(
            onPressed: fetchDataFromDb,
            label: const Text('getData'),
          ),
        ],
      ),
    );
  }
}
