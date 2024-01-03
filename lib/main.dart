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
    return Scaffold(
        backgroundColor: Colors.black87,
        appBar: AppBar(
          title: headerApp,
          backgroundColor: Colors.blue[800],
        ),
        body: Container(
          padding: EdgeInsets.all(8.0),
          child: Column(
            children: [heroSection, kategoriSection],
          ),
        ));
  }
}

