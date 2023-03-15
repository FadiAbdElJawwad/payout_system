import 'package:flutter/material.dart';
import 'package:payout_system/routes/screen_name.dart';
import 'package:payout_system/view/shared/Button.dart';
import 'package:payout_system/view/shared/Text_Field.dart';
import '../../../core/constant/ColorManager.dart';
import '../../../routes/app_router.dart';


class AddRecipient extends StatelessWidget {
  const AddRecipient({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.backGroundColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          'Add Recipient',
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
            const Text('Recipients Full Name (Arabic)', style: TextStyle(
                fontSize: 14, color: ColorManager.secondaryTextColor),),
            const SizedBox(height: 5,),
            Text_Field(
              hint: 'الاسم ثلاثي بالعربي',
              FillColor: Colors.white,
            ),
            const SizedBox(height: 18,),
            const Text('Recipients Phone Number', style: TextStyle(
                fontSize: 14, color: ColorManager.secondaryTextColor),),
            const SizedBox(height: 5,),
            Text_Field(
              hint: 'Enter phone number',
              FillColor: Colors.white,
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 18,),
            const Text('Recipients ID Number', style: TextStyle(
                fontSize: 14, color: ColorManager.secondaryTextColor),),
            const SizedBox(height: 5,),
            Text_Field(
              hint: 'Enter ID number',
              FillColor: Colors.white,
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 77,),
            Button(
                text: 'Confirm',
                onTap: () {
                  AppRouter.goTo(screenName: ScreenName.Recipients);
                },
                BackgroundColor: ColorManager.mainColor,
                TextColor: Colors.white)
          ],
        ),
      ),
    );
  }
}
