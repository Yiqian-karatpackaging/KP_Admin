///
/// Code generated by jsonToDartModel https://ashamp.github.io/jsonToDartModel/
///
class MarkShippedModel {
  String wh;
  String order;
  String type;
  String customer;
  String toWH;
  String markedShippedDate;
  String markedShippedBy;

  MarkShippedModel({
    required this.wh,
    required this.order,
    required this.type,
    required this.customer,
    required this.toWH,
    required this.markedShippedDate,
    required this.markedShippedBy,
  });

  factory MarkShippedModel.fromJson(List<dynamic> json) {
    return MarkShippedModel(
      wh: json[1]?.toString() ?? '',
      order: json[5]?.toString() ?? '',
      type: json[0]?.toString() ?? '',
      customer: json[2]?.toString() ?? '',
      toWH: json[3]?.toString() ?? '',
      markedShippedDate: json[4]?.toString() ?? '',
      markedShippedBy: json[0]?.toString() ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['wh'] = wh;
    data['order'] = order;
    data['type'] = type;
    data['customer'] = customer;
    data['toWH'] = toWH;
    data['markedShippedDate'] = markedShippedDate;
    data['markedShippedBy'] = markedShippedBy;
    return data;
  }
}
