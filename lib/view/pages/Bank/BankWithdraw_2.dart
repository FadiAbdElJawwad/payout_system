import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:payout_system/core/constant/ImagesManager.dart';
import 'package:payout_system/routes/screen_name.dart';
import 'package:payout_system/view/shared/Button.dart';
import '../../../core/constant/ColorManager.dart';
import '../../../routes/app_router.dart';

class BankWithdraw_2 extends StatelessWidget {
  const BankWithdraw_2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 70,),
          Padding(padding: const EdgeInsets.symmetric(horizontal: 20),
            child: ElevatedButton.icon(
              onPressed: () {
                AppRouter.goTo(screenName: ScreenName.BankWithdraw_1);
              },
              icon: SvgPicture.asset(
                ImagesManager.Bank, height: 40, width: 40,),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                fixedSize: const Size(double.infinity, 96),
              ),
              label:
              const Text('Add Bank Account',
                  style: TextStyle(fontSize: 20, color: Colors.blue)),
            ),
          ),
          const Spacer(),
          Padding(padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Button(text: 'Continue',
                onTap: () {
              AppRouter.goTo(screenName: ScreenName.BankAccount);
                },
                BackgroundColor: ColorManager.mainColor,
                TextColor: Colors.white),
          ),
          const SizedBox(height: 16,),
          Padding(padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Button(text: 'Add Account',
                  sizeText: 16,
                  onTap: () {
                    AppRouter.goTo(screenName: ScreenName.BankWithdraw_1);
                  },
                  BackgroundColor: Colors.white,
                  TextColor: ColorManager.secondaryTextColor)
          ),
        ],
      ),

    );
  }
}
