import 'package:flutter/material.dart';
import 'package:rumus_bangun_datar/pages/persegi_pages.dart';
import 'package:rumus_bangun_datar/pages/persegi_panjang_pages.dart';
import 'package:rumus_bangun_datar/pages/segitiga_pages.dart';
import 'package:rumus_bangun_datar/pages/lingkaran_pages.dart';
import 'package:rumus_bangun_datar/pages/belahketupat_pages.dart';
import 'package:rumus_bangun_datar/pages/layanglayang_pages.dart';
import 'package:rumus_bangun_datar/pages/trapesium_pages.dart';
import 'package:rumus_bangun_datar/pages/jajargenjang_pages.dart';

var fontFamilyHome = const TextStyle(
  fontFamily: 'Montserrat',
  fontSize: 20.0,
);

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Rumus Bangun Datar',
          style: fontFamilyHome,
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              const Padding(padding: EdgeInsets.all(15.0)),
              Container(
                margin:
                    const EdgeInsets.symmetric(vertical: 5, horizontal: 30),
                child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.red)),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: ((context) => const PersegiPage()),
                      ),
                    );
                  },
                  child: Text('Persegi', style: fontFamilyHome),
                ),
              ),
              Container(
                margin:
                    const EdgeInsets.symmetric(vertical: 5, horizontal: 30),
                child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Colors.green)),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: ((context) => const PersegiPanjangPage()),
                      ),
                    );
                  },
                  child: Text('Persegi Panjang', style: fontFamilyHome),
                ),
              ),
              Container(
                margin:
                    const EdgeInsets.symmetric(vertical: 5, horizontal: 30),
                child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Colors.yellow)),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => const SegitigaPage())));
                  },
                  child: Text('Segitiga', style: fontFamilyHome),
                ),
              ),
              Container(
                margin:
                const EdgeInsets.symmetric(vertical: 5, horizontal: 30),
                child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.purple)),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: ((context) => const LingkaranPage()),
                      ),
                    );
                  },
                  child: Text('Lingkaran', style: fontFamilyHome),
                ),
              ),
              Container(
                margin:
                const EdgeInsets.symmetric(vertical: 5, horizontal: 30),
                child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.brown)),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: ((context) => const BelahketupatPage()),
                      ),
                    );
                  },
                  child: Text('Belah Ketupat', style: fontFamilyHome),
                ),
              ),
              Container(
                margin:
                const EdgeInsets.symmetric(vertical: 5, horizontal: 30),
                child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.orange)),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: ((context) => const LayanglayangPage()),
                      ),
                    );
                  },
                  child: Text('Layang-Layang', style: fontFamilyHome),
                ),
              ),
              Container(
                margin:
                const EdgeInsets.symmetric(vertical: 5, horizontal: 30),
                child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.black38)),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: ((context) => const TrapesiumPage()),
                      ),
                    );
                  },
                  child: Text('Trapesium', style: fontFamilyHome),
                ),
              ),
              Container(
                margin:
                const EdgeInsets.symmetric(vertical: 5, horizontal: 30),
                child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.blue)),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: ((context) => const JajargenjangPage()),
                      ),
                    );
                  },
                  child: Text('Jajar Genjang', style: fontFamilyHome),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
