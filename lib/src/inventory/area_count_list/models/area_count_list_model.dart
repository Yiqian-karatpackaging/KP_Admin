///
/// Code generated by jsonToDartModel https://ashamp.github.io/jsonToDartModel/
///
class AreaCountListModel {
  String cycleCountID;
  String warehouse;
  String area;
  String bin;
  String addLPN;
  String type;


  AreaCountListModel({
    required this.addLPN,
    required this.warehouse,
    required this.area,
    required this.cycleCountID,
    required this.bin,
    required this.type,
  });

  factory AreaCountListModel.fromJson(List<dynamic> json) {
    return AreaCountListModel(
      addLPN: json[1]?.toString() ?? '',
      cycleCountID: json[8]?.toString() ?? '',
      warehouse: json[25]?.toString() ?? '',
      area: json[2]?.toString() ?? '',
      bin: json[3]?.toString() ?? '',
      type: json[6]?.toString() ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['addLPN'] = addLPN;
    data['warehouse'] = warehouse;
    data['area'] = area;
    data['cycleCountID'] = cycleCountID;
    data['bin'] = bin;
    data['type'] = type;
    return data;
  }
}