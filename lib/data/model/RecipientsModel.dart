class RecipientsModel {
  RecipientsModel({ this.phone,   this.name, this.ID});
  final String? name;
  final String? ID;
  final String? phone;

}


List<RecipientsModel> recipientsModel = [
  RecipientsModel(
    name: "محمد خلف",
    ID: 'ID: 488345512',
    phone: 'Phone: 0599823345',
  ),
  RecipientsModel(
      name: "محمد أحمد",
      ID: 'ID: 488345512',
      phone: 'Phone: 0599823345',
  ),
  RecipientsModel(
    name: "محمد عمر",
    ID: 'ID: 488345512',
    phone: 'Phone: 0599823345',
  ),
  RecipientsModel(
    name: "عمر سامر",
    ID: 'ID: 488345512',
    phone: 'Phone: 0599823345',
  ),


];