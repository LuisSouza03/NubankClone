import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:nubank_clone/controllers/controller_home_page.dart';

import '../../../utils/colors_standard.dart';

class CreditCard extends StatefulWidget {
  const CreditCard({Key? key}) : super(key: key);

  @override
  State<CreditCard> createState() => _CreditCardState();
}

class _CreditCardState extends State<CreditCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      child: Wrap(
        direction: Axis.vertical,
        crossAxisAlignment: WrapCrossAlignment.start,
        spacing: 12,
        children: [
          _textCreditCard(),
          _invoice(),
          _limitDisponible(),
          _installmentsButton(),
        ],
      ),
    );
  }

  _textCreditCard() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: const [
        Text('Cartão de Crédito',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
        Icon(MdiIcons.chevronRight)
      ],
    );
  }

  _invoice() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Fatura atual',
          style: TextStyle(color: Colors.grey),
        ),
        const SizedBox(
          height: 12,
        ),
        GetBuilder<ControllerHomePage>(
            init: ControllerHomePage(),
            builder: (controllerHomePage) {
              return Text(
                controllerHomePage.creditCardValue,
                style: const TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 18,
                ),
              );
            }),
      ],
    );
  }

  _limitDisponible() {
    return Column(
      children: [
        GetBuilder<ControllerHomePage>(
            init: ControllerHomePage(),
            builder: (controllerHomePagge) {
              return Text(
                'Limite dísponivel ${controllerHomePagge.limitCreditDisponible}',
                style: const TextStyle(
                  color: Colors.grey,
                ),
              );
            }),
      ],
    );
  }

  _installmentsButton() {
    return Container(
      margin: const EdgeInsets.only(top: 2, bottom: 16),
      padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
      decoration: BoxDecoration(
          color: greyColor, borderRadius: BorderRadius.circular(20)),
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 6),
        child: const Text(
          'Parcelar Compras',
          style: TextStyle(fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}
