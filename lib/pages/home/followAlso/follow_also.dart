import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:nubank_clone/utils/colors_standard.dart';

class FollowAlso extends StatelessWidget {
  const FollowAlso({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _textFollow(),
          _paymentAssistant(),
        ],
      ),
    );
  }

  _textFollow() {
    return const Text(
      'Acompanhe também',
      style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
    );
  }

  _paymentAssistant() {
    return Container(
      margin: const EdgeInsets.only(top: 16, bottom: 16),
      decoration: BoxDecoration(
        color: greyColor,
        borderRadius: BorderRadius.circular(18),
      ),
      padding: const EdgeInsets.all(16),
      child: Row(
        children: [
          const Icon(MdiIcons.cashRefund),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 10),
            child: const Text(
              'Assistente de Pagamento',
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
          )
        ],
      ),
    );
  }
}
