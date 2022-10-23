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
                      width: 60,
                      height: 60,
                      child: CircleAvatar(
                        backgroundImage: AssetImage('img/code.png'),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      "Restu Android",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Colors.blue.shade200),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Text('restufahimuroid-e4123@gmail.com'),
                  ],
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
              onTap: () {
                Navigator.of(context).pushNamed('/homepage');
              },
            ),
            ListTile(
                leading: Icon(Icons.person),
                title: Text("Person"),
                onTap: () {
                  Navigator.of(context).pushNamed('/gradientpage');
                }),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("Settings"),
              onTap: () {
                Navigator.of(context).pushNamed('/settingpage');
              },
            ),
            ListTile(
              leading: Icon(Icons.chat_bubble),
              title: Text("Telegram app"),
              onTap: () {
                Navigator.of(context).pushNamed('/telegrampage');
              },
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Form and Vaidation"),
              onTap: () {
                Navigator.of(context).pushNamed('/formvalidationpage');
              },
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Registration Page"),
              onTap: () {
                Navigator.of(context).pushNamed('/register2page');
              },
            ),
            const Divider(
              height: 50,
              thickness: 1,
              indent: 30,
              endIndent: 0,
              color: Colors.amberAccent,
            ),
            ListTile(
              leading: Icon(Icons.exit_to_app),
              title: Text("Logout"),
              onTap: () {
                Navigator.of(context).pushNamed('/LoginPage');
              },
            ),
          ],
        ),
      ),
    );
  }
}
