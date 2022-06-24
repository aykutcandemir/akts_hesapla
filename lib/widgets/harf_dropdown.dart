import 'package:flutter/material.dart';

import '../constants/app_constants.dart';
import '../helper/data_helper.dart';

class HarfDropdown extends StatefulWidget {
  final Function onHarfSecildi;
  HarfDropdown({required this.onHarfSecildi, Key? key}) : super(key: key);

  @override
  State<HarfDropdown> createState() => _HarfDropdownState();
}

class _HarfDropdownState extends State<HarfDropdown> {
  double secilenHarfDeger = 4;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: Sabitler.dropDownPadding,
      decoration: BoxDecoration(
          color: Sabitler.anaRenk.shade100.withOpacity(0.3),
          borderRadius: Sabitler.borderRadius),
      child: DropdownButton<double>(
        elevation: 16,
        iconEnabledColor: Sabitler.anaRenk.shade500,
        underline: Container(),
        value: secilenHarfDeger,
        items: DataHelper.tumDerslerinHarfleri(),
        onChanged: (deger) {
          setState(() {
            secilenHarfDeger = deger!;
            widget.onHarfSecildi(secilenHarfDeger);
          });
        },
      ),
    );
  }
}
