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
            _itemMenu(
              icon: MdiIcons.clover,
              name: 'Área Pix',
              isFirst: true,
            ),
            _itemMenu(
              icon: MdiIcons.barcode,
              name: 'Pagar',
            ),
            _itemMenu(
              icon: MdiIcons.cash,
              name: 'Transferir',
            ),
            _itemMenu(
              icon: MdiIcons.cash,
              name: 'Depositar',
            ),
            _itemMenu(
              icon: MdiIcons.creditCard,
              name: 'Recarga',
            ),
            _itemMenu(
              icon: MdiIcons.heartOutline,
              name: 'Doação',
            ),
            _itemMenu(
              icon: MdiIcons.earth,
              name: 'Transferir \n Internac.',
            ),
            _itemMenu(
              icon: MdiIcons.signal,
              name: 'Investir',
            ),
          ],
        ),
      ),
    );
  }

  _itemMenu({required IconData icon, required String name, bool? isFirst}) {
    return Container(
      padding: (isFirst ?? false)
          ? const EdgeInsets.only(right: 7, left: 20)
          : const EdgeInsets.symmetric(horizontal: 7),
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(bottom: 10),
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: greyColor,
              borderRadius: BorderRadius.circular(48),
            ),
            child: Icon(icon),
          ),
          Text(
            name,
            style: const TextStyle(fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
