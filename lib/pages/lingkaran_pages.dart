import 'package:flutter/material.dart';
import 'package:rumus_bangun_datar/hasil/lingkaran/keliling_lingkaran.dart';
import 'package:rumus_bangun_datar/hasil/lingkaran/luas_lingkaran.dart';

class LingkaranPage extends StatefulWidget {
  const LingkaranPage({Key? key}) : super(key: key);

  @override
  State<LingkaranPage> createState() => _LingkaranPageState();
}

class _LingkaranPageState extends State<LingkaranPage> {
  var fontFamilyHome =
      const TextStyle(fontFamily: 'Montserrat', fontSize: 20.0);
  int jarijari = 0;
  int phi = 0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Lingkaran",
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
              child: Image.asset("images/lingkaran.png"),
            ),
            Text(
              "Lingkaran merupakan bangun datar yang terbentuk dari himpunan semua titik persekitaran yang mengelilingi suatu titik asal dengan jarak yang sama.",
              style: fontFamilyHome,
              textAlign: TextAlign.justify,
            ),
            const Padding(padding: EdgeInsets.all(10.0)),
            Text(
              "Berikut Rumus Luas dan Keliling Lingkaran : ",
              style: fontFamilyHome,
              textAlign: TextAlign.justify,
            ),
            Text(
              "Keliling = 2 x π x r",
              style: fontFamilyHome,
              textAlign: TextAlign.center,
            ),
            Text(
              "Luas = π x r x r",
              style: fontFamilyHome,
              textAlign: TextAlign.center,
            ),
            const Padding(padding: EdgeInsets.all(10.0)),
            Container(
              margin: const EdgeInsets.all(10.0),
              child: Text(
                "Silakan Masukkan Nilai jari jari dan phi ",
                style: fontFamilyHome,
              ),
            ),
            const Padding(padding: EdgeInsets.all(10.0)),
            Container(
              margin: const EdgeInsets.all(10.0),
              child: TextField(
                decoration: InputDecoration(
                  hintStyle: fontFamilyHome,
                  hintText: 'Masukkan Nilai jari jari',
                  suffix: const Text("CM"),
                ),
                keyboardType: TextInputType.number,
                onChanged: (text) {
                  setState(() {
                    jarijari = int.parse(text);
                  });
                },
              ),
            ),
            const Padding(padding: EdgeInsets.all(10.0)),
            Container(
              margin: const EdgeInsets.all(10.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Masukkan Nilai π : 3.14',
                  hintStyle: fontFamilyHome,
                  suffix: const Text("CM"),
                ),
                keyboardType: TextInputType.number,
                onChanged: (text) {
                  setState(() {
                    phi = int.parse(text);
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
                          builder: ((context) => LuasLingkaran(
                              jarijari: jarijari, phi: phi))),
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
                          builder: ((context) => KelilingLingkaran(
                              jarijari: jarijari, phi: phi))),
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
