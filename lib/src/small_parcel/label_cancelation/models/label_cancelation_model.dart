///
/// Code generated by jsonToDartModel https://ashamp.github.io/jsonToDartModel/
///
class LabelCancelationModel {
  String warehouse;
  String so;
  String trackingNumber;
  String reason;
  String page;
  String dateCancelled;
  String user;

  LabelCancelationModel({
    required this.trackingNumber,
    required this.dateCancelled,
    required this.reason,
    required this.warehouse,
    required this.page,
    required this.user,
    required this.so,
  });

  factory LabelCancelationModel.fromJson(List<dynamic> json) {
    return LabelCancelationModel(
      warehouse: json[1]?.toString() ?? '',
      trackingNumber: json[7]?.toString() ?? '',
      dateCancelled: json[6]?.toString() ?? '',
      reason: json[3]?.toString() ?? '',
      page: json[4]?.toString() ?? '',
      user: json[5]?.toString() ?? '',
      so: json[2]?.toString() ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['trackingNumber'] = trackingNumber;
    data['dateCancelled'] = dateCancelled;
    data['reason'] = reason;
    data['warehouse'] = warehouse;
    data['page'] = page;
    data['user'] = user;
    data['so'] = so;
    return data;
  }
}
