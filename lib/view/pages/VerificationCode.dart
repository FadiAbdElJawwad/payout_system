import 'package:flutter/material.dart';
import 'package:payout_system/core/constant/ColorManager.dart';
import 'package:payout_system/core/constant/ImagesManager.dart';
import 'package:payout_system/routes/screen_name.dart';
import 'package:pinput/pinput.dart';

import '../../routes/app_router.dart';
import '../shared/Button.dart';


class VerificationCode extends StatelessWidget {
  const VerificationCode({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.backGroundColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Image.asset(ImagesManager.Logo, height: 28, width: 85,),
        leading: IconButton(onPressed: () {
          AppRouter.back();
        },
            icon: const Icon(
              Icons.arrow_back_ios_sharp, color: Colors.black,)),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 90,),
            Image.asset(ImagesManager.SmartPhone),
            const SizedBox(height: 25,),
            const Text(
              'We have sent you a verification code \n to your mobile number ……….098',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 16, color: ColorManager.secondaryTextColor),),
            const SizedBox(height: 30,),
            Pinput(
              defaultPinTheme: defaultPinTheme,
              focusedPinTheme: focusedPinTheme,
              submittedPinTheme: submittedPinTheme,
              length: 6,
              validator: (s) {
                return s == '' ? null : 'Pin is incorrect';
              },
              pinputAutovalidateMode: PinputAutovalidateMode.onSubmit,
              showCursor: true,
              onCompleted: (pin) => print(pin),
            ),
            const SizedBox(height: 32,),
            const Text('02.00', style: TextStyle(
                fontSize: 12, color: ColorManager.secondaryTextColor),),
            const SizedBox(height: 15,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Didn't get the code?", style: TextStyle(
                    fontSize: 12, color: ColorManager.secondaryTextColor),),
                TextButton(onPressed: () {},
                    child: const Text('Resend',
                      style: TextStyle(fontSize: 12, color: Colors.blue),))
              ],
            ),
            const SizedBox(height: 68,),
            Padding(padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Button(
                  text: 'Verify',
                  BackgroundColor: ColorManager.mainColor,
                  TextColor: Colors.white,
                  onTap: () {
                    AppRouter.goTo(screenName: ScreenName.BankAccount);
                  },
                )
            )
          ],
        ),
      ),
    );
  }
}

final defaultPinTheme = PinTheme(
  width: 38,
  height: 38,
  textStyle: const TextStyle(fontSize: 20, color: Color.fromRGBO(30, 60, 87, 1), fontWeight: FontWeight.w600),
  decoration: BoxDecoration(
    border: Border.all(color: const Color.fromRGBO(234, 239, 243, 1)),
    borderRadius: BorderRadius.circular(5),
  ),
);

final focusedPinTheme = defaultPinTheme.copyDecorationWith(
  border: Border.all(color: const Color(0xffE2E2E2)),
  borderRadius: BorderRadius.circular(5),
);

final submittedPinTheme = defaultPinTheme.copyWith(
  decoration: defaultPinTheme.decoration?.copyWith(
    color: Colors.white,
  ),
);