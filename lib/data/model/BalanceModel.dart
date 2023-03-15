import 'dart:ui';
import 'package:payout_system/core/constant/ColorManager.dart';


class BalanceModel {
  BalanceModel({this.statusClolor, this.date, this.status,  this.office, this.price});
  final String? office;
  final String? price;
  final String? date;
  final String? status ;
  final  statusClolor ;
}


List<BalanceModel> balanceModel = [
  BalanceModel(
      office: "غزة - مكتب الدانا",
      price: '\$567',
      date: '12:30 AM, 21 Aug',
      status: 'Pending',
      statusClolor:  ColorManager.pendingColor
  ),
  BalanceModel(
      office: "Bank of Palestine",
      price: '\$500',
      date: '12:30 AM, 21 Aug',
      status: 'Sent',
      statusClolor:  ColorManager.mainColor
  ),
  BalanceModel(
      office: "Bank of Palestine",
      price: '\$2500',
      date: '12:30 AM, 21 Aug',
      status: 'Completed',
  ),
  BalanceModel(
    office: "Bank of Palestine",
    price: '\$2500',
    date: '12:30 AM, 21 Aug',
    status: 'Completed',
  ),
  BalanceModel(
    office: "Bank of Palestine",
    price: '\$200',
    date: '12:30 AM, 21 Aug',
    status: 'Canceled',
      statusClolor:  const Color(0xff929292)
  ),

];