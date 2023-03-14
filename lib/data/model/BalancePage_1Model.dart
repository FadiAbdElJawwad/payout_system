
import 'dart:ui';

import 'package:payout_system/core/constant/ColorManager.dart';

class BalancePage_1Model {
  BalancePage_1Model({this.statusClolor, this.date, this.status,  this.office, this.price});
  final String? office;
  final String? price;
  final String? date;
  final String? status ;
  final  statusClolor ;
}


List<BalancePage_1Model> balancePage_1Model = [
  BalancePage_1Model(
      office: "غزة - مكتب الدانا",
      price: '\$567',
      date: '12:30 AM, 21 Aug',
      status: 'Pending',
      statusClolor:  const Color(0xffDAA545)
  ),
  BalancePage_1Model(
      office: "Bank of Palestine",
      price: '\$500',
      date: '12:30 AM, 21 Aug',
      status: 'Sent',
      statusClolor:  ColorManager.mainColor
  ),
  BalancePage_1Model(
      office: "Bank of Palestine",
      price: '\$2500',
      date: '12:30 AM, 21 Aug',
      status: 'Completed',
  ),
  BalancePage_1Model(
    office: "Bank of Palestine",
    price: '\$2500',
    date: '12:30 AM, 21 Aug',
    status: 'Completed',
  ),
  BalancePage_1Model(
    office: "Bank of Palestine",
    price: '\$2500',
    date: '12:30 AM, 21 Aug',
    status: 'Canceled',
      statusClolor:  const Color(0xff929292)
  ),


];