import 'package:flutter/material.dart';

class drawerbarfist extends StatelessWidget {
  final Function onTap;

  drawerbarfist({required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.8,
      child: Drawer(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            DrawerHeader(
              decoration:
                  BoxDecoration(color: Color.fromARGB(255, 13, 120, 134)),
              child: Padding(
                padding: EdgeInsets.all(6),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Container(
                        width: 250,
                        height: 60,
                        child: Text(
                          "Talent Scouting Academy",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              color: Colors.blue.shade200),
                        )),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Test Appliication",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Colors.blue.shade200),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Text('Select Menu'),
                  ],
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.account_tree_outlined),
              title: Text("Home (Hive)"),
              onTap: () {
                Navigator.of(context).pushNamed('/homepage');
              },
            ),
            ListTile(
                leading: Icon(Icons.data_exploration_sharp),
                title: Text("Sqlite"),
                onTap: () {
                  Navigator.of(context).pushNamed('/Sqlite_mainpage');
                }),
            const Divider(
              height: 50,
              thickness: 1,
              indent: 30,
              endIndent: 0,
              color: Colors.amberAccent,
            ),
          ],
        ),
      ),
    );
  }
}
