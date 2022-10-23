import 'package:flutter/material.dart';
import 'package:alltaskapp/DrawerScreen.dart';
import 'package:alltaskapp/Chart_model.dart';
import 'package:alltaskapp/drawer.dart';

class Telegram extends StatefulWidget {
  @override
  _TelegramState createState() => _TelegramState();
}

class _TelegramState extends State<Telegram> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Telegram"),
        backgroundColor: Colors.blueGrey,
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.search),
          )
        ],
      ),
      drawer: drawerbarfist(onTap: () {}),
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
              Color.fromARGB(255, 147, 140, 148),
              Color.fromARGB(255, 229, 162, 242),
            ])),
        child: ListView.separated(
            itemBuilder: (ctx, i) {
              return ListTile(
                leading: CircleAvatar(
                  radius: 28,
                  backgroundImage: NetworkImage(items[i].profileUrl),
                ),
                title: Text(
                  items[i].name,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text(items[i].message),
                trailing: Text(items[i].time),
              );
            },
            separatorBuilder: (ctx, i) {
              return Divider();
            },
            itemCount: items.length),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.create, color: Colors.black),
        backgroundColor: Colors.yellow,
        onPressed: () {},
      ),
    );
  }
}
