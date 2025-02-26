///
/// Code generated by jsonToDartModel https://ashamp.github.io/jsonToDartModel/
///
class RoleUserModel {
  String userID;
  String loginName;
  String fullName;

  RoleUserModel({
    required this.fullName,
    required this.loginName,
    required this.userID,
  });

  factory RoleUserModel.fromJson(Map<String, dynamic> json) {
    return RoleUserModel(
      userID: json['UserId']?.toString() ?? '',
      loginName: json['UserName']?.toString() ?? '',
      fullName: json['EmpName']?.toString() ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['fullName'] = fullName;
    data['loginName'] = loginName;
    data['userID'] = userID;
    return data;
  }
}
