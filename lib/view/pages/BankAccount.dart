import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:payout_system/core/constant/ImagesManager.dart';
import '../../core/constant/ColorManager.dart';
import '../../data/model/BankAccountModel.dart';
import '../../routes/app_router.dart';
import '../../routes/screen_name.dart';
import '../shared/Button.dart';

class BankAccount extends StatefulWidget {
  const BankAccount({Key? key}) : super(key: key);

  @override
  State<BankAccount> createState() => _BankAccountState();
}

class _BankAccountState extends State<BankAccount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.backGroundColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          'Bank Account',
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
          const SizedBox(height: 60,),
          Padding(padding: const EdgeInsets.symmetric(horizontal: 20),
              child: InkWell(
                onTap: () {},
                child: ListView.separated(
                  shrinkWrap: true,
                  itemCount: bankAccountModel.length,
                  separatorBuilder: (context, i) => const SizedBox(height: 13,),
                  itemBuilder: (context, i) {
                    return Container(
                      height: 96,
                      color: Colors.white,
                      transformAlignment: Alignment.topRight,
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 22),
                            child: SvgPicture.asset(ImagesManager.Bank),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(bankAccountModel[i].name!,
                                style: const TextStyle(fontSize: 16,),),
                              const SizedBox(height: 10,),
                              Text(bankAccountModel[i].phoneNumber!,
                                style: const TextStyle(fontSize: 16),),

                            ],
                          ),
                          Column(
                            children: [
                              IconButton(onPressed: () {
                                showDialog<String>(
                                  context: context,
                                  builder: (BuildContext context) =>
                                      AlertDialog(
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(
                                                15)),

                                        content: const Text(
                                            'Are you sure you want to delete your bank account?'),
                                        actions: <Widget>[
                                          ElevatedButton(
                                            onPressed: () {
                                              AppRouter.back();
                                            },
                                            style: ElevatedButton.styleFrom(
                                                backgroundColor: Colors.white,
                                                fixedSize: const Size(121, 35),
                                                shape: RoundedRectangleBorder(
                                                    borderRadius: BorderRadius
                                                        .circular(5))
                                            ),
                                            child: const Text('Cancel',
                                              style: TextStyle(
                                                  color: Colors.black),),
                                          ),
                                          ElevatedButton(
                                              onPressed: () {},
                                              style: ElevatedButton.styleFrom(
                                                  backgroundColor: Colors.red,
                                                  fixedSize: const Size(
                                                      121, 35),
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius: BorderRadius
                                                          .circular(5))
                                              ),
                                              child: const Text('Delete')
                                          ),
                                        ],
                                      ),
                                );
                              },
                                  icon: const Icon(
                                    Icons.clear, color: Colors.black,
                                    size: 18,)
                              )

                            ],
                          )
                        ],
                      ),
                    );
                  },
                ),
              )
          ),
          const Spacer(),
          Padding(padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Button(
                text: 'Continue',
                onTap: () {
              AppRouter.goTo(screenName: ScreenName.WithdrawPreview);
                },
                BackgroundColor: ColorManager.mainColor,
                TextColor: Colors.white),
          ),
          const SizedBox(height: 16,),
          Padding(padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Button(
                sizeText: 16,
                  text: 'Add Account',
                  onTap: () {
                    AppRouter.goTo(screenName: ScreenName.AddBankAccount);
                  },
                  BackgroundColor: Colors.white,
                  TextColor: ColorManager.secondaryTextColor)
          ),
        ],
      ),
    );
  }
}
