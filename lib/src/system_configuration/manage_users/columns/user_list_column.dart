import 'package:kp_admin/src/system_configuration/manage_users/manage_users.dart';

class UserListColumn {

  static TextStyle columnHeaderStyle = const TextStyle(fontWeight: FontWeight.bold,);

  static List<List<String>> data = [["000241fe-d3f7-4fef-ac49-4a7d7d654af8","jose.guzman@karatpackaging.com","jose.guzman","5/13/2020 12:00 AM","","1/1/2023 12:00 AM","SO Pick","CA","CA-139 WH Admin Door","Shipping - Checker,Shipping - Puller,Shipping - Rack","7/9/2021 11:31 AM","Shipping","","","","","No","","","","",""],["00256643-12ad-4dce-bb80-591f7ce34060","test409@gmail.com","test000409","10/19/2024 12:00 AM","","","User","CA","newna","","10/19/2024 4:09 AM","WH Management","Shiso","","","No","No","riched","10/19/2024 3:44 AM","riched","10/19/2024 3:44 AM","1234"],["002b6520-aacd-4020-8998-ca60daa38be5","linnie.huang@karatpackaging.com","linnie.huang","12/31/2020 12:00 AM","","1/1/2023 12:00 AM","DashBoard","CA","xPDF","Accounting,KP System Administrator","1/2/2021 9:16 PM","Accounting","","","","","No","","","","",""],["0035ef11-a23f-4a66-8bc2-5e31d1f6a311","test921@gmail.com","test000921","10/19/2024 12:00 AM","","","User","CA","newna","","10/19/2024 4:09 AM","WH Management","Shiso","","","No","No","riched","10/19/2024 3:51 AM","riched","10/19/2024 3:51 AM","1234"],["004b8c5b-03a2-4a02-99f9-ac1a6593e91a","arturo.perez@cash.com","arturo.perez","3/25/2019 12:00 AM","","1/1/2023 12:00 AM","User","CA","CA-139 WH Admin Door","Receiving - Receiver,Shipping - Checker,Shipping - Puller,Shipping - Rack,Shipping - Supervisor","3/20/2023 11:32 PM","Shipping","","","","","No","","","","",""],["0063ad73-a645-4c7f-8f27-c25cb912d71f","test654@gmail.com","test000654","10/19/2024 12:00 AM","","","User","CA","newna","","10/19/2024 4:10 AM","WH Management","Shiso","","","No","No","riched","10/19/2024 3:51 AM","riched","10/19/2024 3:51 AM","1234"],["00708b2a-07a9-4579-834f-3bdbc7566707","test108@gmail.com","test000108","10/19/2024 12:00 AM","","","User","CA","newna","","10/19/2024 4:08 AM","WH Management","Shiso","","","No","No","riched","10/19/2024 3:39 AM","riched","10/19/2024 3:39 AM","1234"],["00e7ce0a-4ea7-4cab-9b45-28108027d688","test176@gmail.com","test000176","10/19/2024 12:00 AM","","","User","CA","newna","","10/19/2024 4:09 AM","WH Management","Shiso","","","No","No","riched","10/19/2024 3:40 AM","riched","10/19/2024 3:40 AM","1234"],["0117c65a-4c77-4a3c-b771-0f09f409ecfb","test824@gmail.com","test000824","10/19/2024 12:00 AM","","","User","CA","newna","","10/19/2024 4:09 AM","WH Management","Shiso","","","No","No","riched","10/19/2024 3:51 AM","riched","10/19/2024 3:51 AM","1234"],["0139e8f6-cd78-4012-9d10-4631701b0e17","test281@gmail.com","test000281","10/19/2024 12:00 AM","","","User","CA","newna","","10/19/2024 4:09 AM","WH Management","Shiso","","","No","No","riched","10/19/2024 3:41 AM","riched","10/19/2024 3:41 AM","1234"],["014caa94-3492-465c-8c23-9bc7137645c9","test106@gmail.com","test000106","10/19/2024 12:00 AM","","","User","CA","newna","","10/19/2024 4:08 AM","WH Management","Shiso","","","No","No","riched","10/19/2024 3:39 AM","riched","10/19/2024 3:39 AM","1234"]];

  static List<OperanceDataColumn<UserInfoModel>> columns = [
    OperanceDataColumn<UserInfoModel>(
      name: 'action',
      columnHeader: ElevatedButton(
        onPressed: () {

        },
        child: BaseText(text: 'Add users', textColor: Colors.white,),
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blue,
          padding: EdgeInsets.zero,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(2),
          ),
        ),
      ),
      cellBuilder: (context, item) {
        return GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, '/edit_manage_user');
          },
          child: Center(child: const Icon(Icons.edit, color: Colors.blue, size: 20,),),
        );
      },
    ),
    OperanceDataColumn<UserInfoModel>(
      name: 'email',
      width: OperanceDataColumnWidth(size: 100.w),
      columnHeader: Text(
        'Email',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(text: item.email,);
      },
    ),
    OperanceDataColumn<UserInfoModel>(
      name: 'loginName',
      width: OperanceDataColumnWidth(size: 60.w),
      columnHeader: Text(
        'Login Name',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(text: item.loginName,);
      },
    ),
    OperanceDataColumn<UserInfoModel>(
      name: 'dateActive',
      width: OperanceDataColumnWidth(size: 60.w),
      columnHeader: Text(
        'Date Active',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.dateActive,
        );
      },
    ),
    OperanceDataColumn<UserInfoModel>(
      name: 'dateInactive',
      width: OperanceDataColumnWidth(size: 60.w),
      columnHeader: Text(
        'Date Inactive',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.dateInactive,
        );
      },
    ),
    OperanceDataColumn<UserInfoModel>(
      name: 'datePWChanged',
      width: OperanceDataColumnWidth(size: 60.w),
      columnHeader: Text(
        'Date PWChanged',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.datePWChanged,
        );
      },
    ),
    OperanceDataColumn<UserInfoModel>(
      name: 'startupPage',
      columnHeader: Text(
        'Startup Page',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(text: item.startupPage,);
      },
    ),
    OperanceDataColumn<UserInfoModel>(
      name: 'whLocation',
      columnHeader: Text(
        'WH Location',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.whLocation,
        );
      },
    ),
    OperanceDataColumn<UserInfoModel>(
      name: 'labelPrinter',
      width: OperanceDataColumnWidth(size: 60.w),
      columnHeader: Text(
        'Label Printer',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.labelPrinter,
        );
      },
    ),
    OperanceDataColumn<UserInfoModel>(
      name: 'role',
      width: OperanceDataColumnWidth(size: 80.w),
      columnHeader: Text(
        'Role',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(text: item.role,);
      },
    ),
    OperanceDataColumn<UserInfoModel>(
      name: 'lastLogin',
      width: OperanceDataColumnWidth(size: 60.w),
      columnHeader: Text(
        'Last Login',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(text: item.lastLogin,);
      },
    ),
    OperanceDataColumn<UserInfoModel>(
      name: 'deptName',
      //sortable: true,
      columnHeader: Text(
        'Dept Name',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(text: item.deptName,);
      },
    ),
    OperanceDataColumn<UserInfoModel>(
      name: 'supervisor',
      columnHeader: Text(
        'Supervisor',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.supervisor,
        );
      },
    ),
    OperanceDataColumn<UserInfoModel>(
      name: 'nsSalesRepName',
      columnHeader: Text(
        'NS Sales Rep Name',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.nsSalesRepName,
        );
      },
    ),
    OperanceDataColumn<UserInfoModel>(
      name: 'shift',
      columnHeader: Text(
        'Shift',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.shift,
        );
      },
    ),
    OperanceDataColumn<UserInfoModel>(
      name: 'temp',
      columnHeader: Text(
        'Temp',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.temp,
        );
      },
    ),
    OperanceDataColumn<UserInfoModel>(
      name: 'inventoryCounterSwitch',
      columnHeader: Text(
        'Inventory Counter Switch',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.inventoryCounterSwitch,
        );
      },
    ),
    OperanceDataColumn<UserInfoModel>(
      name: 'employeeCode',
      columnHeader: Text(
        'Employee Code',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.employeeCode,
        );
      },
    ),
    OperanceDataColumn<UserInfoModel>(
      name: 'editedDate',
      width: OperanceDataColumnWidth(size: 60.w),
      columnHeader: Text(
        'Edited Date',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.editedDate,
        );
      },
    ),
    OperanceDataColumn<UserInfoModel>(
      name: 'editedBy',
      columnHeader: Text(
        'Edited By',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.editedBy,
        );
      },
    ),
    OperanceDataColumn<UserInfoModel>(
      name: 'createdDate',
      width: OperanceDataColumnWidth(size: 60.w),
      columnHeader: Text(
        'Created Date',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.createdDate,
        );
      },
    ),
    OperanceDataColumn<UserInfoModel>(
      name: 'createdBy',
      columnHeader: Text(
        'Created By',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.createdBy,
        );
      },
    ),
  ];
}