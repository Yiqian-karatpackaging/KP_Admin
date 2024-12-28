///
/// Code generated by jsonToDartModel https://ashamp.github.io/jsonToDartModel/
///
class YardManagmentModel {
  String urgent;
  String vendor;
  String etaPort;
  String container;
  String lfd;
  String inYardBy;
  String inv;
  String unLoader;
  String etaWarehouse;
  String memoInYard;
  String dateInYard;
  String memo;
  String invoiceDate;
  String driver;
  String loc;
  String inYardDate;
  String po;
  String firstLabelBy;
  String receiveStartBy;
  String duration;
  String receiveStart;
  String yardStatus;
  String dock;
  String containerItemType;


  YardManagmentModel({
    required this.vendor,
    required this.urgent,
    required this.etaPort,
    required this.container,
    required this.lfd,
    required this.inYardBy,
    required this.inv,
    required this.unLoader,
    required this.etaWarehouse,
    required this.memoInYard,
    required this.dateInYard,
    required this.memo,
    required this.invoiceDate,
    required this.driver,
    required this.loc,
    required this.po,
    required this.inYardDate,
    required this.firstLabelBy,
    required this.receiveStartBy,
    required this.duration,
    required this.receiveStart,
    required this.yardStatus,
    required this.dock,
    required this.containerItemType,
  });

  factory YardManagmentModel.fromJson(List<dynamic> json) {
    return YardManagmentModel(
      urgent: json[1]?.toString() ?? '',
      container: json[2]?.toString() ?? '',
      vendor: json[3]?.toString() ?? '',
      lfd: json[6]?.toString() ?? '',
      inYardBy: json[5]?.toString() ?? '',
      inv: json[7]?.toString() ?? '',
      etaPort: json[8]?.toString() ?? '',
      unLoader: json[11]?.toString() ?? '',
      etaWarehouse: json[10]?.toString() ?? '',
      memoInYard: json[10]?.toString() ?? '',
      dateInYard: json[10]?.toString() ?? '',
      memo: json[10]?.toString() ?? '',
      invoiceDate: json[10]?.toString() ?? '',
      driver: json[10]?.toString() ?? '',
      loc: json[10]?.toString() ?? '',
      inYardDate: json[10]?.toString() ?? '',
      po: json[10]?.toString() ?? '',
      firstLabelBy: json[10]?.toString() ?? '',
      receiveStartBy: json[10]?.toString() ?? '',
      duration: json[10]?.toString() ?? '',
      receiveStart: json[10]?.toString() ?? '',
      yardStatus: json[10]?.toString() ?? '',
      dock: json[10]?.toString() ?? '',
      containerItemType: json[10]?.toString() ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['vendor'] = vendor;
    data['urgent'] = urgent;
    data['etaPort'] = etaPort;
    data['container'] = container;
    data['lfd'] = lfd;
    data['inYardBy'] = inYardBy;
    data['inv'] = inv;
    data['unLoader'] = unLoader;
    data['etaWarehouse'] = etaWarehouse;
    data['memoInYard'] = memoInYard;
    data['dateInYard'] = dateInYard;
    data['memo'] = memo;
    data['invoiceDate'] = invoiceDate;
    data['driver'] = driver;
    data['loc'] = loc;
    data['po'] = po;
    data['inYardDate'] = inYardDate;
    data['firstLabelBy'] = firstLabelBy;
    data['receiveStartBy'] = receiveStartBy;
    data['duration'] = duration;
    data['receiveStart'] = receiveStart;
    data['yardStatus'] = yardStatus;
    data['dock'] = dock;
    data['containerItemType'] = containerItemType;
    return data;
  }
}