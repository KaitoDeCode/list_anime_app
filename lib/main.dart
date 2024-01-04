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
      home:AppLayout(),
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
  child: Column(
    children: [
      rowAnime,
      rowAnime,
    ],
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  ),
);

var titleSyle = TextStyle(
  color: Colors.white,
  fontWeight: FontWeight.bold,
  fontSize: 15,
);

var rowAnime =  Row(
  mainAxisAlignment: MainAxisAlignment.spaceAround,
  children: [itemAnime, itemAnime],
);

var itemAnime = Container(
  child: const Column(
    children: [
      Image(
        image: AssetImage('assets/img/anime/tensura.jpeg'),
        width: 80.0,
      ),
      Text("Tensura",style: TextStyle(
  color: Colors.white,
  fontWeight: FontWeight.bold,
  fontSize: 15,
),)
    ],
  ),
);
