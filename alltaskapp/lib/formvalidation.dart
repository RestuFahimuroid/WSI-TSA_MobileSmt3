import 'package:alltaskapp/formvalidation2.dart';
import 'package:alltaskapp/widgetswitch.dart';
import 'package:flutter/material.dart';

class formvalidation extends StatefulWidget {
  const formvalidation({super.key});

  @override
  State<formvalidation> createState() => _formvalidationState();
}

class _formvalidationState extends State<formvalidation> {
  @override
  final _formkey = GlobalKey<FormState>();
  bool checkbox1 = false;
  bool checkbox2 = false;
  bool checkbox3 = false;
  bool checkbox4 = false;
  double nilaiSlider = 1;
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Form and Validatiion'),
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
          child: Form(
            key: _formkey,
            child: Column(
              children: [
                SizedBox(height: 10),
                Text(
                  'Registration Employee Form',
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.white.withOpacity(1),
                      fontWeight: FontWeight.w800),
                ),
                SizedBox(height: 10),
                TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color.fromARGB(255, 242, 239, 229),
                    prefixIcon: Icon(
                      Icons.analytics_outlined,
                      color: Colors.green,
                    ),
                    hintText: 'ID',
                    labelText: 'Input ID Number',
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.green)),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "ID Tidak Boleh Kosong";
                    }
                    return null;
                  },
                ),
                SizedBox(height: 20),
                TextFormField(
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    prefixIcon: Icon(
                      Icons.phone,
                      color: Colors.green,
                    ),
                    hintText: 'Type Number',
                    labelText: 'Input Phone Number Here',
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.green)),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Nomor Telepon Tidak Boleh Kosong";
                    }
                    return null;
                  },
                ),
                SizedBox(height: 20),
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    prefixIcon: Icon(
                      Icons.school_rounded,
                      color: Colors.green,
                    ),
                    hintText: 'Gmail',
                    labelText: 'Gmail Adress',
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.green)),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Gmail tidak boleh kosong";
                    }
                    return null;
                  },
                ),
                SizedBox(height: 20),
                TextFormField(
                  keyboardType: TextInputType.multiline,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    prefixIcon: Icon(
                      Icons.home_filled,
                      color: Colors.green,
                    ),
                    hintText: 'Adress',
                    labelText: 'Input Adress Here',
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.green)),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Alamat tidak boleh kosong";
                    }
                    return null;
                  },
                ),
                SizedBox(height: 20),
                TextFormField(
                  keyboardType: TextInputType.datetime,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    prefixIcon: Icon(
                      Icons.date_range_rounded,
                      color: Colors.green,
                    ),
                    hintText: 'Birth Date',
                    labelText: 'Input Birth Date',
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.green)),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Tanggal Lahir Tidak Boleh Kosong";
                    }
                    return null;
                  },
                ),
                SizedBox(
                  height: 10,
                  width: 10,
                ),
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(20, 10, 40, 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Move To Widget Switch',
                        style: TextStyle(color: Colors.black),
                      ),
                      TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => widgetswitch()),
                            );
                          },
                          child: Text(
                            ' Click Here',
                            style: TextStyle(color: Colors.purpleAccent[700]),
                          )),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(20, 0, 40, 00),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Move To Form Validation',
                        style: TextStyle(color: Colors.black),
                      ),
                      TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => formvalidation2()),
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
          ),
        ),
      ),
    );
  }
}
