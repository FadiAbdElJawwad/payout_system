import 'package:flutter/material.dart';
import 'package:payout_system/core/constant/ColorManager.dart';
import 'package:payout_system/routes/screen_name.dart';
import '../../routes/app_router.dart';
import '../shared/Button.dart';
import '../shared/Text_Field.dart';

class AddBankAccount extends StatelessWidget {
  const AddBankAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.backGroundColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          'Add Bank Account',
          style: TextStyle(fontSize: 20, color: Colors.black),
        ),
        leading: IconButton(onPressed: () {
          AppRouter.back();
        },
            icon: const Icon(Icons.arrow_back_ios_sharp, color: Colors.black,)),
      ), body: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Text(
              'Bank',
              style: TextStyle(
                  color: ColorManager.secondaryTextColor, fontSize: 16),
            ),
            const SizedBox(height: 5),
            Text_Field(
              hint: 'Bank Of Palestine',
              SuffixIcon: IconButton(onPressed: () {},
                  icon: const Icon(Icons.keyboard_arrow_down)),
              FillColor: const Color(0xffF3F4F6),
            ),
            const SizedBox(height: 16),
            const Text(
              'Account Owner Full Name',
              style: TextStyle(
                  color: ColorManager.secondaryTextColor, fontSize: 16),
            ),
            const SizedBox(height: 5),
            Text_Field(
              FillColor: Colors.white,
              keyboardType: TextInputType.name,
            ),
            const SizedBox(height: 16),
            const Text(
              'Branch',
              style: TextStyle(
                  color: ColorManager.secondaryTextColor, fontSize: 16),
            ),
            const SizedBox(height: 5),
            Text_Field(
              FillColor: Colors.white,
              SuffixIcon: IconButton(onPressed: () {
                showModalBottomSheet(
                  isScrollControlled: true,
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.vertical(
                          top: Radius.circular(30))),
                  context: context,
                  builder: (context) {
                    return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 22),
                        child: SizedBox(
                          height: 383,
                          child: Column(
                            crossAxisAlignment:
                            CrossAxisAlignment.start,
                            children: [
                              // SizedBox(height: 15,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment
                                    .spaceBetween,
                                children: [
                                  const Text('Branch'),
                                  IconButton(onPressed: () {
                                    AppRouter.back();
                                  },
                                      icon: const Icon(Icons.close_rounded))
                                ],
                              ),
                              const SizedBox(height: 16),
                              const Divider(),
                              InkWell(
                                onTap: () {},
                                child: const Text(
                                  '0446 - Naser',
                                  style: TextStyle(fontSize: 16,
                                      fontWeight: FontWeight.w400),
                                ),
                              ),
                              const SizedBox(height: 24),
                              InkWell(
                                onTap: () {},
                                child: const Text(
                                  '0454 - Rimal',
                                  style: TextStyle(fontSize: 16,
                                      fontWeight: FontWeight.w400),
                                ),
                              ),
                              const SizedBox(height: 24),
                              InkWell(
                                onTap: () {},
                                child: const Text(
                                  '0448 - Nussairat',
                                  style: TextStyle(fontSize: 16,
                                      fontWeight: FontWeight.w400),
                                ),
                              ),
                              const SizedBox(height: 24),
                              InkWell(
                                onTap: () {},
                                child: const Text(
                                  '0451 - Main Branch',
                                  style: TextStyle(fontSize: 16,
                                      fontWeight: FontWeight.w400),
                                ),
                              ),
                              const SizedBox(height: 24),
                              InkWell(
                                onTap: () {},
                                child: const Text(
                                  '0452 - Khan Younis',
                                  style: TextStyle(fontSize: 16,
                                      fontWeight: FontWeight.w400),
                                ),
                              ),
                              const SizedBox(height: 24),
                              InkWell(
                                onTap: () {},
                                child: const Text(
                                  '0453 - Jabalia',
                                  style: TextStyle(fontSize: 16,
                                      fontWeight: FontWeight.w400),
                                ),
                              ),
                              const SizedBox(height: 24),
                              InkWell(
                                onTap: () {},
                                child: const Text(
                                  '0454 - Rafah',
                                  style: TextStyle(fontSize: 16,
                                      fontWeight: FontWeight.w400),
                                ),
                              ),
                            ],
                          ),
                        ));
                  },
                );
              },
                  icon: const Icon(Icons.keyboard_arrow_down)),

            ),
            const SizedBox(height: 16),
            const Text(
              'Currency',
              style: TextStyle(
                  color: ColorManager.secondaryTextColor, fontSize: 16),
            ),
            const SizedBox(height: 5),
            Text_Field(
              hint: '1 - USD',
              SuffixIcon: IconButton(onPressed: () {},
                  icon: const Icon(Icons.keyboard_arrow_down)),
              FillColor: const Color(0xffF3F4F6),

            ),
            const SizedBox(height: 16),
            const Text(
              'Ledger',
              style: TextStyle(
                  color: ColorManager.secondaryTextColor, fontSize: 16),
            ),
            const SizedBox(height: 5),
            Text_Field(
              FillColor: Colors.white,
              SuffixIcon: IconButton(onPressed: () {
                showModalBottomSheet(
                  isScrollControlled: true,
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.vertical(
                          top: Radius.circular(30))),
                  context: context,
                  builder: (context) {
                    return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 22),
                        child: SizedBox(
                          height: 230,
                          child: Column(
                            crossAxisAlignment:
                            CrossAxisAlignment.start,
                            children: [
                              // SizedBox(height: 15,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment
                                    .spaceBetween,
                                children: [
                                  const Text('Ledger'),
                                  IconButton(onPressed: () {
                                    AppRouter.back();
                                  },
                                      icon: const Icon(Icons.close_rounded))
                                ],
                              ),
                              const SizedBox(height: 16),
                              const Divider(),
                              const SizedBox(height: 18),
                              InkWell(
                                onTap: () {},
                                child: Row(
                                  children: const [
                                    Text(
                                      '3000 - Current',
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      width: 17,
                                    ),
                                    Text('جاري', style: TextStyle(fontSize: 14,
                                        color: ColorManager
                                            .secondaryTextColor),)
                                  ],
                                ),
                              ),
                              const SizedBox(height: 24),
                              InkWell(
                                onTap: () {},
                                child: Row(
                                  children: const [
                                    Text(
                                      '3100 - Saving',
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      width: 17,
                                    ),
                                    Text('توفير', style: TextStyle(fontSize: 14,
                                        color: ColorManager
                                            .secondaryTextColor),)
                                  ],
                                ),
                              ),
                              const SizedBox(height: 24),
                              InkWell(
                                onTap: () {},
                                child: Row(
                                  children: const [
                                    Text(
                                      '3102 - Saving For Every Citizen',
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      width: 17,
                                    ),
                                    Text('توفير لكل مواطن', style: TextStyle(
                                        fontSize: 14,
                                        color: ColorManager
                                            .secondaryTextColor),)
                                  ],
                                ),
                              ),


                            ],
                          ),
                        ));
                  },
                );
              },
                  icon: const Icon(Icons.keyboard_arrow_down)),

            ),
            const SizedBox(height: 42),
            Button(
              // ontap(){},
              // const Color(0xff4375FF), Colors.white, 'Confirm'
              text: 'Confirm',
              BackgroundColor: ColorManager.mainColor,
              TextColor: Colors.white,
              onTap: () {
                AppRouter.goTo(screenName: ScreenName.VerificationCode);
              },
            ),

            const SizedBox(height: 16),
            Button(
              text: 'Back',
              sizeText: 16,
              BackgroundColor: Colors.white,
              TextColor: Colors.black,
              onTap: () {
                AppRouter.back();
              },
            ),
          ],
        ),
      ),
    ),
    );
  }
}

