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
        _income2(),
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
              fontSize: 16,
            ),
          ),
        ]),
      ),
    );
  }

  _income2() {
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
              fontSize: 16,
            ),
          ),
        ]),
      ),
    );
  }
}
