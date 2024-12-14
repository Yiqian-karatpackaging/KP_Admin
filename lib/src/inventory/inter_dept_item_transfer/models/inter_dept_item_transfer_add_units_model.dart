///
/// Code generated by jsonToDartModel https://ashamp.github.io/jsonToDartModel/
///
class InterDeptItemTransferAddUnitsModel {
  String requestID;
  String warehouse;


  InterDeptItemTransferAddUnitsModel({
    required this.requestID,
    required this.warehouse,
  });

  factory InterDeptItemTransferAddUnitsModel.fromJson(List<dynamic> json) {
    return InterDeptItemTransferAddUnitsModel(
      requestID: json[8]?.toString() ?? '',
      warehouse: json[3]?.toString() ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['requestID'] = requestID;
    data['warehouse'] = warehouse;
    return data;
  }
}