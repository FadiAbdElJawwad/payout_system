import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:payout_system/core/constant/ImagesManager.dart';
import 'package:payout_system/routes/screen_name.dart';
import 'package:payout_system/view/shared/Button.dart';
import '../../../core/constant/ColorManager.dart';
import '../../../data/model/RecipientsModel.dart';
import '../../../routes/app_router.dart';


class Recipients extends StatelessWidget {
  const Recipients({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.backGroundColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          'Recipients',
          style: TextStyle(fontSize: 20, color: Colors.black),
        ),
        leading: IconButton(onPressed: () {
          AppRouter.back();
        },
            icon: const Icon(
              Icons.arrow_back_ios_sharp, color: Colors.black,)),
      ),
      body: Padding(padding: const EdgeInsets.symmetric(horizontal: 34),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 30,),
            ListView.separated(
              shrinkWrap: true,
              itemCount: recipientsModel.length,
              separatorBuilder: (context, index) => const SizedBox(height: 12,),
              itemBuilder: (context, i) {
                return Container(
                    color: Colors.white,
                    child: Padding(padding: const EdgeInsets.symmetric(
                        vertical: 17, horizontal: 24),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  IconButton(onPressed: () {
                                    showDialog<String>(
                                      context: context,
                                      builder: (BuildContext context) =>
                                          AlertDialog(
                                            contentPadding: const EdgeInsets.symmetric(vertical: 1,horizontal: 10),
                                            iconPadding: const EdgeInsets.only(
                                                left: 240),
                                            icon: IconButton(onPressed: () {
                                              AppRouter.back();
                                            },
                                                icon: const Icon(
                                                  Icons.clear, size: 18,)),
                                            shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius
                                                    .circular(
                                                    15)),
                                            content: const Text(
                                                'Are you sure you want to delete this recipient?'),
                                            buttonPadding: const EdgeInsets
                                                .symmetric(horizontal: 20),
                                            actions: <Widget>[
                                              ElevatedButton(
                                                onPressed: () {
                                                  AppRouter.back();
                                                },
                                                style: ElevatedButton.styleFrom(
                                                    backgroundColor: Colors
                                                        .white,
                                                    fixedSize: const Size(
                                                        121, 35),
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
                                                  style: ElevatedButton
                                                      .styleFrom(
                                                      backgroundColor: Colors
                                                          .red,
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
                                      icon: SvgPicture.asset(
                                        ImagesManager.Delete, height: 15,
                                        width: 15,)),
                                  IconButton(onPressed: () {},
                                      icon: SvgPicture.asset(
                                        ImagesManager.Pencil, height: 15,
                                        width: 15,)),
                                ],
                              ),
                              const SizedBox(height: 8,),
                              Text(recipientsModel[i].ID!,
                                style: const TextStyle(fontSize: 14,
                                    color: ColorManager.secondaryTextColor),)
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(recipientsModel[i].name!,
                                style: const TextStyle(fontSize: 16,
                                    fontWeight: FontWeight.bold),),
                              const SizedBox(height: 10,),
                              Text(recipientsModel[i].phone!,
                                style: const TextStyle(fontSize: 14,
                                    color: ColorManager.secondaryTextColor),)
                            ],
                          )
                        ],
                      ),
                    )
                );
              },
            ),
            const SizedBox(height: 74,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Button(
                  text: 'Add',
                  onTap: () {
                    AppRouter.goTo(screenName: ScreenName.AddRecipient);
                  },
                  BackgroundColor: Colors.white,
                  TextColor: Colors.blue,
                  width: 150,
                ),

                Button(
                    text: 'Select',
                    onTap: () {},
                    BackgroundColor: ColorManager.mainColor,
                    TextColor: Colors.white,
                  width: 150,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
