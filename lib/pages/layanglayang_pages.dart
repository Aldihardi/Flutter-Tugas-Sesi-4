import 'package:flutter/material.dart';
import 'package:rumus_bangun_datar/hasil/layanglayang/keliling_layanglayang.dart';
import 'package:rumus_bangun_datar/hasil/layanglayang/luas_layanglayang.dart';

class LayanglayangPage extends StatefulWidget {
  const LayanglayangPage({Key? key}) : super(key: key);

  @override
  State<LayanglayangPage> createState() => _LayanglayangPageState();
}

class _LayanglayangPageState extends State<LayanglayangPage> {
  var fontFamilyHome =
      const TextStyle(fontFamily: 'Montserrat', fontSize: 20.0);
  int diagonal1 = 0;
  int diagonal2 = 0;
  int sisia = 0;
  int sisib = 0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Layang-Layang",
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
              child: Image.asset("images/layang.PNG"),
            ),
            Text(
              "Layang-layang adalah bangun datar yang terdiri dari dua pasang sisi yang sama panjang dan saling membentuk sudut yang berbeda. Sehingga layang-layang memiliki dua buah diagonal yang panjangnya berbeda.",
              style: fontFamilyHome,
              textAlign: TextAlign.justify,
            ),
            const Padding(padding: EdgeInsets.all(10.0)),
            Text(
              "Berikut Rumus Luas dan Keliling Layang-Layang : ",
              style: fontFamilyHome,
              textAlign: TextAlign.justify,
            ),
            Text(
              "Keliling = 2a + 2b ",
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
                "Silakan Masukkan Nilai diagonal 1, diagonal 2 dan sisi a dan sisi b ",
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
                  hintText: 'Masukkan Nilai sisi a',
                  hintStyle: fontFamilyHome,
                  suffix: const Text("CM"),
                ),
                keyboardType: TextInputType.number,
                onChanged: (text) {
                  setState(() {
                    sisia = int.parse(text);
                  });
                },
              ),
            ),
            const Padding(padding: EdgeInsets.all(10.0)),
            Container(
              margin: const EdgeInsets.all(10.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Masukkan Nilai sisi b',
                  hintStyle: fontFamilyHome,
                  suffix: const Text("CM"),
                ),
                keyboardType: TextInputType.number,
                onChanged: (text) {
                  setState(() {
                    sisib = int.parse(text);
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
                          builder: ((context) => LuasLayanglayang(
                              diagonal1: diagonal1,diagonal2: diagonal2,
                              sisia: sisia, sisib: sisib))),
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
                          builder: ((context) => KelilingLayanglayang(
                              diagonal1: diagonal1,diagonal2: diagonal2,
                              sisia: sisia, sisib: sisib))),
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
