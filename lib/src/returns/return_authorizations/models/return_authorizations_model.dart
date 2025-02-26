///
/// Code generated by jsonToDartModel https://ashamp.github.io/jsonToDartModel/
///
class ReturnAuthorizationsModel {
  String warehouse;
  String ra;
  String po;
  String orderStatus;
  String tranDate;
  String customerName;
  String receiveStart;
  String receiverStartedBy;
  String receiveDate;
  String receivedBy;
  String receiverAssignedTo;
  String priority;


  ReturnAuthorizationsModel({
    required this.ra,
    required this.orderStatus,
    required this.priority,
    required this.receiverStartedBy,
    required this.receiverAssignedTo,
    required this.customerName,
    required this.receivedBy,
    required this.receiveDate,
    required this.receiveStart,
    required this.po,
    required this.tranDate,
    required this.warehouse,
  });

  factory ReturnAuthorizationsModel.fromJson(List<dynamic> json) {
    return ReturnAuthorizationsModel(
      ra: json[1]?.toString() ?? '',
      orderStatus: json[2]?.toString() ?? '',
      priority: json[5]?.toString() ?? '',
      receiverStartedBy: json[10]?.toString() ?? '',
      receiverAssignedTo: json[10]?.toString() ?? '',
      customerName: json[10]?.toString() ?? '',
      warehouse: json[10]?.toString() ?? '',
      receivedBy: json[10]?.toString() ?? '',
      receiveDate: json[10]?.toString() ?? '',
      receiveStart: json[10]?.toString() ?? '',
      po: json[10]?.toString() ?? '',
      tranDate: json[10]?.toString() ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['ra'] = ra;
    data['orderStatus'] = orderStatus;
    data['priority'] = priority;
    data['receiverStartedBy'] = receiverStartedBy;
    data['receiverAssignedTo'] = receiverAssignedTo;
    data['customerName'] = customerName;
    data['warehouse'] = warehouse;
    data['receivedBy'] = receivedBy;
    data['receiveDate'] = receiveDate;
    data['receiveStart'] = receiveStart;
    data['po'] = po;
    data['tranDate'] = tranDate;
    return data;
  }
}
