import 'package:flutter/material.dart';
import 'package:flutter_application_cetalock_1/models/catalog.dart';
import 'package:flutter_application_cetalock_1/pages/home_details_page.dart';

class ProductScreen extends StatelessWidget {
  final Items item;

  const ProductScreen({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => HomeDetailsPage(item: item)),
        );
      },
      child: Card(
        child: ListTile(
          leading: Hero(
            tag: Key(item.id.toString()),
            child: Image.network(item.images[0], width: 50),
          ),
          title: Text(item.title),
          subtitle: Text(item.description),
          trailing: Text(
            "\$${item.price}",
            textScaleFactor: 1.2,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.deepPurpleAccent,
            ),
          ),
        ),
      ),
    );
  }
}
