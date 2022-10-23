import 'package:alltaskapp/Instagram.dart';
import 'package:alltaskapp/formvalidation.dart';
import 'package:alltaskapp/gradient.dart';
import 'package:alltaskapp/register5.dart';
import 'package:flutter/material.dart';
import 'package:alltaskapp/Telegram.dart';
import 'package:alltaskapp/drawer.dart';
import 'package:alltaskapp/halaman_utama.dart';
import 'package:alltaskapp/register.dart';
import 'package:alltaskapp/settings.dart';
import 'package:alltaskapp/formvalidation2.dart';
import 'package:shared_preferences/shared_preferences.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/LoginPage': (context) => LoginPage(),
      '/settingpage': (context) => settings(),
      '/homepage': (context) => HalamanUtama(),
      '/telegrampage': (context) => Telegram(),
      '/instagrampage': (context) => InstagramPage(),
      '/gradientpage': (context) => gradient(),
      '/formvalidationpage': (context) => formvalidation(),
      '/formvalidationpage2': (context) => formvalidation2(),
      '/register2page': (context) => register2page(),
    },
    theme: ThemeData(primaryColor: Colors.purple),
    debugShowCheckedModeBanner: false,
    home: LoginPage(),
  ));
}

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TextEditingController usernameController = TextEditingController();
    TextEditingController passwordController = TextEditingController();

    Future<void> sharedPreferences() async {
      SharedPreferences prefs = await SharedPreferences.getInstance();

      await prefs.setString("Username", usernameController.text);
      await prefs.setString("Password", passwordController.text);
    }

    Future<void> getSharedPrefrences() async {
      SharedPreferences prefs = await SharedPreferences.getInstance();

      // setState(() {
      //   usernameController = prefs.getString("Username");
      //   passwordController = prefs.getString("Password");
      // });
    }

    return Scaffold(
      // appBar: AppBar(
      //   title: Text('call drawer'),
      // ),
      //drawer: drawerbarfist(onTap: () {}),
      body: SingleChildScrollView(
          child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
              Color.fromARGB(255, 53, 2, 83),
              Color.fromARGB(255, 101, 51, 150),
              Color.fromARGB(255, 225, 183, 233),
            ])),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 10,
            ),
            Image.asset(
              'img/tsalogo.png',
              height: 150,
              width: 200,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Silahkan Login',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              height: 400,
              width: 325,
              decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(10)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    'LOGIN',
                    style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Please Log in first',
                    style: TextStyle(fontSize: 15, color: Colors.grey),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: 250,
                    child: TextFormField(
                      controller: usernameController,
                      decoration: InputDecoration(labelText: 'Input Username'),
                    ),
                  ),
                  Container(
                    width: 250,
                    child: TextFormField(
                      obscureText: true,
                      controller: passwordController,
                      decoration: InputDecoration(labelText: 'Input Password'),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  GestureDetector(
                    child: MaterialButton(
                      onPressed: () {
                        String uname = usernameController.text;
                        String pass = passwordController.text;
                        if (uname == '123' && pass == '123') {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HalamanUtama()),
                          );
                        } else if (uname == '' && pass == '') {
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                              content: Text(
                                  "Username dan Password Tidak Boleh Kosong")));
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                              content: Text("Username atau Password Salah")));
                        }
                      },
                      child: Container(
                        alignment: Alignment.center,
                        width: 250,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            gradient: LinearGradient(colors: [
                              Color.fromARGB(255, 225, 183, 233),
                              Color.fromARGB(255, 23, 12, 182),
                              Color.fromARGB(255, 79, 63, 88),
                            ])),
                        child: Padding(
                          padding: EdgeInsets.all(12.0),
                          child: Text(
                            'LOGIN',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(20, 20, 40, 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Dont Have Account ?',
                          style: TextStyle(color: Colors.black),
                        ),
                        TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Register()),
                              );
                            },
                            child: Text(
                              ' Click Here',
                              style: TextStyle(color: Colors.purpleAccent[700]),
                            )),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}
