import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ), //ThemeData
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  final String title = 'Agro Jolong';
  final String location = 'Pati, Jawa Tengah';
  final String description =
      '''Agro Jolong merupakan perkebunan kopi peninggalan Belanda yang dibangun tahun 1895 dan baru diresmikan pada tahun 2018 dibawah pengelolaan PT. Perkebunan Nusantara IX milik BUMN yang kemudian dikembangkan menjadi destinasi wisata dengan tujuan untuk meningkatkan pendapatan daerah dalam sektor pariwisata. Wisata Agro Jolong ini berada di Ds.Sitiluhur Kec.Gembong Kab.Pati Jawa Tengah.''';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Objek Wisata'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.asset(
            'images/objek wisata agro jolong.jpeg',
            height: 250,
            width: 412,
            fit: BoxFit.fill,
          ),
          Container(
            height: 15,
          ),
          Row(
            children: [
              Container(
                width: 15,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    this.title,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    this.location,
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 20,
                    ),
                  )
                ],
              ),
              Container(
                width: 100,
              ),
              Icon(
                Icons.star,
                size: 30,
                color: Colors.orange,
              ),
              Text(
                '4',
                style: TextStyle(
                  fontSize: 18,
                ),
              )
            ],
          ),
          Container(
            padding: EdgeInsets.all(15),
            child: Text(
              this.description,
              style: TextStyle(
                fontSize: 18,
              ),
              softWrap: true,
            ),
          ),
        ],
      ),
    );
  }
}
