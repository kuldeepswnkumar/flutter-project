import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_cetalock_1/models/catalog.dart';
import 'package:flutter_application_cetalock_1/widgets/drawer.dart';
import 'package:flutter_application_cetalock_1/widgets/product_screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final int days = 30;
  final List<Items> items = [];

  final String name = "Kuldeep";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadJsonData();
  }

  loadJsonData() async {
    await Future.delayed(Duration(seconds: 2));
    var jsonCatalog = await rootBundle.loadString(
      "assets/json_file/catalog.json",
    );
    var decodedData = jsonDecode(jsonCatalog);
    print(decodedData);
    var productData = decodedData['products'];
    ProductCatalog.items = List.from(
      productData,
    ).map<Items>((item) => Items.fromMap(item)).toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    // final dummayList = List.generate(10, (index) => ProductCatalog.items[0]);
    return Scaffold(
      appBar: AppBar(title: Text("Catalog App")),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: (ProductCatalog.items != null && ProductCatalog.items.isNotEmpty)
            ?
              // GridView.builder(
              //     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              //       crossAxisCount: 2,
              //       mainAxisSpacing: 16,
              //       crossAxisSpacing: 16,
              //     ),
              //     itemBuilder: (context, index) {
              //       final productItem = ProductCatalog.items[index];
              //       return Card(
              //         clipBehavior: Clip.antiAlias,
              //         shape: RoundedRectangleBorder(
              //           borderRadius: BorderRadius.circular(10),
              //         ),
              //         child: GridTile(
              //           child: Image.network(productItem.images[0]),
              //           header: Text(productItem.title),
              //           footer: Text(productItem.price.toString()),
              //         ),
              //       );
              //     },
              //     itemCount: ProductCatalog.items.length,
              //   )
              ListView.builder(
                itemCount: ProductCatalog.items.length,
                itemBuilder: (context, index) {
                  return ProductScreen(item: ProductCatalog.items[index]);
                },
              )
            : Center(child: CircularProgressIndicator()),
      ),
      drawer: MyDrawer(),
    );
  }
}
