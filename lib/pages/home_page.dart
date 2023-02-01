import 'dart:convert';

import 'package:catalog_app/models/catalog.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../widgets/drawer.dart';
import '../widgets/item_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    final catalogJson =
        await rootBundle.loadString("assets/files/catalog.json");
    final decodedData = jsonDecode(catalogJson);
    var productData = decodedData["products"];
    CatalogModel.products =
        List.from(productData).map<Item>((item) => Item.fromMap(item)).toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.only(left: 55),
          child: Text("Catalog App"),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: (CatalogModel.products.isNotEmpty)
            ? GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 16,
                    mainAxisSpacing: 16),
                itemBuilder: (context, index) {
                  final item = CatalogModel.products[index];
                  return Card(
                      clipBehavior: Clip.antiAlias,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child: GridTile(
                        header: Container(
                            decoration:
                                const BoxDecoration(color: Colors.deepPurple),
                            padding: const EdgeInsets.all(12),
                            child: Text(
                              item.name,
                              style: const TextStyle(color: Colors.white),
                            )),
                        footer: Container(
                            decoration:
                                const BoxDecoration(color: Colors.black),
                            padding: const EdgeInsets.all(12),
                            child: Text(
                              item.price.toString(),
                              style: const TextStyle(color: Colors.white),
                            )),
                        child: Image.asset("assets/images/login.png"),
                      ));
                },
                itemCount: CatalogModel.products.length,
              )
            : const Center(
                child: CircularProgressIndicator(),
              ),
      ),
      drawer: const MyDrawer(),
    );
  }
}
