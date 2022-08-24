import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:nubank_clone/utils/colors_standard.dart';

class MyCreditCards extends StatefulWidget {
  const MyCreditCards({Key? key}) : super(key: key);

  @override
  State<MyCreditCards> createState() => _MyCreditCardsState();
}

class _MyCreditCardsState extends State<MyCreditCards> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      margin: const EdgeInsets.fromLTRB(20, 10, 20, 10),
      decoration: BoxDecoration(
        color: greyColor,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        children: const [
          Icon(
            MdiIcons.cardsOutline,
            color: Colors.black,
          ),
          SizedBox(
            width: 12,
          ),
          Text(
            'Meus Cartões',
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
          )
        ],
      ),
    );
  }
}
