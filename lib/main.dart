import 'package:dinamik_ort_hesapla/widgets/ortalama_hesapla_page.dart';
import 'package:flutter/material.dart';

import 'constants/app_constants.dart';

void main() {
  runApp(const BenimUygulamam());
}

class BenimUygulamam extends StatefulWidget {
  const BenimUygulamam({Key? key}) : super(key: key);

  @override
  State<BenimUygulamam> createState() => _BenimUygulamamState();
}

class _BenimUygulamamState extends State<BenimUygulamam> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dinamik Ortalama Hesaplama',
      theme: ThemeData(
        primarySwatch: Sabitler.anaRenk,
        visualDensity: VisualDensity.adaptivePlatformDensity
      ),
      home: OrtalamaHesaplaPage(),
    );
  }
}
