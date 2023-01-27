import 'package:flutter/material.dart';

import '../widgets/drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.only(left: 55),
          child: Text("Catalog App"),
        ),
      ),
      body: const Center(
        child: Text("Welcome to flutter app"),
      ),
      drawer: const MyDrawer(),
    );
  }
}
