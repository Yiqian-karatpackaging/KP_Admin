///
/// Code generated by jsonToDartModel https://ashamp.github.io/jsonToDartModel/
///
class ManifestListModel {
  String warehouse;
  String checkIn;
  String appointmentTime;
  String so;
  String date;
  String timeWaited;
  String orderStatus;
  String completedTime;
  String delete;
  String receivingHours;
  String driverName;
  String carrierName;
  String customerName;
  String poRef;
  String phone;
  String dock;
  String palletCount;
  String loader;
  String memo;

  ManifestListModel({
    required this.customerName,
    required this.checkIn,
    required this.palletCount,
    required this.appointmentTime,
    required this.memo,
    required this.driverName,
    required this.loader,
    required this.dock,
    required this.orderStatus,
    required this.delete,
    required this.phone,
    required this.warehouse,
    required this.poRef,
    required this.carrierName,
    required this.receivingHours,
    required this.completedTime,
    required this.timeWaited,
    required this.so,
    required this.date,
  });

  factory ManifestListModel.fromJson(List<dynamic> json) {
    return ManifestListModel(
      checkIn: json[1]?.toString() ?? '',
      appointmentTime: json[2]?.toString() ?? '',
      customerName: json[3]?.toString() ?? '',
      memo: json[6]?.toString() ?? '',
      driverName: json[5]?.toString() ?? '',
      loader: json[7]?.toString() ?? '',
      palletCount: json[8]?.toString() ?? '',
      dock: json[10]?.toString() ?? '',
      orderStatus: json[10]?.toString() ?? '',
      delete: json[10]?.toString() ?? '',
      phone: json[10]?.toString() ?? '',
      warehouse: json[10]?.toString() ?? '',
      carrierName: json[10]?.toString() ?? '',
      poRef: json[10]?.toString() ?? '',
      receivingHours: json[10]?.toString() ?? '',
      completedTime: json[10]?.toString() ?? '',
      timeWaited: json[10]?.toString() ?? '',
      so: json[10]?.toString() ?? '',
      date: json[10]?.toString() ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['customerName'] = customerName;
    data['checkIn'] = checkIn;
    data['palletCount'] = palletCount;
    data['appointmentTime'] = appointmentTime;
    data['memo'] = memo;
    data['driverName'] = driverName;
    data['loader'] = loader;
    data['dock'] = dock;
    data['orderStatus'] = orderStatus;
    data['delete'] = delete;
    data['phone'] = phone;
    data['warehouse'] = warehouse;
    data['poRef'] = poRef;
    data['carrierName'] = carrierName;
    data['receivingHours'] = receivingHours;
    data['completedTime'] = completedTime;
    data['timeWaited'] = timeWaited;
    data['so'] = so;
    data['date'] = date;
    return data;
  }
}
