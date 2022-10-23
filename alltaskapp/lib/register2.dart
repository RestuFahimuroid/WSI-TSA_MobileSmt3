import 'package:flutter/material.dart';
import 'package:alltaskapp/halaman_utama.dart';
import 'package:alltaskapp/main.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Register2 extends StatefulWidget {
  const Register2({super.key});
  @override
  State<Register2> createState() => _Register2State();
}

class _Register2State extends State<Register2> {
  List<String> agama = [
    "Islam",
    "Kristen Protenstan",
    "Kristen Katolik",
    "Hindu",
    "Budha"
  ];

  String _agama = "Islam";

  String _jk = "";

  TextEditingController controllerNama = new TextEditingController();
  TextEditingController controllerPass = new TextEditingController();
  TextEditingController controllerMoto = new TextEditingController();

  void _pilihJk(String value) {
    setState(() {
      _jk = value;
    });
  }

  void pilihAgama(String value) {
    setState(() {
      _agama = value;
    });
  }

  void kirimdata() {
    AlertDialog alertDialog = new AlertDialog(
      content: new Container(
        height: 200.0,
        child: new Column(
          children: <Widget>[
            new Text("Nama Lengkap : ${controllerNama.text}"),
            new Text("Password : ${controllerPass.text}"),
            new Text("Alamat Rumah : ${controllerMoto.text}"),
            new Text("Jenis Kelamin : ${_jk}"),
            new Text("Agama : ${_agama}"),
            new ElevatedButton(
              child: new Text(
                "OK",
                style: TextStyle(color: Colors.teal),
              ),
              onPressed: () => Navigator.pop(context),
              // color: Colors.teal,
            )
          ],
        ),
      ),
    );
    showDialog(context: context, builder: (_) => alertDialog);
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
                height: 15,
              ),
              Container(
                height: 700,
                width: 325,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 236, 49, 71).withOpacity(0.5),
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      'REGISTER',
                      style:
                          TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                    ),
                    new TextField(
                      controller: controllerNama,
                      decoration: new InputDecoration(
                          hintText: "Nama Lengkap",
                          labelText: "Nama Lengkap",
                          border: new OutlineInputBorder(
                              borderRadius: new BorderRadius.circular(20.0))),
                    ),
                    new Padding(
                      padding: new EdgeInsets.only(top: 20.0),
                    ),
                    new TextField(
                      controller: controllerPass,
                      obscureText: true,
                      decoration: new InputDecoration(
                          hintText: "Password",
                          labelText: "Password",
                          border: new OutlineInputBorder(
                              borderRadius: new BorderRadius.circular(20.0))),
                    ),
                    new Padding(
                      padding: new EdgeInsets.only(top: 20.0),
                    ),
                    new TextField(
                      controller: controllerMoto,
                      maxLines: 3,
                      decoration: new InputDecoration(
                          hintText: "Alamat Rumah",
                          labelText: "Alamat Rumah",
                          border: new OutlineInputBorder(
                              borderRadius: new BorderRadius.circular(20.0))),
                    ),
                    new Padding(
                      padding: new EdgeInsets.only(top: 20.0),
                    ),
                    new RadioListTile(
                      value: "laki-laki",
                      title: new Text("Laki-Laki"),
                      groupValue: _jk,
                      onChanged: (String? value) {
                        _pilihJk(value!);
                      },
                      activeColor: Colors.blue,
                      subtitle: new Text("Pilih ini jika anda Laki-Laki"),
                    ),
                    new RadioListTile(
                      value: "perempuan",
                      title: new Text("Perempuan"),
                      groupValue: _jk,
                      onChanged: (String? value) {
                        _pilihJk(value!);
                      },
                      activeColor: Colors.blue,
                      subtitle: new Text("Pilih ini jiks anda perempuan"),
                    ),
                    new Padding(
                      padding: new EdgeInsets.only(top: 20.0),
                    ),
                    new Row(
                      children: <Widget>[
                        new Text(
                          "agama",
                          style:
                              new TextStyle(fontSize: 18.0, color: Colors.blue),
                        ),
                        new Padding(
                          padding: new EdgeInsets.only(left: 15.0),
                        ),
                        DropdownButton(
                          onChanged: (String? value) {
                            pilihAgama(value!);
                          },
                          value: _agama,
                          items: agama.map((String value) {
                            return new DropdownMenuItem(
                              value: value,
                              child: new Text(value),
                            );
                          }).toList(),
                        )
                      ],
                    ),
                    new ElevatedButton(
                        child: new Text(
                          "Check",
                          style: TextStyle(color: Colors.white),
                        ),
                        onPressed: () {
                          kirimdata();
                        }
                        // color: Colors.teal,
                        )
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
