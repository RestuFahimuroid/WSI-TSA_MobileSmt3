import 'package:flutter/material.dart';
import 'package:lite_rolling_switch/lite_rolling_switch.dart';

class widgetswitch extends StatefulWidget {
  const widgetswitch({super.key});

  @override
  State<widgetswitch> createState() => _widgetswitchState();
}

class _widgetswitchState extends State<widgetswitch> {
  @override
  final _formkey = GlobalKey<FormState>();
  bool checkbox1 = false;
  bool checkbox2 = false;
  bool checkbox3 = false;
  bool checkbox4 = false;
  bool checkbox5 = false;
  bool checkbox6 = false;
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
                Color.fromARGB(255, 30, 220, 241),
                Color.fromARGB(121, 26, 81, 126),
                Color.fromARGB(255, 175, 10, 161),
              ])),
          child: Form(
            key: _formkey,
            child: Column(
              children: [
                SizedBox(height: 10),
                Text(
                  'Penguasaan Bahasa Pemrograman',
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.white.withOpacity(1),
                      fontWeight: FontWeight.w800),
                ),
                CheckboxListTile(
                  title: Text("Mobile"),
                  subtitle: Text("Flutter, Dart"),
                  value: checkbox1,
                  activeColor: Colors.yellow,
                  onChanged: (value) {
                    setState(() {
                      checkbox1 = value!;
                    });
                  },
                ),
                CheckboxListTile(
                  title: Text("Mobile"),
                  subtitle: Text("Kotlin"),
                  value: checkbox5,
                  activeColor: Colors.yellow,
                  onChanged: (value) {
                    setState(() {
                      checkbox5 = value!;
                    });
                  },
                ),
                CheckboxListTile(
                  title: Text("Website"),
                  subtitle: Text("HTML"),
                  value: checkbox2,
                  activeColor: Colors.yellow,
                  onChanged: (value) {
                    setState(() {
                      checkbox2 = value!;
                    });
                  },
                ),
                CheckboxListTile(
                  title: Text("Website"),
                  subtitle: Text("CSS"),
                  value: checkbox3,
                  activeColor: Colors.yellow,
                  onChanged: (value) {
                    setState(() {
                      checkbox3 = value!;
                    });
                  },
                ),
                SwitchListTile(
                  title: Text('Kuliah'),
                  subtitle: Text('Pernah Melakukan studi Kuliah'),
                  value: true,
                  activeTrackColor: Colors.pink[100],
                  activeColor: Colors.red,
                  onChanged: (value) {},
                ),
                SwitchListTile(
                  title: Text('Bersertifikasi'),
                  subtitle: Text('Pernah Ikut Sertifikasi Atau Pelatihan'),
                  value: true,
                  activeTrackColor: Colors.pink[100],
                  activeColor: Colors.red,
                  onChanged: (value) {},
                ),
                SwitchListTile(
                  title: Text('Pengalaman Kerja'),
                  subtitle: Text('Pernah Memiliki Pengalaman Kerja'),
                  value: false,
                  activeTrackColor: Colors.pink[100],
                  activeColor: Colors.red,
                  onChanged: (value) {},
                ),
                SizedBox(
                  height: 20,
                  width: 300,
                  child: Text(
                    "Tingkat Penguasaan Bahasa Pemrograman",
                    textAlign: TextAlign.center,
                  ),
                ),
                Slider(
                  value: nilaiSlider,
                  min: 0,
                  max: 100,
                  onChanged: (value) {
                    setState(() {
                      nilaiSlider = value;
                    });
                  },
                  activeColor: Color.fromARGB(255, 203, 238, 47),
                  inactiveColor: Color.fromARGB(31, 228, 232, 230),
                  thumbColor: Color.fromARGB(255, 95, 156, 3),
                ),
                SizedBox(
                  height: 20,
                  width: 10,
                ),
                Row(
                  children: [
                    SizedBox(width: 20),
                    Expanded(
                      child: ElevatedButton(
                          onPressed: () {
                            if (_formkey.currentState!.validate()) {}
                          },
                          child: Text('Submit')),
                    ),
                    SizedBox(width: 20),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
