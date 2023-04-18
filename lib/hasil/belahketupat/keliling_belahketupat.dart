import 'package:flutter/material.dart';

var fontFamilyHome = const TextStyle(
  fontFamily: 'Montserrat',
  fontSize: 20.0,
);

class KelilingBelahketupat extends StatelessWidget {
  final int diagonal1;
  final int diagonal2;
  final int sisi;
  const KelilingBelahketupat(
      {Key? key, required this.diagonal1, required this.diagonal2,
        required this.sisi})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    int kelilingbelahketupat = 4 * (sisi.toInt());
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Hasil Keliling Belah ketupat",
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
                "Hasil Keliling Belah Ketupat = $kelilingbelahketupat cm",
                style: fontFamilyHome,
              ),
            ),
            const Padding(padding: EdgeInsets.all(10.0)),
            ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.black87)),
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text(
                  "Kembali",
                  style: fontFamilyHome,
                ))
          ],
        ),
      ),
    );
  }
}
