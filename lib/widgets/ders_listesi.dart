// ignore_for_file: prefer_const_constructors

import 'package:dinamik_ort_hesapla/constants/app_constants.dart';
import 'package:dinamik_ort_hesapla/helper/data_helper.dart';
import 'package:dinamik_ort_hesapla/models/ders.dart';
import 'package:flutter/material.dart';

class DersListesi extends StatelessWidget {
  
  final Function onElemanCikarildi;
  const DersListesi({required this.onElemanCikarildi, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Ders> tumDersler = DataHelper.tumEklenenDersler;
    return tumDersler.length > 0
        ? ListView.builder(
            itemCount: tumDersler.length,
            itemBuilder: (context, index) {
              return Dismissible(
                key: UniqueKey(),
                direction: DismissDirection.startToEnd,
                onDismissed: (a) {
                  onElemanCikarildi(index);
                },
                child: Padding(
                  padding: EdgeInsets.all(3),
                  child: Card(
                      child: ListTile(
                    title: Text(tumDersler[index].ad),
                    leading: CircleAvatar(
                      backgroundColor: Sabitler.anaRenk,
                      child: Icon(Icons.book_outlined, color: Colors.white),
                      //child: Text((tumDersler[index].harfDegeri * tumDersler[index].krediDegeri).toStringAsFixed(0)),
                    ),
                    subtitle: Text(
                        '${tumDersler[index].krediDegeri} Kredi, Not Degeri ${tumDersler[index].harfDegeri}'),
                  )),
                ),
              );
            })
        : Center(
            child: Container(
              child: Text(
                'ÖNCE DERS EKLE',
                style: Sabitler.baslikStyle,
              ),
            ),
          );
  }
}
