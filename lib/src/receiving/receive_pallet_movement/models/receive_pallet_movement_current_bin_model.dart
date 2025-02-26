///
/// Code generated by jsonToDartModel https://ashamp.github.io/jsonToDartModel/
///
class ReceivePalletMovementCurrentBinModel {
  String lpn;
  String bpn;
  String quantity;
  String holdReason;
  String bin;
  String type;
  String expirationDate;


  ReceivePalletMovementCurrentBinModel({
    required this.quantity,
    required this.bpn,
    required this.type,
    required this.holdReason,
    required this.expirationDate,
    required this.lpn,
    required this.bin,
  });

  factory ReceivePalletMovementCurrentBinModel.fromJson(List<dynamic> json) {
    return ReceivePalletMovementCurrentBinModel(
      lpn: json[28]?.toString() ?? '',
      quantity: json[14]?.toString() ?? '',
      bpn: json[8]?.toString() ?? '',
      type: json[26]?.toString() ?? '',
      holdReason: json[23]?.toString() ?? '',
      expirationDate: json[3]?.toString() ?? '',
      bin: json[18]?.toString() ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['quantity'] = quantity;
    data['bpn'] = bpn;
    data['type'] = type;
    data['holdReason'] = holdReason;
    data['expirationDate'] = expirationDate;
    data['lpn'] = lpn;
    data['bin'] = bin;
    return data;
  }
}
