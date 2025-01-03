///
/// Code generated by jsonwarehouseDartModel https://ashamp.github.io/jsonwarehouseDartModel/
///
class DriverSignOutModel {
  String warehouse;
  String pickStartedBy;
  String pCompletingBy;
  String so;
  String driverHasArrived;
  String pickStarted;
  String auditStartBy;
  String pCompletedDate;
  String shipDate;
  String auditStartDate;
  String status;
  String auditCompletedBy;
  String auditCompletedDate;
  String customerName;
  String shipVia;
  String pickUpDateTime;
  String nameOfCustomerPickingUp;
  String orderGivenToCustomerBy;
  String stagingArea;
  String dock;
  String eMail;
  String waitTime;

  DriverSignOutModel({
    required this.customerName,
    required this.pickStartedBy,
    required this.orderGivenToCustomerBy,
    required this.pCompletingBy,
    required this.dock,
    required this.auditCompletedBy,
    required this.stagingArea,
    required this.nameOfCustomerPickingUp,
    required this.auditStartBy,
    required this.status,
    required this.shipDate,
    required this.pickUpDateTime,
    required this.warehouse,
    required this.shipVia,
    required this.auditCompletedDate,
    required this.auditStartDate,
    required this.pCompletedDate,
    required this.pickStarted,
    required this.so,
    required this.driverHasArrived,
    required this.waitTime,
    required this.eMail,
  });

  factory DriverSignOutModel.fromJson(List<dynamic> json) {
    return DriverSignOutModel(
      pickStartedBy: json[1]?.toString() ?? '',
      pCompletingBy: json[2]?.toString() ?? '',
      customerName: json[3]?.toString() ?? '',
      dock: json[6]?.toString() ?? '',
      auditCompletedBy: json[5]?.toString() ?? '',
      stagingArea: json[7]?.toString() ?? '',
      orderGivenToCustomerBy: json[8]?.toString() ?? '',
      nameOfCustomerPickingUp: json[10]?.toString() ?? '',
      auditStartBy: json[10]?.toString() ?? '',
      status: json[10]?.toString() ?? '',
      shipDate: json[10]?.toString() ?? '',
      pickUpDateTime: json[10]?.toString() ?? '',
      warehouse: json[10]?.toString() ?? '',
      auditCompletedDate: json[10]?.toString() ?? '',
      shipVia: json[10]?.toString() ?? '',
      auditStartDate: json[10]?.toString() ?? '',
      pCompletedDate: json[10]?.toString() ?? '',
      pickStarted: json[10]?.toString() ?? '',
      so: json[10]?.toString() ?? '',
      driverHasArrived: json[10]?.toString() ?? '',
      waitTime: json[10]?.toString() ?? '',
      eMail: json[10]?.toString() ?? '',
    );
  }

  Map<String, dynamic> warehouseJson() {
    final data = <String, dynamic>{};
    data['customerName'] = customerName;
    data['pickStartedBy'] = pickStartedBy;
    data['orderGivenToCustomerBy'] = orderGivenToCustomerBy;
    data['pCompletingBy'] = pCompletingBy;
    data['dock'] = dock;
    data['auditCompletedBy'] = auditCompletedBy;
    data['stagingArea'] = stagingArea;
    data['nameOfCustomerPickingUp'] = nameOfCustomerPickingUp;
    data['auditStartBy'] = auditStartBy;
    data['status'] = status;
    data['shipDate'] = shipDate;
    data['pickUpDateTime'] = pickUpDateTime;
    data['warehouse'] = warehouse;
    data['shipVia'] = shipVia;
    data['auditCompletedDate'] = auditCompletedDate;
    data['auditStartDate'] = auditStartDate;
    data['pCompletedDate'] = pCompletedDate;
    data['pickStarted'] = pickStarted;
    data['so'] = so;
    data['driverHasArrived'] = driverHasArrived;
    data['waitTime'] = waitTime;
    data['eMail'] = eMail;
    return data;
  }
}
