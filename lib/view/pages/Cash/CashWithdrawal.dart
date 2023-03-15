import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:payout_system/core/constant/ImagesManager.dart';
import 'package:payout_system/view/shared/Button.dart';
import '../../../core/constant/ColorManager.dart';
import '../../../routes/app_router.dart';


class CashWithdrawal extends StatefulWidget {
  const CashWithdrawal({Key? key}) : super(key: key);

  @override
  State<CashWithdrawal> createState() => _CashWithdrawalState();
}

class _CashWithdrawalState extends State<CashWithdrawal> {
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
          actions: [
            IconButton(onPressed: () {},
                icon: const Icon(
                  Icons.notifications_active_outlined, color: Colors.black,))
          ],
        ),

        body: Padding(padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 16,),
              Container(
                  color: Colors.white,
                  child: Padding(padding: const EdgeInsets.all(16),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              '\$300', style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold),),
                            ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    shape: const StadiumBorder(),
                                    backgroundColor: const Color(0xffFFF9F0)
                                ),
                                onPressed: () {},
                                child: const Text('Pending', style: TextStyle(
                                    fontSize: 13,
                                    color: ColorManager.pendingColor),))
                          ],
                        ),
                        const Divider(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text('مكتب الدانا - غزة',style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
                            SvgPicture.asset(ImagesManager.Cash, height: 30,)
                          ],
                        )
                      ],
                    ),
                  )
              ),
              const SizedBox(height: 16,),
              Container(
                  color: Colors.white,
                  child: Padding(padding: const EdgeInsets.only(
                      left: 16, top: 16, bottom: 24),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text('Timeline', style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),),
                            SizedBox(height: 12),
                            Text('7:30 am',
                              style: TextStyle(fontSize: 12, color: ColorManager
                                  .secondaryTextColor),),
                            Text('Today',
                              style: TextStyle(fontSize: 10, color: ColorManager
                                  .secondaryTextColor),),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 24),
                          child: Container(height: 8, width: 8,
                            decoration: const BoxDecoration(
                                color: ColorManager.mainColor,
                                shape: BoxShape.circle
                            ),
                          ),
                        ),
                        const Text('Requested', style: TextStyle(fontSize: 12,
                            color: ColorManager.secondaryTextColor),)
                      ],
                    ),
                  )
              ),
              const SizedBox(height: 16,),
              Container(
                color: Colors.white,
                child: Padding(padding: const EdgeInsets.only(
                    top: 13, bottom: 24, left: 16, right: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('Details', style: TextStyle(
                          fontSize: 16, fontWeight: FontWeight.bold),),
                      const SizedBox(height: 12),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text('Office Name',
                            style: TextStyle(fontSize: 13, color: ColorManager
                                .secondaryTextColor),),
                          Text('مكتب الدانا - غزة', style: TextStyle(fontSize: 13),)
                        ],
                      ),
                      const SizedBox(height: 12),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text('Expected Date',
                            style: TextStyle(fontSize: 13, color: ColorManager
                                .secondaryTextColor),),
                          Text('Within 24 Hours (Avg: 2hrs)',
                            style: TextStyle(fontSize: 13),)
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 16,),
              Container(
                color: Colors.white,
                child: Padding(padding: const EdgeInsets.only(
                  top: 10, bottom: 27, left: 16,),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('Instructions', style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),),
                        const SizedBox(height: 12,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(padding: const EdgeInsets.only(right: 8),
                              child: Container(height: 7, width: 7,
                                decoration: const BoxDecoration(
                                    color: Colors.black,
                                    shape: BoxShape.circle
                                ),
                              ),
                            ),
                            const Text(
                              'Address: الرمال - تقاطع شارع فلسطين مع الشهداء',
                              style: TextStyle(fontSize: 13),)
                          ],
                        ),
                        const SizedBox(height: 15,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(padding: const EdgeInsets.only(right: 8),
                              child: Container(height: 7, width: 7,
                                decoration: const BoxDecoration(
                                    color: Colors.black,
                                    shape: BoxShape.circle
                                ),
                              ),
                            ),
                            const Text(
                              'Working hours from 9:00 am to 7:00 pm',
                              style: TextStyle(fontSize: 13),)
                          ],
                        ),
                        const SizedBox(height: 15,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(padding: const EdgeInsets.only(right: 8),
                              child: Container(height: 7, width: 7,
                                decoration: const BoxDecoration(
                                    color: Colors.black,
                                    shape: BoxShape.circle
                                ),
                              ),
                            ),
                            const Text(
                              'Bring your ID for identification',
                              style: TextStyle(fontSize: 13),)
                          ],
                        ),
                        const SizedBox(height: 15,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(padding: const EdgeInsets.only(right: 8),
                              child: Container(height: 7, width: 7,
                                decoration: const BoxDecoration(
                                    color: Colors.black,
                                    shape: BoxShape.circle
                                ),
                              ),
                            ),
                            const Text(
                              'Confirm receiving your payment',
                              style: TextStyle(fontSize: 13),)
                          ],
                        ),
                        const SizedBox(height: 15,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(padding: const EdgeInsets.only(right: 8),
                              child: Container(height: 7, width: 7,
                                decoration: const BoxDecoration(
                                    color: Colors.black,
                                    shape: BoxShape.circle
                                ),
                              ),
                            ),
                            const Text(
                              'Office fees 0.00',
                              style: TextStyle(fontSize: 13),)
                          ],
                        ),
                      ]
                  ),
                ),
              ),
              const SizedBox(height: 40,),
              Button(text: 'Cancel Withdrawal',
                onTap: () {},
                BackgroundColor: Colors.white,
                TextColor: Colors.black,
                sizeText: 16,)
            ],
          ),
        )
    );
  }
}
