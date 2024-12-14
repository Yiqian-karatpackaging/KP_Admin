import 'manage_permissions.dart';

class ManagePermissionsPage extends StatefulWidget {

  const ManagePermissionsPage({
    super.key,
  });

  @override
  State<ManagePermissionsPage> createState() => _CreateState();
}

class _CreateState extends State<ManagePermissionsPage> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  Future<(List<ManagePermissionsModel>, bool)> _getData() async {
    List<ManagePermissionsModel> _orderData = [];
    try {
      for (var element in ManagePermissionsColumn.data) {
        final data = ManagePermissionsModel.fromJson(element);
        _orderData.add(data);
      }
      return (_orderData, false);
    } catch (e) {
      return (_orderData, false);
    }
  }

  void _columnMenuClick(String type) {
    if (type == 'edit' || type == 'add') {
      EditRoles.show(context, type == 'add' ? 'Add Roles' : 'Edit Roles', (){});
    } else if (type == 'delete') {
      List<RoleUserModel> _data = [];
      for (var element in RoleUserColumn.data) {
        final data = RoleUserModel.fromJson(element);
        _data.add(data);
      }
      RoleUser.show<RoleUserModel>(context, 'User List in This Role', _data, RoleUserColumn.columns);
    }
  }

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      route: '/manage_permissions',
      title: 'System Configuration / Manage Permissions',
      body: Container(
        alignment: Alignment.topLeft,
        padding: const EdgeInsets.all(10),
        child: SizedBox(
          height: MediaQuery.of(context).size.height - 100,
          child: OperanceDataTable<ManagePermissionsModel>(
            showRowsPerPageOptions: true,
            showHeader: true,
            columns: ManagePermissionsColumn.columns((type) => _columnMenuClick(type)),
            decoration: OperanceDataDecoration(sizes: OperanceDataSizes(rowHeight: 60.h)),
            header: [
              SearchButtonWidget(title: 'Add Roles', onTap: () => _columnMenuClick('add')),
            ],
            emptyStateBuilder: (BuildContext context) => const EmptyWidget(),
            onFetch: (limit, sort, {bool isInitial = true}) async {
              return _getData();
            },
            loadingStateBuilder: (BuildContext context) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            },
          ),
        ),
      ),
    );
  }
}
