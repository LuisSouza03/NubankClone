import 'package:flutter/material.dart';
import 'package:nubank_clone/utils/colors_standard.dart';

class NotificationsPage extends StatefulWidget {
  const NotificationsPage({Key? key}) : super(key: key);

  @override
  State<NotificationsPage> createState() => _NotificationsPageState();
}

class _NotificationsPageState extends State<NotificationsPage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(children: [
        _income(),
        _lifeInsurance(),
        _sendInvite(),
      ]),
    );
  }

  _income() {
    return Container(
      width: MediaQuery.of(context).size.width * .7,
      margin: const EdgeInsets.only(left: 10, top: 10, right: 20),
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: greyColor,
        borderRadius: BorderRadius.circular(16),
      ),
      child: RichText(
        text: TextSpan(children: [
          TextSpan(
            text: 'NuEnsina:',
            style: TextStyle(
              color: backgroundColor,
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
          const TextSpan(
            text: ' aprenda novas formas de lidar com sua grana.',
            style: TextStyle(
              color: Colors.black,
              fontSize: 15,
            ),
          ),
        ]),
      ),
    );
  }

  _lifeInsurance() {
    return Container(
      width: MediaQuery.of(context).size.width * .8,
      margin: const EdgeInsets.only(left: 10, top: 10, right: 20),
      padding: const EdgeInsets.all(26),
      decoration: BoxDecoration(
        color: greyColor,
        borderRadius: BorderRadius.circular(16),
      ),
      child: RichText(
        text: TextSpan(children: [
          const TextSpan(
            text: 'Seguro de Vida a partir de R\$4/mês?.',
            style: TextStyle(
              color: Colors.black,
              fontSize: 15,
            ),
          ),
          TextSpan(
            text: ' Conheça o Nubank Vida!',
            style: TextStyle(
              color: backgroundColor,
              fontSize: 15,
            ),
          ),
        ]),
      ),
    );
  }

  _sendInvite() {
    return Container(
      width: MediaQuery.of(context).size.width * .8,
      margin: const EdgeInsets.only(left: 10, top: 10, right: 20),
      padding: const EdgeInsets.all(26),
      decoration: BoxDecoration(
        color: greyColor,
        borderRadius: BorderRadius.circular(16),
      ),
      child: RichText(
        text: TextSpan(children: [
          const TextSpan(
            text: 'Salve amigos da burocracia.',
            style: TextStyle(
              color: Colors.black,
              fontSize: 15,
            ),
          ),
          TextSpan(
            text: ' Faça um convite para o Nubank.',
            style: TextStyle(
              color: backgroundColor,
              fontSize: 15,
            ),
          ),
        ]),
      ),
    );
  }
}
