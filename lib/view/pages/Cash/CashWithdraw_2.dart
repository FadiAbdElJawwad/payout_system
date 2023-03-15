import 'package:flutter/material.dart';
import 'package:payout_system/routes/screen_name.dart';
import 'package:payout_system/view/shared/Button.dart';
import '../../../core/constant/ColorManager.dart';
import '../../../data/model/RecipientsModel.dart';
import '../../../routes/app_router.dart';


class CashWithdraw_2 extends StatefulWidget {
  const CashWithdraw_2({Key? key}) : super(key: key);

  @override
  State<CashWithdraw_2> createState() => _CashWithdraw_2State();
}

class _CashWithdraw_2State extends State<CashWithdraw_2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.backGroundColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          'Cash',
          style: TextStyle(fontSize: 20, color: Colors.black),
        ),
        leading: IconButton(onPressed: () {
          AppRouter.back();
        },
            icon: const Icon(
              Icons.arrow_back_ios_sharp, color: Colors.black,)),
      ),

      body: Padding(padding: const EdgeInsets.symmetric(horizontal: 32),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 30,),
            const Text('Office', style: TextStyle(
                fontSize: 16, color: ColorManager.secondaryTextColor),),
            const SizedBox(height: 5,),
            Container(
              color: Colors.white,
              child: Padding(padding: const EdgeInsets.symmetric(
                  vertical: 12, horizontal: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text('ساعات العمل: 9 صباحا -7مساءا',
                              style: TextStyle(fontSize: 9,
                                  color: ColorManager.secondaryTextColor),),
                            SizedBox(width: 45,),
                            Text('غزة - مكتب الدانا',
                              style: TextStyle(fontSize: 14),)
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text('بدون عمولة', style: TextStyle(fontSize: 9,
                                color: ColorManager.secondaryTextColor)),
                            SizedBox(width: 20,),
                            Text('الرمال _ تقاطع شارع فلسطين مع الشهداء',
                                style: TextStyle(fontSize: 12,
                                    color: ColorManager.secondaryTextColor))
                          ],
                        )
                      ],
                    ),
                    const SizedBox(width: 16,),
                    IconButton(onPressed: () {
                      showModalBottomSheet(
                        isScrollControlled: true,
                        shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.vertical(
                                top: Radius.circular(30))),
                        context: context,
                        builder: (context) {
                          return const Padding(
                              padding: EdgeInsets.symmetric(horizontal: 24),
                              child: SizedBox(
                                height: 390,
                                child: office(),
                              ));
                        },
                      );
                    },
                        icon: const Icon(Icons.arrow_forward_ios_rounded)),

                  ],
                ),
              ),
            ),
            const SizedBox(height: 65,),
            Row(
              children: [
                const Text('Recipient', style: TextStyle(
                    fontSize: 16, color: ColorManager.secondaryTextColor),),
                TextButton(onPressed: () {},
                    child: const Text('Edit', style: TextStyle(fontSize: 12),))
              ],
            ),
            const SizedBox(height: 10,),
            Container(
                color: Colors.white,
                child: Padding(padding: const EdgeInsets.symmetric(
                    vertical: 20, horizontal: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text('Select a recipient', style: TextStyle(
                          fontSize: 14,
                          color: ColorManager.secondaryTextColor),),
                      IconButton(onPressed: () {
                        showModalBottomSheet(
                          isScrollControlled: true,
                          shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.vertical(
                                  top: Radius.circular(30))),
                          context: context,
                          builder: (context) {
                            return const Padding(
                                padding: EdgeInsets.symmetric(horizontal: 24),
                                child: SizedBox(
                                    height: 380,
                                    child: recipients()
                                ));
                          },
                        );
                      },
                          icon: const Icon(Icons.arrow_forward_ios_rounded)),
                    ],
                  ),
                )
            ),
            Row(
              children: [
                const Spacer(),
                TextButton.icon(
                    onPressed: () {
                      AppRouter.goTo(screenName: ScreenName.AddRecipient);
                    },
                    icon: const Icon(Icons.add, size: 20,),
                    label: const Text(
                      'Add recipient', style: TextStyle(fontSize: 12),)
                )
              ],
            ),
            const SizedBox(height: 75,),
            Button(
                text: 'Continue',
                onTap: () {
                  AppRouter.goTo(screenName: ScreenName.CashWithdrawalPreview);
                },
                BackgroundColor: ColorManager.mainColor,
                TextColor: Colors.white
            )
          ],
        ),
      ),
    );
  }
}

class recipients extends StatelessWidget {
  const recipients({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment
          .start,
      children: [
        const SizedBox(height: 15,),
        Row(
          mainAxisAlignment: MainAxisAlignment
              .spaceBetween,
          children: [
            const Text('Recipients'),
            IconButton(onPressed: () {
              AppRouter.back();
            },
                icon: const Icon(
                    Icons.close_rounded))
          ],
        ),
        const Divider(),
        ListView.separated(
          shrinkWrap: true,
          itemCount: recipientsModel.length,
          separatorBuilder: (context,
              index) => const Divider(),
          itemBuilder: (context, i) {
            return Row(
              mainAxisAlignment: MainAxisAlignment
                  .spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment
                      .start,
                  children: [

                    const SizedBox(height: 10,),
                    Text(recipientsModel[i].ID!,
                      style: const TextStyle(
                          fontSize: 14,
                          color: ColorManager
                              .secondaryTextColor),)
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment
                      .end,
                  children: [
                    Text(
                      recipientsModel[i].name!,
                      style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight
                              .bold),),
                    const SizedBox(height: 10,),
                    Text(
                      recipientsModel[i].phone!,
                      style: const TextStyle(
                          fontSize: 14,
                          color: ColorManager
                              .secondaryTextColor),)
                  ],
                )
              ],
            );
          },
        ),
      ],
    );
  }
}

class office extends StatelessWidget {
  const office({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 15,),
        Row(
          mainAxisAlignment: MainAxisAlignment
              .spaceBetween,
          children: [
            const Text('Offices'),
            IconButton(onPressed: () {
              AppRouter.back();
            },
                icon: const Icon(Icons.close_rounded))
          ],
        ),
        const Divider(),
        InkWell(
          onTap: () {},
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:  const [
                  Text('ساعات العمل: 9 صباحا -7مساءا',
                    style: TextStyle(fontSize: 9,
                        color: ColorManager.secondaryTextColor),),
                  // SizedBox(width: 45,),
                  Text('غزة - مكتب الدانا',
                    style: TextStyle(fontSize: 14),)
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:  const [
                  Text('بدون عمولة', style: TextStyle(fontSize: 9,
                      color: ColorManager.secondaryTextColor)),
                  // SizedBox(width: 20,),
                  Text('الرمال _ تقاطع شارع فلسطين مع الشهداء',
                      style: TextStyle(fontSize: 12,
                          color: ColorManager.secondaryTextColor))
                ],
              )
            ],
          ),
        ),
        const Divider(),

        InkWell(
          onTap: () {},
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:  const [
                  Text('ساعات العمل: 9 صباحا -7مساءا',
                    style: TextStyle(fontSize: 9,
                        color: ColorManager.secondaryTextColor),),
                  Text('خانيونس - مكتب الدانا',
                    style: TextStyle(fontSize: 14),)
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:  const [
                  Text('بدون عمولة', style: TextStyle(fontSize: 9,
                      color: ColorManager.secondaryTextColor)),
                  Text('شارع جمال عبد الناصر _ بجوار مدرسة ابن خلدون',
                      style: TextStyle(fontSize: 12,
                          color: ColorManager.secondaryTextColor))
                ],
              )
            ],
          ),
        ),
        const Divider(),

        InkWell(
          onTap: () {},
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:  const [
                  Text('ساعات العمل: 9 صباحا -7مساءا',
                    style: TextStyle(fontSize: 9,
                        color: ColorManager.secondaryTextColor),),
                  // SizedBox(width: 45,),
                  Text('جباليا - مكتب الدانا',
                    style: TextStyle(fontSize: 14),)
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:  const [
                  Text('عمولة 5 شيكل', style: TextStyle(fontSize: 9,
                      color: ColorManager.secondaryTextColor)),
                  // SizedBox(width: 20,),
                  Text('شارع الترنس _ مقابل مزاج',
                      style: TextStyle(fontSize: 12,
                          color: ColorManager.secondaryTextColor))
                ],
              )
            ],
          ),
        ),
        const Divider(),

        InkWell(
          onTap: () {},
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:  const [
                  Text('ساعات العمل: 9 صباحا -7مساءا',
                    style: TextStyle(fontSize: 9,
                        color: ColorManager.secondaryTextColor),),
                  // SizedBox(width: 45,),
                  Text('رفح - مكتب ابن خلدون',
                    style: TextStyle(fontSize: 14),)
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:  const [
                  Text('بدون عمولة', style: TextStyle(fontSize: 9,
                      color: ColorManager.secondaryTextColor)),
                  // SizedBox(width: 20,),
                  Text('دوار العودة _ مقابل مكتبة المنارة',
                      style: TextStyle(fontSize: 12,
                          color: ColorManager.secondaryTextColor))
                ],
              )
            ],
          ),
        ),
        const Divider(),

        InkWell(
          onTap: () {},
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:  const [
                  Text('ساعات العمل: 9 صباحا -7مساءا',
                    style: TextStyle(fontSize: 9,
                        color: ColorManager.secondaryTextColor),),
                  // SizedBox(width: 45,),
                  Text('النصيرات - مكتب الترك',
                    style: TextStyle(fontSize: 14),)
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:  const [
                  Text('عمولة 5 شيكل', style: TextStyle(fontSize: 9,
                      color: ColorManager.secondaryTextColor)),
                  // SizedBox(width: 20,),
                  Text('بجانب مول أبو دلال - خلف مكتب مشتهى للسياحة',
                      style: TextStyle(fontSize: 12,
                          color: ColorManager.secondaryTextColor))
                ],
              )
            ],
          ),
        ),

      ],
    );
  }
}
