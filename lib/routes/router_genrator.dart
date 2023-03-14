import 'package:flutter/material.dart';
import 'package:payout_system/routes/screen_name.dart';
import '../view/pages/BalancePage.dart';
import '../view/pages/BankWithdraw.dart';
import '../view/pages/AddBankAccount.dart';
import '../view/pages/VerificationCode.dart';

class RouteGenarator {
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    Widget result;
    switch (settings.name) {
      case ScreenName.BalancePage:
        result = const BalancePage();
        break;
        case ScreenName.BankWithdraw:
        result = const BankWithdraw();
        break;
        case ScreenName.AddBankAccount:
        result = const AddBankAccount();
        break;
        case ScreenName.VerificationCode:
        result = const VerificationCode();
        break;




      default:
        result = const Scaffold(
          body: Center(
            child: Text('Wrong path'),
          ),
        );
    }
    return MaterialPageRoute(builder: (context) => result);
  }
}
