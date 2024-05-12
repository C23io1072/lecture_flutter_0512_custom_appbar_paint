import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:g_json/g_json.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';
import 'package:lecture_flutter/lec6.1b_network_suuliinh/university_model.dart';

class NetworkScreen extends StatefulWidget {
  const NetworkScreen({super.key});

  @override
  State<NetworkScreen> createState() => _NetworkScreenState();
}

class _NetworkScreenState extends State<NetworkScreen> {
  List<UniversityModel> universities = [];
  bool isLoading = false;
  late Box universityBox;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Network request'),
      ),
      body: isLoading
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : ListView(
              children: universities
                  .map(
                    (e) => ListTile(
                      title: Text(e.name),
                    ),
                  )
                  .toList(),
            ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FloatingActionButton(
            onPressed: getData,
            child: const Text('get'),
          ),
          FloatingActionButton(
            onPressed: saveData,
            child: const Text('save'),
          ),
          FloatingActionButton(
            onPressed: fetchData,
            child: const Icon(Icons.download),
          ),
        ],
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    initializeStore();
  }

  Future initializeStore() async {
    final tempDir = await getTemporaryDirectory();
    Hive.init(tempDir.path);
    universityBox = await Hive.openBox('universityBox');
    print('inited box ${tempDir.path}');
  }

  Future getData() async {
    final list = universityBox.get('university');
    final jsonList = JSON(list);
    setState(() {
      universities =
          jsonList.listValue.map((e) => UniversityModel.fromJson(e)).toList();
    });
  }

  Future saveData() async {
    await universityBox.put(
      'university',
      universities.map((e) => e.toMap()).toList(),
    );

    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('saved'),
      ),
    );
  }

  Future fetchData() async {
    setState(() {
      isLoading = true;
    });
    final dio = Dio();
    final response = await dio.get(
      'http://universities.hipolabs.com/search?country=United+States',
    );
    final json = JSON(response.data);
    universities = json.listValue
        .map(
          (e) => UniversityModel.fromJson(e),
        )
        .toList();

    // final jsonData = JSON(response.data);
    // universities =
    //     jsonData.listValue.map((e) => UniversityModel.fromJson(e)).toList();

    setState(() {
      isLoading = false;
    });
  }
}
