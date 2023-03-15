import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:payout_system/core/constant/ImagesManager.dart';
import 'package:payout_system/routes/screen_name.dart';
import 'package:payout_system/view/shared/Button.dart';
import '../../../core/constant/ColorManager.dart';
import '../../../routes/app_router.dart';

class CashWithdrawalPreview extends StatelessWidget {
  const CashWithdrawalPreview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorManager.backGroundColor,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          title: const Text(
            'Withdrawal Preview',
            style: TextStyle(fontSize: 20, color: Colors.black),
          ),
          leading: IconButton(onPressed: () {
            AppRouter.back();
          },
              icon: const Icon(
                Icons.arrow_back_ios_sharp, color: Colors.black,)),
        ),
        body: Padding(padding: const EdgeInsets.symmetric(horizontal: 28),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 20,),
              const Text('Amount:', style: TextStyle(
                  fontSize: 16, color: ColorManager.secondaryTextColor),),
              const SizedBox(height: 5,),
              const Text('300.00 USD', style: TextStyle(fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: ColorManager.mainColor),),
              const SizedBox(height: 15,),
              Row(
                children: const [
                  Text('Transferred to:', style: TextStyle(
                      fontSize: 16, color: ColorManager.secondaryTextColor),)
                ],
              ),
              const SizedBox(height: 8,),
              Container(
                color: Colors.white,
                height: 93,
                child: Row(
                  children: [
                    Padding(padding: const EdgeInsets.only(left: 26, right: 22),
                      child: SvgPicture.asset(
                        ImagesManager.Office, height: 40, width: 40,),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                            const Text('غزة - مكتب الدانا', style: TextStyle(fontSize: 16),),
                        const SizedBox(height: 5,),
                        const Text('الرمال - مفترق شارع فلسطين مع الشهدا',
                          style: TextStyle(fontSize: 14,),)
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(height: 12,),
              Container(
                // height: 128,
                color: Colors.white,
                padding: const EdgeInsets.symmetric(
                    vertical: 18, horizontal: 30),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          'Recipients name', style: TextStyle(fontSize: 16,),),
                        Text('محمد خلف', style: TextStyle(fontSize: 16),)
                      ],
                    ),
                    const SizedBox(height: 12,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          'Transfer amount', style: TextStyle(fontSize: 16,),),
                        Text('\$300', style: TextStyle(fontSize: 16),)
                      ],
                    ),
                    const SizedBox(height: 12,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text('Fee', style: TextStyle(fontSize: 16,),),
                        Text('Free', style: TextStyle(fontSize: 16),)
                      ],
                    ),
                    const Divider(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text("You'll get", style: TextStyle(fontSize: 16),),
                        Text('\$300', style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),)
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 13,),
              Row(
                children: const [
                  Text('- Estimated arrival: 2 business days.',style: TextStyle(fontSize: 16),),
                ],
              ),
              const SizedBox(height: 13,),
              Row(
                children: const [
                  Text("- Don't go to office till the payment ready." )
                ],
              ),
              const SizedBox(height: 13,),
              Row(
                children: const [
                  Text('- All transfers are subject to review and could \n be delayed or stopped if we identify an issue.')
                ],
              ),
              const SizedBox(height: 47,),
              Button(
                  text: 'Confirm',
                  onTap: (){
                    AppRouter.goTo(screenName: ScreenName.CashOtp);
                  },
                  BackgroundColor: ColorManager.mainColor,
                  TextColor: Colors.white
              )
            ],
          ),
        )
    );
  }
}
