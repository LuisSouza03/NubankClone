import 'package:get/get.dart';

class ControllerHomePage extends GetxController {
  String balance = 'R\$ 873.244,00';
  bool eyesValue = true;
  String creditCardValue = 'R\$ 432,43';
  String limitCreditDisponible = 'R\$ 4.000,00';

  void showValue() {
    eyesValue = !eyesValue;

    update();
  }
}
