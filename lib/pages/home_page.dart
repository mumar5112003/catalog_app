import 'package:flutter/material.dart';

import '../widgets/drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Catalog App"),
      ),
      body: Center(
        child: Container(
          child: const Text("Welcome to flutter app"),
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
