import 'package:flutter/material.dart';
import 'package:rumus_bangun_datar/hasil/trapesium/keliling_trapesium.dart';
import 'package:rumus_bangun_datar/hasil/trapesium/luas_trapesium.dart';

class TrapesiumPage extends StatefulWidget {
  const TrapesiumPage({Key? key}) : super(key: key);

  @override
  State<TrapesiumPage> createState() => _TrapesiumPageState();
}

class _TrapesiumPageState extends State<TrapesiumPage> {
  var fontFamilyHome = const TextStyle(
    fontFamily: 'Montserrat',
    fontSize: 20,
  );
  int a = 0;
  int b = 0;
  int t = 0;
  int ab = 0;
  int bc = 0;
  int cd = 0;
  int da = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Trapesium',
          style: fontFamilyHome,
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: Image.asset("images/trapesium.png"),
            ),
            Text(
              "Trapesium adalah bangun datar dua dimensi yang tersusun oleh 4 buah sisi yaitu 2 buah sisi sejajar yang tidak sama panjang dan 2 buah sisi lainnya.",
              style: fontFamilyHome,
              textAlign: TextAlign.center,
            ),
            const Padding(padding: EdgeInsets.all(10.0)),
            Text(
              "Berikut Rumus Luas dan Keliling Trapesium",
              style: fontFamilyHome,
              textAlign: TextAlign.center,
            ),
            Text(
              "Keliling = AB + BC +CD + DA ",
              style: fontFamilyHome,
              textAlign: TextAlign.center,
            ),
            Text(
              "Luas = 1/2 x (alas a + alas b ) x t",
              style: fontFamilyHome,
              textAlign: TextAlign.center,
            ),
            const Padding(padding: EdgeInsets.all(10.0)),
            Container(
              margin: const EdgeInsets.all(10.0),
              child: Text(
                "Silakan Masukkan Nilai a,b,t dan AB,BC,CD,DA :",
                style: fontFamilyHome,
                textAlign: TextAlign.center,
              ),
            ),
            const Padding(padding: EdgeInsets.all(10.0)),
            Container(
              margin: const EdgeInsets.all(10.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Masukkan Nilai a',
                  hintStyle: fontFamilyHome,
                  suffix: const Text('cm'),
                ),
                keyboardType: TextInputType.number,
                onChanged: (text) {
                  setState(() {
                    a = int.parse(text);
                  });
                },
              ),
            ),
            const Padding(padding: EdgeInsets.all(10.0)),
            Container(
              margin: const EdgeInsets.all(10.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Masukkan Nilai b',
                  hintStyle: fontFamilyHome,
                  suffix: const Text('cm'),
                ),
                keyboardType: TextInputType.number,
                onChanged: (text) {
                  setState(() {
                    b = int.parse(text);
                  });
                },
              ),
            ),
            const Padding(padding: EdgeInsets.all(10.0)),
            Container(
              margin: const EdgeInsets.all(10.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Masukkan Nilai t',
                  hintStyle: fontFamilyHome,
                  suffix: const Text('cm'),
                ),
                keyboardType: TextInputType.number,
                onChanged: (text) {
                  setState(() {
                    t = int.parse(text);
                  });
                },
              ),
            ),
            Container(
              margin: const EdgeInsets.all(10.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Masukkan Nilai AB',
                  hintStyle: fontFamilyHome,
                  suffix: const Text('cm'),
                ),
                keyboardType: TextInputType.number,
                onChanged: (text) {
                  setState(() {
                    ab = int.parse(text);
                  });
                },
              ),
            ),
            Container(
              margin: const EdgeInsets.all(10.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Masukkan Nilai BC',
                  hintStyle: fontFamilyHome,
                  suffix: const Text('cm'),
                ),
                keyboardType: TextInputType.number,
                onChanged: (text) {
                  setState(() {
                    bc = int.parse(text);
                  });
                },
              ),
            ),
            Container(
              margin: const EdgeInsets.all(10.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Masukkan Nilai CD',
                  hintStyle: fontFamilyHome,
                  suffix: const Text('cm'),
                ),
                keyboardType: TextInputType.number,
                onChanged: (text) {
                  setState(() {
                    cd = int.parse(text);
                  });
                },
              ),
            ),
            Container(
              margin: const EdgeInsets.all(10.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Masukkan Nilai DA',
                  hintStyle: fontFamilyHome,
                  suffix: const Text('cm'),
                ),
                keyboardType: TextInputType.number,
                onChanged: (text) {
                  setState(() {
                    da = int.parse(text);
                  });
                },
              ),
            ),
            const Padding(padding: EdgeInsets.all(10.0)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Colors.black12)),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: ((context) => LuasTrapesium(
                                a: a,
                                b: b,
                                t: t,
                                ab: ab,
                                bc: bc,
                                cd: cd,
                                da: da,
                              ))),
                    );
                  },
                  child: Text(
                    'Luas Trapesium',
                    style: fontFamilyHome,
                    textAlign: TextAlign.center,
                  ),
                ),
                ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Colors.black38)),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: ((context) => KelilingTrapesium(
                                a: a,
                                b: b,
                                t: t,
                                ab: ab,
                                bc: bc,
                                cd: cd,
                                da: da,
                              ))),
                    );
                  },
                  child: Text(
                    'Keliling Trapesium',
                    style: fontFamilyHome,
                    textAlign: TextAlign.center,
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
