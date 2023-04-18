import 'package:flutter/material.dart';

var fontFamilyHome = const TextStyle(
  fontFamily: 'Montserrat',
  fontSize: 20.0,
);

class KelilingTrapesium extends StatelessWidget {
  final int a;
  final int b;
  final int t;
  final int ab;
  final int bc;
  final int cd;
  final int da;
  const KelilingTrapesium(
      {Key? key, required this.a, required this.b, required this.t,
        required this.ab, required this.bc, required this.cd,required this.da})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    int kelilingtrapesium = (ab + bc + cd + da);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Hasil Keliling Trapesium",
          style: fontFamilyHome,
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Padding(padding: EdgeInsets.all(10.0)),
            Container(
              margin: const EdgeInsets.all(10.0),
              child: Text(
                "Nilai ab = $ab cm",
                style: fontFamilyHome,
              ),
            ),
            const Padding(padding: EdgeInsets.all(10.0)),
            Container(
              margin: const EdgeInsets.all(10.0),
              child: Text(
                "Nilai bc = $bc cm",
                style: fontFamilyHome,
              ),
            ),
            const Padding(padding: EdgeInsets.all(10.0)),
            Container(
              margin: const EdgeInsets.all(10.0),
              child: Text(
                "Nilai cd = $cd cm",
                style: fontFamilyHome,
              ),
            ),
            const Padding(padding: EdgeInsets.all(10.0)),
            Container(
              margin: const EdgeInsets.all(10.0),
              child: Text(
                "Nilai da = $da cm",
                style: fontFamilyHome,
              ),
            ),
            const Padding(padding: EdgeInsets.all(10.0)),
            Container(
              margin: const EdgeInsets.all(10.0),
              child: Text(
                "Hasil Keliling Trapesium = $kelilingtrapesium cm",
                style: fontFamilyHome,
              ),
            ),
            const Padding(padding: EdgeInsets.all(10.0)),
            ElevatedButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.red)),
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text(
                'Kembali',
                style: fontFamilyHome,
              ),
            )
          ],
        ),
      ),
    );
  }
}
