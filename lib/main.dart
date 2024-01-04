import 'package:flutter/material.dart';
import 'package:praktek_1_flutter/components/header/header_app.dart';
import 'package:praktek_1_flutter/components/Hero/hero_section.dart';
import 'package:praktek_1_flutter/components/Kategory/kategori_section.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Anime',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: AppLayout(),
    );
  }
}

class AppLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var container = Container(
      padding: EdgeInsets.all(8.0),
      child: Column(
        children: [heroSection, kategoriSection, listAnime],
      ),
    );

    return Scaffold(
        backgroundColor: Colors.black87,
        appBar: AppBar(
          title: headerApp,
          backgroundColor: Colors.blue[800],
        ),
        body: container);
  }
}

var listAnime = Container(
  padding: EdgeInsets.all(10.0),
  child: Column(
    children: [itemAnime],
  ),
);

var titleSyle = TextStyle(
  color: Colors.white,
  fontWeight: FontWeight.bold,
  fontSize: 15,
);

var itemAnime = Row(
  children: <Widget>[
    Image(
      image: AssetImage("../assets/img/anime/tensura.jpeg"),
      width: 100.0,
    ),
    Column(
      children: [
        Text(
          "Tensei Shittara Slime Datta-ken", style: titleSyle,
        ),
        Text(
            "Anime dengen cerita seorang pemuda yang meninggal dan ber-rengkarnasi menjadi sebuah slime"),
      ],
    )
  ],
);
