import 'package:flutter/material.dart';
import 'package:alltaskapp/drawer.dart';

class settings extends StatelessWidget {
  const settings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Settings"),
        backgroundColor: Colors.black12,
      ),
      drawer: drawerbarfist(onTap: () {}),
      body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("img/backhome2.jpg"), fit: BoxFit.cover),
          )),
    );
  }
}
