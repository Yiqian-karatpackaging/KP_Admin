///
/// Code generated by jsonToDartModel https://ashamp.github.io/jsonToDartModel/
///
class SOPickProgressModel {
  String warehouse;
  String so;
  String orderType;
  String customerName;
  String pickStartedBy;
  String pickStarted;
  String pickPause;
  String duration;
  String completion;


  SOPickProgressModel({
    required this.orderType,
    required this.pickStartedBy,
    required this.customerName,
    required this.so,
    required this.warehouse,
    required this.pickStarted,
    required this.pickPause,
    required this.duration,
    required this.completion,
  });

  factory SOPickProgressModel.fromJson(List<dynamic> json) {
    return SOPickProgressModel(
      orderType: json[11]?.toString() ?? '',
      pickStartedBy: json[3]?.toString() ?? '',
      customerName: json[1]?.toString() ?? '',
      so: json[0]?.toString() ?? '',
      warehouse: json[10]?.toString() ?? '',
      pickStarted: json[2]?.toString() ?? '',
      pickPause: json[8]?.toString() ?? '',
      duration: json[9]?.toString() ?? '',
      completion: json[7]?.toString() ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['orderType'] = orderType;
    data['pickStartedBy'] = pickStartedBy;
    data['customerName'] = customerName;
    data['so'] = so;
    data['warehouse'] = warehouse;
    data['pickStarted'] = pickStarted;
    data['pickPause'] = pickPause;
    data['duration'] = duration;
    data['completion'] = completion;
    return data;
  }
}