import 'package:flutter/material.dart';

var fontFamilyHome = const TextStyle(
  fontFamily: 'Montserrat',
  fontSize: 20.0,
);

class LuasBelahketupat extends StatelessWidget {
  final int diagonal1;
  final int diagonal2;
  final int sisi;
  const LuasBelahketupat (
      {Key? key, required this.diagonal1, required this.diagonal2,
        required this.sisi})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double luasbelahketupat = 0.5 * diagonal1.toInt() * diagonal2.toInt();
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Hasil Luas Belah Ketupat",
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
                "diagonal1 = $diagonal1 cm",
                style: fontFamilyHome,
              ),
            ),
            const Padding(padding: EdgeInsets.all(10.0)),
            Container(
              margin: const EdgeInsets.all(10.0),
              child: Text(
                "diagonal2 = $diagonal2 cm",
                style: fontFamilyHome,
              ),
            ),
            const Padding(padding: EdgeInsets.all(10.0)),
            Container(
              margin: const EdgeInsets.all(10.0),
              child: Text(
                "sisi = $sisi cm",
                style: fontFamilyHome,
              ),
            ),
            const Padding(padding: EdgeInsets.all(10.0)),
            Container(
              margin: const EdgeInsets.all(10.0),
              child: Text(
                "Hasil Luas Belah Ketupat = $luasbelahketupat cm",
                style: fontFamilyHome,
              ),
            ),
            const Padding(padding: EdgeInsets.all(10.0)),
            ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.orange)),
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
