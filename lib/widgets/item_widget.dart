import 'package:flutter/material.dart';

import '../models/catalog.dart';

class ItemWidget extends StatelessWidget {
  final Item item;

  const ItemWidget({super.key, required this.item});
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0.5,
      child: ListTile(
        leading: Image.asset("assets/images/login.png"),
        title: Text(item.name),
        subtitle: Text(item.desc),
        trailing: Text("\$${item.price}",
            style: const TextStyle(
                color: Colors.deepPurple,
                fontSize: 20,
                fontWeight: FontWeight.bold)),
      ),
    );
  }
}
