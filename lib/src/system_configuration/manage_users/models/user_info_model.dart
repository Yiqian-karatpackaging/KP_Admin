///
/// Code generated by jsonToDartModel https://ashamp.github.io/jsonToDartModel/
///
class UserInfoModel {
  String email;
  String loginName;
  String dateActive;
  String dateInactive;
  String datePWChanged;
  String startupPage;
  String labelPrinter;
  String role;
  String lastLogin;
  String deptName;
  String supervisor;
  String nsSalesRepName;
  String whLocation;
  String shift;
  String temp;
  String inventoryCounterSwitch;
  String employeeCode;
  String editedDate;
  String editedBy;
  String createdDate;
  String createdBy;

  UserInfoModel({
    required this.whLocation,
    required this.dateActive,
    required this.dateInactive,
    required this.labelPrinter,
    required this.lastLogin,
    required this.deptName,
    required this.supervisor,
    required this.nsSalesRepName,
    required this.role,
    required this.loginName,
    required this.email,
    required this.datePWChanged,
    required this.startupPage,
    required this.shift,
    required this.temp,
    required this.inventoryCounterSwitch,
    required this.employeeCode,
    required this.editedDate,
    required this.editedBy,
    required this.createdDate,
    required this.createdBy,
  });

  factory UserInfoModel.fromJson(List<dynamic> json) {
    return UserInfoModel(
      email: json[1]?.toString() ?? '',
      loginName: json[2]?.toString() ?? '',
      dateActive: json[3]?.toString() ?? '',
      dateInactive: json[4]?.toString() ?? '',
      datePWChanged: json[5]?.toString() ?? '',
      startupPage: json[6]?.toString() ?? '',
      whLocation: json[7]?.toString() ?? '',
      labelPrinter: json[8]?.toString() ?? '',
      role: json[9]?.toString() ?? '',
      lastLogin: json[10]?.toString() ?? '',
      deptName: json[11]?.toString() ?? '',
      supervisor: json[12]?.toString() ?? '',
      nsSalesRepName: json[13]?.toString() ?? '',
      shift: json[14]?.toString() ?? '',
      temp: json[15]?.toString() ?? '',
      inventoryCounterSwitch: json[16]?.toString() ?? '',
      editedBy: json[17]?.toString() ?? '',
      editedDate: json[18]?.toString() ?? '',
      createdBy: json[19]?.toString() ?? '',
      createdDate: json[20]?.toString() ?? '',
      employeeCode: json[21]?.toString() ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['whLocation'] = whLocation;
    data['dateActive'] = dateActive;
    data['dateInactive'] = dateInactive;
    data['labelPrinter'] = labelPrinter;
    data['lastLogin'] = lastLogin;
    data['deptName'] = deptName;
    data['supervisor'] = supervisor;
    data['nsSalesRepName'] = nsSalesRepName;
    data['role'] = role;
    data['loginName'] = loginName;
    data['email'] = email;
    data['datePWChanged'] = datePWChanged;
    data['startupPage'] = startupPage;
    data['shift'] = shift;
    data['temp'] = temp;
    data['inventoryCounterSwitch'] = inventoryCounterSwitch;
    data['employeeCode'] = employeeCode;
    data['editedDate'] = editedDate;
    data['editedBy'] = editedBy;
    data['createdDate'] = createdDate;
    data['createdBy'] = createdBy;
    return data;
  }
}