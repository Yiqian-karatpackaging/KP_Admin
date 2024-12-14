///
/// Code generated by jsonToDartModel https://ashamp.github.io/jsonToDartModel/
///
class DockLoadingZoneLessPalletIdScanModel {
  String soCode;
  String palletID;
  String zone;
  String spot;
  String weight;
  String truckBin;
  String loadedDate;
  String loadType;

  DockLoadingZoneLessPalletIdScanModel({
    required this.soCode,
    required this.palletID,
    required this.zone,
    required this.spot,
    required this.weight,
    required this.truckBin,
    required this.loadedDate,
    required this.loadType,
  });

  factory DockLoadingZoneLessPalletIdScanModel.fromJson(List<dynamic> json) {
    return DockLoadingZoneLessPalletIdScanModel(
      soCode: json[1]?.toString() ?? '',
      palletID: json[1]?.toString() ?? '',
      zone: json[0]?.toString() ?? '',
      spot: json[0]?.toString() ?? '',
      weight: json[0]?.toString() ?? '',
      truckBin: json[0]?.toString() ?? '',
      loadedDate: json[0]?.toString() ?? '',
      loadType: json[0]?.toString() ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['soCode'] = soCode;
    data['palletID'] = palletID;
    data['zone'] = zone;
    data['spot'] = spot;
    data['weight'] = weight;
    data['truckBin'] = truckBin;
    data['loadedDate'] = loadedDate;
    data['loadType'] = loadType;
    return data;
  }
}
