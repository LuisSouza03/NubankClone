import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:nubank_clone/pages/home/account/account_page.dart';
import 'package:nubank_clone/pages/home/actions/menu_itens_page.dart';
import 'package:nubank_clone/pages/home/creditsCard/credit_card.dart';
import 'package:nubank_clone/pages/home/creditsCard/my_credits_card_page.dart';

import './models/header.dart';
import 'notification/notification_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: backgroundColor,
      appBar: _appBar(),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [
              Header(),
              Account(),
              MenuItens(),
              MyCreditCards(),
              NotificationsPage(),
              Divider(thickness: 1.6),
              CreditCard(),
            ],
          ),
        ),
      ),
    );
  }

  PreferredSize _appBar() {
    return PreferredSize(
      preferredSize: const Size.fromHeight(0),
      child: AppBar(
        elevation: 0,
        systemOverlayStyle: SystemUiOverlayStyle.dark,
      ),
    );
  }
}
