import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:nubank_clone/utils/colors_standard.dart';

class MenuItens extends StatefulWidget {
  const MenuItens({Key? key}) : super(key: key);

  @override
  State<MenuItens> createState() => _MenuItensState();
}

class _MenuItensState extends State<MenuItens> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 12),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Wrap(
          direction: Axis.horizontal,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 7),
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(bottom: 10),
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: greyColor,
                      borderRadius: BorderRadius.circular(48),
                    ),
                    child: const Icon(MdiIcons.creditCard),
                  ),
                  const Text(
                    'Transferir',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
