import 'package:flutter/material.dart';
import 'package:alltaskapp/Pageview.dart';
import 'package:alltaskapp/drawer.dart';

class HalamanUtama extends StatelessWidget {
  const HalamanUtama({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Halaman Utama"),
        backgroundColor: Color.fromARGB(255, 53, 2, 83),
      ),
      drawer: drawerbarfist(onTap: () {}),
      body: Column(
        children: <Widget>[
          Container(
            margin: const EdgeInsets.symmetric(vertical: 16.0),
            height: 160,
            decoration: BoxDecoration(
              color: Colors.blue[100],
            ),
            child: PageView.builder(
                itemCount: appBannerList.length,
                itemBuilder: (context, index) {
                  return Container(
                    margin: const EdgeInsets.symmetric(horizontal: 16.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      image: DecorationImage(
                          image: AssetImage(appBannerList[1].imagesource),
                          fit: BoxFit.cover),
                    ),
                    child: DefaultTextStyle(
                        style: TextStyle(color: Colors.blue, fontSize: 20.0),
                        child: Stack(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.amber,
                                  borderRadius: BorderRadius.circular(20.0)),
                            ),
                            Center(
                              child: Column(children: <Widget>[
                                Text('Title'.toUpperCase()),
                                Container(
                                  width: 200,
                                  child: Text(
                                      appBannerList[index].title.toUpperCase(),
                                      textAlign: TextAlign.center),
                                )
                              ]),
                            ),
                          ],
                        )),
                  );
                }),
          )
        ],
      ),
    );
  }
}
