class OfficesModel {
  OfficesModel({ this.office,this.workHours ,this.address, this.commission});
  final String? office;
  final String? workHours;
  final String? address;
  final String? commission;

}


List<OfficesModel> officesModel = [
  OfficesModel(
    office: "غزة - مكتب الدانا",
    workHours: 'ساعات العمل: 9 صباحا -7مساءا',
    address: 'الرمال _ تقاطع شارع فلسطين مع الشهداء',
    commission: 'بدون عمولة',
  ),
  OfficesModel(
    office: "خانيونس - مكتب الدانا",
    workHours: 'ساعات العمل: 9 صباحا -7مساءا',
    address: 'شارع جمال عبد الناصر _ بجوار مدرسة ابن خلدون',
    commission: 'بدون عمولة',
  ),
  OfficesModel(
    office: "جباليا - مكتب الدانا",
    workHours: 'ساعات العمل: 9 صباحا -7مساءا',
    address: 'شارع الترنس _ مقابل مزاج',
    commission: 'عمولة 5 شيكل',
  ),
  OfficesModel(
    office: "رفح - مكتب ابن خلدون",
    workHours: 'ساعات العمل: 9 صباحا -7مساءا',
    address: 'دوار العودة _ مقابل مكتبة المنارة',
    commission: 'بدون عمولة',
  ),
  OfficesModel(
    office: "رفح - مكتب ابن خلدون",
    workHours: 'ساعات العمل: 9 صباحا -7مساءا',
    address: 'بجانب مول أبو دلال - خلف مكتب مشتهى للسياحة',
    commission: 'عمولة 5 شيكل',
  ),

];