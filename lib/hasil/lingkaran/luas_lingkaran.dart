import 'package:flutter/material.dart';

var fontFamilyHome = const TextStyle(
  fontFamily: 'Montserrat',
  fontSize: 20.0,
);

class LuasLingkaran extends StatelessWidget {
  final int jarijari;
  final int phi;
  const LuasLingkaran (
      {Key? key, required this.jarijari, required this.phi})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    int luaslingkaran = phi.toInt() * jarijari.toInt() * jarijari.toInt();
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Hasil Luas Lingkaran",
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
                "jarijari = $jarijari cm",
                style: fontFamilyHome,
              ),
            ),
            const Padding(padding: EdgeInsets.all(10.0)),
            Container(
              margin: const EdgeInsets.all(10.0),
              child: Text(
                "phi = $phi cm",
                style: fontFamilyHome,
              ),
            ),
            const Padding(padding: EdgeInsets.all(10.0)),
            Container(
              margin: const EdgeInsets.all(10.0),
              child: Text(
                "Hasil Luas Lingkaran = $luaslingkaran cm",
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
