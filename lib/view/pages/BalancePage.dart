// ignore: file_names
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:payout_system/core/constant/ColorManager.dart';
import 'package:payout_system/core/constant/ImagesManager.dart';
import 'package:payout_system/routes/app_router.dart';
import 'package:payout_system/routes/screen_name.dart';
import '../../data/model/BalancePage_1Model.dart';

class BalancePage extends StatelessWidget {
  const BalancePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.backGroundColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          'Balance',
          style: TextStyle(fontSize: 20, color: Colors.black),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 79,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const [
                        Text(
                          'Current Balance',
                          style: TextStyle(
                            fontSize: 14,
                            color: ColorManager.secondaryTextColor,
                          ),
                        ),
                        Text(
                          '\$250.00',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    ElevatedButton.icon(
                      onPressed: () {
                        showModalBottomSheet(
                          isScrollControlled: true,
                          shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.vertical(
                                  top: Radius.circular(30))),
                          context: context,
                          builder: (context) {
                            return Padding(
                                padding: const EdgeInsets.only(
                                    left: 28, top: 16),
                                child: SizedBox(
                                  height: 178,
                                  child: Column(
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                        'Choose Payment Method',
                                        style: TextStyle(
                                            fontSize: 16,
                                            color: ColorManager.secondaryTextColor),
                                      ),
                                      const SizedBox(height: 16),
                                      const Divider(),
                                      const SizedBox(height: 18),
                                      InkWell(
                                        onTap: () {
                                          AppRouter.goTo(screenName: ScreenName.BankWithdraw);
                                        },
                                        child: Row(
                                          children: [
                                            const Text(
                                              'Bank',
                                              style: TextStyle(
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            const SizedBox(
                                              width: 30,
                                            ),
                                            SvgPicture.asset(
                                              ImagesManager.Bank,
                                              width: 25,
                                              height: 25,
                                            )
                                          ],
                                        ),
                                      ),
                                      const SizedBox(height: 30),
                                      InkWell(
                                        onTap: () {},
                                        child: Row(
                                          children: [
                                            const Text(
                                              'Cash',
                                              style: TextStyle(
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            const SizedBox(
                                              width: 30,
                                            ),
                                            SvgPicture.asset(
                                              ImagesManager.Cash,
                                              width: 25,
                                              height: 25,
                                            )
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ));
                          },
                        );
                      },
                      icon: const Icon(
                        Icons.file_download_outlined,
                        color: ColorManager.mainColor,
                      ),
                      label: const Text(
                        'Withdraw',
                        style: TextStyle(color: ColorManager.mainColor),
                      ),
                      style: const ButtonStyle(
                          backgroundColor:
                          MaterialStatePropertyAll(Colors.white)),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            const Text(
              'Withdrawals',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              // height: 346,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(5))),
              child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 17,
                  ),
                  child: ListView.separated(
                    shrinkWrap: true,
                    itemCount: balancePage_1Model.length,
                    separatorBuilder: (context, index) => const Divider(),
                    itemBuilder: (context, i) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(balancePage_1Model[i].office!,
                                    style: const TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.bold)),
                                const SizedBox(
                                  height: 10,
                                ),
                                Text(balancePage_1Model[i].date!,
                                    style: const TextStyle(
                                        fontSize: 9,
                                        color: ColorManager.secondaryTextColor))
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(balancePage_1Model[i].price!,
                                    style: const TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold)),
                                const SizedBox(
                                  height: 4,
                                ),
                                Text(
                                  balancePage_1Model[i].status!,
                                  style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold,
                                      color:
                                      balancePage_1Model[i].statusClolor),
                                )
                              ],
                            )
                          ],
                        ),
                      );
                    },
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
