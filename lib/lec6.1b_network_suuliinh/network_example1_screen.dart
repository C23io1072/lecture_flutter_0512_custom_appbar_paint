import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:http/http.dart' as http;

class ApiOne extends StatefulWidget {
  const ApiOne({super.key});
  @override
  State<ApiOne> createState() => _ApiOneState();
}

class _ApiOneState extends State<ApiOne> {
  List<dynamic>? myData;
  bool isLoading = true;
  @override
  void initState() {
    super.initState();
    _getData();
  }

  void _getData() async {
    try {
      String url = "https://dummyjson.com/products";
      http.Response res = await http.get(Uri.parse(url));
      print('status code : ${res.statusCode}');
      if (res.statusCode == 200) {
        setState(() {
          myData = json.decode(res.body)['products'];
          isLoading = false;
        });
      }
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('api 2'),
      ),
      body: isLoading
          ? Center(
              child: SpinKitCubeGrid(
                color: Colors.blue.shade300,
                size: 70.0,
              ),
            )
          : ListView.builder(
              itemCount: myData?.length,
              itemBuilder: (BuildContext context, int index) {
                final product = myData?[index];
                return Container(
                  height: 90,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  margin: const EdgeInsets.symmetric(
                      vertical: 10.0, horizontal: 15),
                  decoration: BoxDecoration(
                    color: Colors.blue.shade100,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.network(
                          product!['thumbnail'],
                          height: 70,
                          width: 70,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Text(
                        product['brand'],
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Text(
                        '${product['price']} \$',
                        style: const TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w700,
                        ),
                      )
                    ],
                  ),
                );
              },
            ),
    );
  }
}
