import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:payout_system/routes/app_router.dart';
import 'package:payout_system/routes/router_genrator.dart';
import 'package:payout_system/routes/screen_name.dart';


void main() {
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
    ),
  );
  runApp(const PayoutSystem());
}

class PayoutSystem extends StatelessWidget {
  const PayoutSystem({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: RouteGenarator.onGenerateRoute,
      initialRoute: ScreenName.BalancePage,
      navigatorKey: AppRouter.navigatorKey,
      // home: BalancePage(),
    );
  }
}
