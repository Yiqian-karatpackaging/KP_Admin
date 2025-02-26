///
/// Code generated by jsonToDartModel https://ashamp.github.io/jsonToDartModel/
///
class ManagePermissionsModel {
  String roleArea;
  String roleName;
  String description;

  ManagePermissionsModel({
    required this.description,
    required this.roleName,
    required this.roleArea,
  });

  factory ManagePermissionsModel.fromJson(List<dynamic> json) {
    return ManagePermissionsModel(
      roleArea: json[2]?.toString() ?? '',
      roleName: json[1]?.toString() ?? '',
      description: json[3]?.toString() ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['description'] = description;
    data['roleName'] = roleName;
    data['roleArea'] = roleArea;
    return data;
  }
}
