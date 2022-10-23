import 'package:alltaskapp/register2.dart';
import 'package:alltaskapp/register5.dart';
import 'package:flutter/material.dart';
import 'package:alltaskapp/halaman_utama.dart';
import 'package:alltaskapp/main.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Register extends StatefulWidget {
  const Register({super.key});
  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  String _jk = "";

  void _pilihJk(String value) {
    setState(() {
      _jk = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    TextEditingController usernameController = TextEditingController();
    TextEditingController passwordController = TextEditingController();

    Future<void> sharedPreferences() async {
      SharedPreferences prefs = await SharedPreferences.getInstance();

      await prefs.setString("Username", usernameController.text);
      await prefs.setString("Password", passwordController.text);
    }

    return Scaffold(
      appBar: AppBar(
        title: Text("REGISTER"),
        backgroundColor: Color.fromARGB(255, 53, 2, 83),
      ),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                Color.fromARGB(255, 177, 189, 6),
                Color.fromARGB(121, 51, 140, 213)
              ])),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 10,
              ),
              Image.asset(
                'img/tsalogo.png',
                height: 100,
                width: 100,
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                height: 600,
                width: 325,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 139, 246, 143).withOpacity(0.7),
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      'REGISTER',
                      style:
                          TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Please fill this form',
                      style: TextStyle(fontSize: 15, color: Colors.black),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: 250,
                      child: TextFormField(
                        controller: usernameController,
                        decoration:
                            InputDecoration(labelText: 'Input Username'),
                      ),
                    ),
                    Container(
                      width: 250,
                      child: TextFormField(
                        obscureText: true,
                        controller: passwordController,
                        decoration: InputDecoration(labelText: 'Input Gmail'),
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Container(
                      width: 250,
                      child: TextFormField(
                        controller: usernameController,
                        decoration:
                            InputDecoration(labelText: 'Input Password'),
                      ),
                    ),
                    Container(
                      width: 250,
                      child: TextFormField(
                        obscureText: true,
                        controller: passwordController,
                        decoration:
                            InputDecoration(labelText: 'Confirm Passowrd'),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    GestureDetector(
                      child: MaterialButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Register2()),
                          );
                        },
                        child: Container(
                          alignment: Alignment.center,
                          width: 250,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              gradient: LinearGradient(colors: [
                                Color.fromARGB(255, 172, 56, 195),
                                Color.fromARGB(255, 154, 215, 73),
                                Color.fromARGB(255, 100, 197, 223),
                              ])),
                          child: Padding(
                            padding: EdgeInsets.all(12.0),
                            child: Text(
                              'NEXT',
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
                            'Click Here to Login',
                            style: TextStyle(color: Colors.grey),
                          ),
                          TextButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => LoginPage()),
                                );
                              },
                              child: Text(
                                ' Click Here',
                                style:
                                    TextStyle(color: Colors.purpleAccent[700]),
                              )),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
