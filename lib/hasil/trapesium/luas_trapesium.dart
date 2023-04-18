import 'package:flutter/material.dart';

var fontFamilyHome = const TextStyle(
  fontFamily: 'Montserrat',
  fontSize: 20.0,
);

class LuasTrapesium extends StatelessWidget {
  final int a;
  final int b;
  final int t;
  final int ab;
  final int bc;
  final int cd;
  final int da;
  const LuasTrapesium(
      {Key? key,required this.a, required this.b, required this.t,
        required this.ab, required this.bc, required this.cd,required this.da})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double luastrapesium = 0.5 * (a + b ) * t;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Hasil Luas Trapesium",
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
                "Nilai b = $b cm",
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
                "Hasil Luas Trapesium = $luastrapesium cm",
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
