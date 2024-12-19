///
/// Code generated by jsonToDartModel https://ashamp.github.io/jsonToDartModel/
///
class ReceivingIncomingContainersModel {
  String urgent;
  String vendor;
  String etaPort;
  String container;
  String lfd;
  String inYardBy;
  String inv;
  String etaDispatch;
  String etaWarehouse;
  String memoInYard;
  String dateInYard;
  String memo;
  String invoiceDate;
  String status;
  String loc;
  String po;


  ReceivingIncomingContainersModel({
    required this.vendor,
    required this.urgent,
    required this.etaPort,
    required this.container,
    required this.lfd,
    required this.inYardBy,
    required this.inv,
    required this.etaDispatch,
    required this.etaWarehouse,
    required this.memoInYard,
    required this.dateInYard,
    required this.memo,
    required this.invoiceDate,
    required this.status,
    required this.loc,
    required this.po,
  });

  factory ReceivingIncomingContainersModel.fromJson(List<dynamic> json) {
    return ReceivingIncomingContainersModel(
      urgent: json[1]?.toString() ?? '',
      container: json[2]?.toString() ?? '',
      vendor: json[3]?.toString() ?? '',
      lfd: json[6]?.toString() ?? '',
      inYardBy: json[5]?.toString() ?? '',
      inv: json[7]?.toString() ?? '',
      etaPort: json[8]?.toString() ?? '',
      etaDispatch: json[11]?.toString() ?? '',
      etaWarehouse: json[10]?.toString() ?? '',
      memoInYard: json[10]?.toString() ?? '',
      dateInYard: json[10]?.toString() ?? '',
      memo: json[10]?.toString() ?? '',
      invoiceDate: json[10]?.toString() ?? '',
      status: json[10]?.toString() ?? '',
      loc: json[10]?.toString() ?? '',
      po: json[10]?.toString() ?? '',
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
    data['etaDispatch'] = etaDispatch;
    data['etaWarehouse'] = etaWarehouse;
    data['memoInYard'] = memoInYard;
    data['dateInYard'] = dateInYard;
    data['memo'] = memo;
    data['invoiceDate'] = invoiceDate;
    data['status'] = status;
    data['loc'] = loc;
    data['po'] = po;
    return data;
  }
}