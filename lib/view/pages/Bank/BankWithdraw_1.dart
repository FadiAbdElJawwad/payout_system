import 'package:flutter/material.dart';
import 'package:payout_system/routes/app_router.dart';
import 'package:payout_system/routes/screen_name.dart';
import 'package:payout_system/view/shared/Button.dart';
import '../../../core/constant/ColorManager.dart';


class BankWithdraw_1 extends StatefulWidget {
  const BankWithdraw_1({Key? key}) : super(key: key);

  @override
  State<BankWithdraw_1> createState() => _BankWithdraw_1State();
}

class _BankWithdraw_1State extends State<BankWithdraw_1> {


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorManager.backGroundColor,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          title: const Text(
            'Bank Withdraw',
            style: TextStyle(fontSize: 20, color: Colors.black),
          ),
          leading: IconButton(onPressed: () {
            AppRouter.back();
          },
              icon: const Icon(
                Icons.arrow_back_ios_sharp, color: Colors.black,)),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                'Amount',
                style: TextStyle(
                    color: ColorManager.secondaryTextColor,
                    fontSize: 25,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 1.3),
              ),
              const SizedBox(height: 8),
              const SizedBox(
                height: 43,
                // width: 132,
                child: TextField(
                  textAlign: TextAlign.center,
                  // focusNode: _focusNode,
                  autofocus: true,
                  keyboardType: TextInputType.number,
                  showCursor: true,
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                  ),
                  decoration: InputDecoration(
                    hintText: ' \$300.00',
                    border: InputBorder.none,
                    hintStyle: TextStyle(
                      fontSize: 30,
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 17),
              RichText(
                text: const TextSpan(
                  text: 'Available ',
                  style: TextStyle(color: Colors.grey, letterSpacing: 0.5),
                  children: <TextSpan>[
                    TextSpan(
                      text: '\$240.19',
                      style: TextStyle(
                          color: Colors.blue,
                          fontSize: 12,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 144),
              Padding(padding: const EdgeInsets.symmetric(horizontal: 32),
                child: Button(
                    text: 'Continue',
                    onTap: () {
                      AppRouter.goTo(screenName: ScreenName.AddBankAccount);
                    },
                    BackgroundColor: ColorManager.mainColor,
                    TextColor: Colors.white),
              )
            ],
          ),
        ),
      ),
    );
  }
}
