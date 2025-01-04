///
/// Code generated by jsonToDartModel https://ashamp.github.io/jsonToDartModel/
///
class DeliveryOrdersModel {
  String action;
  String ref;
  String container;
  String line;
  String terminal;
  String eta;
  String lfd;
  String size;
  String chassis;
  String pickUpDate;
  String pickUpTimeFrom;
  String pickUpTimeTo;
  String pickUpDriver;
  String notes;
  String terminalPin;
  String returnDate;
  String returnDriver;
  String customerEmptyDate;
  String street;
  String unitSuite;
  String city;
  String state;
  String zip;
  String customer;
  String createdBy;
  String createdDate;
  String invoice;
  String amount;

  DeliveryOrdersModel({
    required this.notes,
    required this.ref,
    required this.customerEmptyDate,
    required this.container,
    required this.unitSuite,
    required this.pickUpTimeTo,
    required this.street,
    required this.returnDriver,
    required this.lfd,
    required this.pickUpTimeFrom,
    required this.chassis,
    required this.returnDate,
    required this.action,
    required this.terminalPin,
    required this.pickUpDriver,
    required this.pickUpDate,
    required this.size,
    required this.eta,
    required this.line,
    required this.terminal,
    required this.invoice,
    required this.state,
    required this.createdDate,
    required this.customer,
    required this.amount,
    required this.createdBy,
    required this.zip,
    required this.city,
  });

  factory DeliveryOrdersModel.fromJson(List<dynamic> json) {
    return DeliveryOrdersModel(
      ref: json[1]?.toString() ?? '',
      container: json[2]?.toString() ?? '',
      notes: json[3]?.toString() ?? '',
      unitSuite: json[6]?.toString() ?? '',
      pickUpTimeTo: json[5]?.toString() ?? '',
      street: json[7]?.toString() ?? '',
      customerEmptyDate: json[8]?.toString() ?? '',
      returnDriver: json[10]?.toString() ?? '',
      lfd: json[10]?.toString() ?? '',
      pickUpTimeFrom: json[10]?.toString() ?? '',
      chassis: json[10]?.toString() ?? '',
      returnDate: json[10]?.toString() ?? '',
      action: json[10]?.toString() ?? '',
      pickUpDriver: json[10]?.toString() ?? '',
      terminalPin: json[10]?.toString() ?? '',
      pickUpDate: json[10]?.toString() ?? '',
      size: json[10]?.toString() ?? '',
      eta: json[10]?.toString() ?? '',
      line: json[10]?.toString() ?? '',
      terminal: json[10]?.toString() ?? '',
      state: json[10]?.toString() ?? '',
      createdDate: json[10]?.toString() ?? '',
      customer: json[10]?.toString() ?? '',
      amount: json[10]?.toString() ?? '',
      createdBy: json[10]?.toString() ?? '',
      zip: json[10]?.toString() ?? '',
      city: json[10]?.toString() ?? '',
      invoice: json[10]?.toString() ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['notes'] = notes;
    data['ref'] = ref;
    data['customerEmptyDate'] = customerEmptyDate;
    data['container'] = container;
    data['unitSuite'] = unitSuite;
    data['pickUpTimeTo'] = pickUpTimeTo;
    data['street'] = street;
    data['returnDriver'] = returnDriver;
    data['lfd'] = lfd;
    data['pickUpTimeFrom'] = pickUpTimeFrom;
    data['chassis'] = chassis;
    data['returnDate'] = returnDate;
    data['action'] = action;
    data['terminalPin'] = terminalPin;
    data['pickUpDriver'] = pickUpDriver;
    data['pickUpDate'] = pickUpDate;
    data['size'] = size;
    data['eta'] = eta;
    data['line'] = line;
    data['terminal'] = terminal;
    data['invoice'] = invoice;
    data['state'] = state;
    data['createdDate'] = createdDate;
    data['customer'] = customer;
    data['amount'] = amount;
    data['createdBy'] = createdBy;
    data['zip'] = zip;
    data['city'] = city;
    return data;
  }
}