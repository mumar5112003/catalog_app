import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/routes.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});
  final imageUrl =
      "https://virl.bc.ca/wp-content/uploads/2019/01/AccountIcon2.png";
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.deepPurple,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
                padding: EdgeInsets.zero,
                child: UserAccountsDrawerHeader(
                  decoration: const BoxDecoration(color: Colors.deepPurple),
                  accountName: const Text("Muhammad Umar"),
                  accountEmail: const Text("mumar5112003@gmail.com"),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: NetworkImage(imageUrl),
                  ),
                )),
            const ListTile(
              leading: Icon(CupertinoIcons.home, color: Colors.white),
              title: Text("Home",
                  style: TextStyle(color: Colors.white), textScaleFactor: 1.2),
            ),
            const ListTile(
              leading:
                  Icon(CupertinoIcons.profile_circled, color: Colors.white),
              title: Text("Profile",
                  style: TextStyle(color: Colors.white), textScaleFactor: 1.2),
            ),
            const ListTile(
              leading: Icon(CupertinoIcons.cart, color: Colors.white),
              title: Text("Cart",
                  style: TextStyle(color: Colors.white), textScaleFactor: 1.2),
            ),
            const ListTile(
              leading: Icon(CupertinoIcons.back, color: Colors.white),
              title: Text("Logout",
                  style: TextStyle(color: Colors.white), textScaleFactor: 1.2),
            ),
          ],
        ),
      ),
    );
  }
}
