import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:payout_system/core/constant/ImagesManager.dart';
import 'package:payout_system/view/shared/Button.dart';

import '../../core/constant/ColorManager.dart';
import '../../routes/app_router.dart';

class WithdrawPreview extends StatelessWidget {
  const WithdrawPreview({Key? key}) : super(key: key);

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
                        ImagesManager.Bank, height: 40, width: 40,),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: const [
                            Text('Safa Mousa ', style: TextStyle(
                                fontSize: 16),),
                            Text('[Bank of Palestine]', style: TextStyle(
                                fontSize: 16,
                                color: ColorManager.secondaryTextColor),)
                          ],
                        ),
                        const SizedBox(height: 5,),
                        const Text('0452-1064559-001-3100-000',
                          style: TextStyle(fontSize: 14,
                              color: ColorManager.secondaryTextColor),)
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(height: 12,),
              Container(
                height: 128,
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
                          'Transfer amount', style: TextStyle(fontSize: 16,),),
                        Text('\$300', style: TextStyle(fontSize: 16),)
                      ],
                    ),
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
                  Text('- Transfers made after 9:00 PM or on weekends \n  takes longer. ')
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
                  onTap: (){},
                  BackgroundColor: ColorManager.mainColor,
                  TextColor: Colors.white
              )
            ],
          ),
        )
    );
  }
}
