import 'package:kp_admin/src/system_configuration/manage_permissions/manage_permissions.dart';

class ManagePermissionsColumn {

  static TextStyle columnHeaderStyle = const TextStyle(fontWeight: FontWeight.bold,);

  static List<List<String>> data = [["003007f1-19a6-40bb-84e2-d5b5093f4c19","UPS Quote","Sales",""],["02e12884-9f11-477b-a5bb-bf67eb678e6b","Bin Count - Edit TI","Inventory",""],["03058b1c-387f-4c1f-96bc-2fbd3ca0368a","Warehouse Equipment","System Configuration",""],["03cea3b1-dbb3-4e14-a9d6-ec8c8a3477e4","SO Pick","Shipping",""],["04db2fc5-c3a4-4685-bff6-261be69166b6","Global Search - Copy and Paste","System Configuration",""],["050a7439-6b75-4bd2-aff0-7f5a345f1006","WH Movement","Shipping",""],["05312713-3024-4112-8497-92135cbd392a","UPS Quote (Item Only)","Sales",""],["062ad7d3-f279-47f9-ad8e-aa58179b19bc","BinLocation RO","",""],["06cc5dd9-bb94-4f71-b891-a8070dc6f03d","Bin Count RO","Inventory",""],["0714ca9a-72be-4054-a20f-def99893a50b","PO Received RO","",""]];

  // static List<OperanceDataColumn<ManagePermissionsModel>> columns = [
  //   OperanceDataColumn<ManagePermissionsModel>(
  //     name: 'roleArea',
  //     width: OperanceDataColumnWidth(factor: 0.2),
  //     columnHeader: Text(
  //       'Role Area',
  //       style: columnHeaderStyle,
  //     ),
  //     cellBuilder: (context, item) {
  //       return Text(item.roleArea);
  //     },
  //   ),
  //   OperanceDataColumn<ManagePermissionsModel>(
  //     name: 'roleName',
  //     width: OperanceDataColumnWidth(factor: 0.2),
  //     columnHeader: Text(
  //       'Role Name',
  //       style: columnHeaderStyle,
  //     ),
  //     cellBuilder: (context, item) {
  //       return Text(item.roleName);
  //     },
  //   ),
  //   OperanceDataColumn<ManagePermissionsModel>(
  //     name: 'description',
  //     width: OperanceDataColumnWidth(factor: 0.4),
  //     columnHeader: Text(
  //       'Description',
  //       style: columnHeaderStyle,
  //     ),
  //     cellBuilder: (context, item) {
  //       return Text(
  //         item.description,
  //       );
  //     },
  //   ),
  //   OperanceDataColumn<ManagePermissionsModel>(
  //     name: 'menu',
  //     width: OperanceDataColumnWidth(factor: 0.2),
  //     columnHeader: Container(),
  //     cellBuilder: (context, item) {
  //       return Row(
  //         children: [
  //           Icon(Icons.edit, color: Colors.blue,),
  //           Icon(Icons.delete, color: Colors.blue,),
  //         ],
  //       );
  //     },
  //   ),
  // ];

  static List<OperanceDataColumn<ManagePermissionsModel>> columns(Function callBack) {
    return [
      OperanceDataColumn<ManagePermissionsModel>(
        name: 'roleArea',
        width: OperanceDataColumnWidth(factor: 0.2),
        columnHeader: Text(
          'Role Area',
          style: columnHeaderStyle,
        ),
        cellBuilder: (context, item) {
          return Text(item.roleArea);
        },
      ),
      OperanceDataColumn<ManagePermissionsModel>(
        name: 'roleName',
        width: OperanceDataColumnWidth(factor: 0.2),
        columnHeader: Text(
          'Role Name',
          style: columnHeaderStyle,
        ),
        cellBuilder: (context, item) {
          return Text(item.roleName);
        },
      ),
      OperanceDataColumn<ManagePermissionsModel>(
        name: 'description',
        width: OperanceDataColumnWidth(factor: 0.4),
        columnHeader: Text(
          'Description',
          style: columnHeaderStyle,
        ),
        cellBuilder: (context, item) {
          return Text(
            item.description,
          );
        },
      ),
      OperanceDataColumn<ManagePermissionsModel>(
        name: 'menu',
        width: OperanceDataColumnWidth(factor: 0.2),
        columnHeader: Container(),
        cellBuilder: (context, item) {
          return Row(
            children: [
              GestureDetector(child: Icon(Icons.edit, color: Colors.blue,), onTap: () => callBack('edit'),),
              GestureDetector(child: Icon(Icons.delete, color: Colors.blue,), onTap: () => callBack('delete'),),
            ],
          );
        },
      ),
    ];
  }
}