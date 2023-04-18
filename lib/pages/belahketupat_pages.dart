import 'package:flutter/material.dart';
import 'package:rumus_bangun_datar/hasil/belahketupat/keliling_belahketupat.dart';
import 'package:rumus_bangun_datar/hasil/belahketupat/luas_belahketupat.dart';

class BelahketupatPage extends StatefulWidget {
  const BelahketupatPage({Key? key}) : super(key: key);

  @override
  State<BelahketupatPage> createState() => _BelahketupatPageState();
}

class _BelahketupatPageState extends State<BelahketupatPage> {
  var fontFamilyHome =
      const TextStyle(fontFamily: 'Montserrat', fontSize: 20.0);
  int diagonal1 = 0;
  int diagonal2 = 0;
  int sisi = 0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Belah Ketupat",
          style: fontFamilyHome,
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            const Padding(padding: EdgeInsets.all(10.0)),
            ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: Image.asset("images/belahketupat.png"),
            ),
            Text(
              "Belah Ketupat sendiri ialah suatu bangun segi empat yang dibentuk dari gabungan antara segitiga sama kaki dan bayanganya setelah dicerminkan terhadap suatu alasnya sehingga perpaduan atau gabungan tersebut menghasilkan suatu bentuk Belah Ketupat.",
              style: fontFamilyHome,
              textAlign: TextAlign.justify,
            ),
            const Padding(padding: EdgeInsets.all(10.0)),
            Text(
              "Berikut Rumus Luas dan Keliling Belah Ketupat : ",
              style: fontFamilyHome,
              textAlign: TextAlign.justify,
            ),
            Text(
              "Keliling = 4 x s",
              style: fontFamilyHome,
              textAlign: TextAlign.center,
            ),
            Text(
              "Luas = 1/2 x diagonal 1 x diagonal 2",
              style: fontFamilyHome,
              textAlign: TextAlign.center,
            ),
            const Padding(padding: EdgeInsets.all(10.0)),
            Container(
              margin: const EdgeInsets.all(10.0),
              child: Text(
                "Silakan Masukkan Nilai diagonal 1, diagonal 2 dan sisi ",
                style: fontFamilyHome,
              ),
            ),
            const Padding(padding: EdgeInsets.all(10.0)),
            Container(
              margin: const EdgeInsets.all(10.0),
              child: TextField(
                decoration: InputDecoration(
                  hintStyle: fontFamilyHome,
                  hintText: 'Masukkan Nilai diagonal 1',
                  suffix: const Text("CM"),
                ),
                keyboardType: TextInputType.number,
                onChanged: (text) {
                  setState(() {
                    diagonal1 = int.parse(text);
                  });
                },
              ),
            ),
            const Padding(padding: EdgeInsets.all(10.0)),
            Container(
              margin: const EdgeInsets.all(10.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Masukkan Nilai diagonal 2',
                  hintStyle: fontFamilyHome,
                  suffix: const Text("CM"),
                ),
                keyboardType: TextInputType.number,
                onChanged: (text) {
                  setState(() {
                    diagonal2 = int.parse(text);
                  });
                },
              ),
            ),
            const Padding(padding: EdgeInsets.all(10.0)),
            Container(
              margin: const EdgeInsets.all(10.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Masukkan Nilai sisi',
                  hintStyle: fontFamilyHome,
                  suffix: const Text("CM"),
                ),
                keyboardType: TextInputType.number,
                onChanged: (text) {
                  setState(() {
                    sisi = int.parse(text);
                  });
                },
              ),
            ),
            const Padding(padding: EdgeInsets.all(10.0)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.green)),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: ((context) => LuasBelahketupat(
                              diagonal1: diagonal1,diagonal2: diagonal2, sisi: sisi))),
                    );
                  },
                  child: Text(
                    "Luas",
                    style: fontFamilyHome,
                  ),
                ),
                ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Colors.redAccent)),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: ((context) => KelilingBelahketupat(
                              diagonal1: diagonal1,diagonal2: diagonal2, sisi: sisi))),
                    );
                  },
                  child: Text(
                    "Keliling",
                    style: fontFamilyHome,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
