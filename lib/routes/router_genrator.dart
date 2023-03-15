import 'package:flutter/material.dart';
import 'package:payout_system/routes/screen_name.dart';
import '../view/pages/Balance.dart';
import '../view/pages/Bank/BankAccount.dart';
import '../view/pages/Bank/BankWithdraw_2.dart';
import '../view/pages/Bank/BankWithdraw_1.dart';
import '../view/pages/Bank/AddBankAccount.dart';
import '../view/pages/Bank/VerificationCode.dart';
import '../view/pages/Bank/WithdrawalPreview.dart';
import '../view/pages/Bank/BankWithdrawal.dart';

class RouteGenarator {
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    Widget result;
    switch (settings.name) {
      case ScreenName.BalancePage:
        result = const Balance();
        break;
      case ScreenName.BankWithdraw_1:
        result = const BankWithdraw_1();
        break;
      case ScreenName.BankWithdraw_2:
        result = const BankWithdraw_2();
        break;
        case ScreenName.AddBankAccount:
        result = const AddBankAccount();
        break;
        case ScreenName.VerificationCode:
        result = const VerificationCode();
        break;
        case ScreenName.BankAccount:
        result = const BankAccount();
        break;
        case ScreenName.WithdrawalPreview:
        result = const WithdrawalPreview();
        break;
        case ScreenName.BankWithdrawal:
        result = const BankWithdrawal();
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
