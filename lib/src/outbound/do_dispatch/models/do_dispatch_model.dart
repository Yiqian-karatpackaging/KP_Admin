///
/// Code generated by jsonToDartModel https://ashamp.github.io/jsonToDartModel/
///
class DoDispatchModel {
  String ref;
  String pickUpDate;
  String stop;
  String pickUpDriver;
  String returnDate;
  String returnDriver;
  String address;
  String route;

  DoDispatchModel({
    required this.ref,
    required this.pickUpDate,
    required this.pickUpDriver,
    required this.stop,
    required this.returnDate,
    required this.returnDriver,
    required this.address,
    required this.route,
  });

  factory DoDispatchModel.fromJson(List<dynamic> json) {
    return DoDispatchModel(
      ref: json[1]?.toString() ?? '',
      pickUpDate: json[2]?.toString() ?? '',
      pickUpDriver: json[3]?.toString() ?? '',
      returnDate: json[6]?.toString() ?? '',
      returnDriver: json[5]?.toString() ?? '',
      address: json[7]?.toString() ?? '',
      stop: json[8]?.toString() ?? '',
      route: json[10]?.toString() ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['ref'] = ref;
    data['pickUpDate'] = pickUpDate;
    data['pickUpDriver'] = pickUpDriver;
    data['stop'] = stop;
    data['returnDate'] = returnDate;
    data['returnDriver'] = returnDriver;
    data['address'] = address;
    data['route'] = route;
    return data;
  }
}
