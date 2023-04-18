import 'package:flutter/material.dart';
import 'package:rumus_bangun_datar/hasil/jajargenjang/keliling_jajargenjang.dart';
import 'package:rumus_bangun_datar/hasil/jajargenjang/luas_jajargenjang.dart';

class JajargenjangPage extends StatefulWidget {
  const JajargenjangPage({Key? key}) : super(key: key);

  @override
  State<JajargenjangPage> createState() => _JajargenjangPageState();
}

class _JajargenjangPageState extends State<JajargenjangPage> {
  var fontFamilyHome = const TextStyle(
    fontFamily: 'Montserrat',
    fontSize: 20,
  );
  int a = 0;
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
          'Jajar Genjang',
          style: fontFamilyHome,
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: Image.asset("images/jajargenjang.jpg"),
            ),
            Text(
              "Jajar genjang adalah turunan dari segi empat dengan karakteristik khusus. Jajar genjang dengan empat panjang yang sama disebut belah ketupat.",
              style: fontFamilyHome,
              textAlign: TextAlign.center,
            ),
            const Padding(padding: EdgeInsets.all(10.0)),
            Text(
              "Berikut Rumus Luas dan Keliling Jajar Genjang",
              style: fontFamilyHome,
              textAlign: TextAlign.center,
            ),
            Text(
              "Keliling = AB + BC +CD + DA ",
              style: fontFamilyHome,
              textAlign: TextAlign.center,
            ),
            Text(
              "Luas = alas x tinggi",
              style: fontFamilyHome,
              textAlign: TextAlign.center,
            ),
            const Padding(padding: EdgeInsets.all(10.0)),
            Container(
              margin: const EdgeInsets.all(10.0),
              child: Text(
                "Silakan Masukkan Nilai alas , tinggi dan AB,BC,CD,DA :",
                style: fontFamilyHome,
                textAlign: TextAlign.center,
              ),
            ),
            const Padding(padding: EdgeInsets.all(10.0)),
            Container(
              margin: const EdgeInsets.all(10.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Masukkan Nilai alas',
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
                  hintText: 'Masukkan Nilai tinggi',
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
                          builder: ((context) => LuasJajargenjang(
                                a: a,
                                t: t,
                                ab: ab,
                                bc: bc,
                                cd: cd,
                                da: da,
                              ))),
                    );
                  },
                  child: Text(
                    'Luas Jajar Genjang',
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
                          builder: ((context) => KelilingJajargenjang(
                                a: a,
                                t: t,
                                ab: ab,
                                bc: bc,
                                cd: cd,
                                da: da,
                              ))),
                    );
                  },
                  child: Text(
                    'Keliling Jajar Genjang',
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
