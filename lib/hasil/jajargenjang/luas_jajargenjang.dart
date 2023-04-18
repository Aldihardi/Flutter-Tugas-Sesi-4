import 'package:flutter/material.dart';

var fontFamilyHome = const TextStyle(
  fontFamily: 'Montserrat',
  fontSize: 20.0,
);

class LuasJajargenjang extends StatelessWidget {
  final int a;
  final int t;
  final int ab;
  final int bc;
  final int cd;
  final int da;
  const LuasJajargenjang(
      {Key? key,required this.a, required this.t,
        required this.ab, required this.bc, required this.cd,required this.da})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    int luasjajargenjang = a * t ;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Hasil Luas Jajar Genjang",
          style: fontFamilyHome,
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Padding(padding: EdgeInsets.all(10.0)),
            Container(
              margin: const EdgeInsets.all(10.0),
              child: Text(
                "Nilai a = $a cm",
                style: fontFamilyHome,
              ),
            ),
            const Padding(padding: EdgeInsets.all(10.0)),
            Container(
              margin: const EdgeInsets.all(10.0),
              child: Text(
                "Nilai t = $t cm",
                style: fontFamilyHome,
              ),
            ),
            const Padding(padding: EdgeInsets.all(10.0)),
            Container(
              margin: const EdgeInsets.all(10.0),
              child: Text(
                "Hasil Luas Jajar Genjang = $luasjajargenjang cm",
                style: fontFamilyHome,
              ),
            ),
            const Padding(padding: EdgeInsets.all(10.0)),
            ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text(
                  'Kembali',
                  style: fontFamilyHome,
                ))
          ],
        ),
      ),
    );
  }
}
