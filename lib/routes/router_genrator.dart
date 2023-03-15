import 'package:flutter/material.dart';
import 'package:payout_system/routes/screen_name.dart';
import '../view/pages/Balance.dart';
import '../view/pages/Bank/BankAccount.dart';
import '../view/pages/Bank/BankWithdraw_2.dart';
import '../view/pages/Bank/BankWithdraw_1.dart';
import '../view/pages/Bank/AddBankAccount.dart';
import '../view/pages/Bank/BankOtp.dart';
import '../view/pages/Bank/WithdrawalPreview.dart';
import '../view/pages/Bank/BankWithdrawal.dart';
import '../view/pages/Cash/AddRecipient.dart';
import '../view/pages/Cash/CashOtp.dart';
import '../view/pages/Cash/CashWithdraw_1.dart';
import '../view/pages/Cash/CashWithdraw_2.dart';
import '../view/pages/Cash/CashWithdrawal.dart';
import '../view/pages/Cash/CashWithdrawalPreview.dart';
import '../view/pages/Cash/Recipients.dart';


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
        case ScreenName.BankOtp:
        result = const BankOtp();
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

        case ScreenName.CashWithdraw_1:
        result = const CashWithdraw_1();
        break;
        case ScreenName.CashWithdraw_2:
        result = const CashWithdraw_2();
        break;
        case ScreenName.AddRecipient:
        result = const AddRecipient();
        break;
        case ScreenName.Recipients:
        result = const Recipients();
        break;
        case ScreenName.CashWithdrawalPreview:
        result = const CashWithdrawalPreview();
        break;
        case ScreenName.CashOtp:
        result = const CashOtp();
        break;
        case ScreenName.CashWithdrawal:
        result = const CashWithdrawal();
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
