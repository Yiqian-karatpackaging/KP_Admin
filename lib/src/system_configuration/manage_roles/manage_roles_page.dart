import 'manage_roles.dart';

class ManageRolesPage extends StatefulWidget {

  const ManageRolesPage({
    super.key,
  });

  @override
  State<ManageRolesPage> createState() => _CreateState();
}

class _CreateState extends State<ManageRolesPage> {

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

  Future<(List<ManageRoleModel>, bool)> _getData() async {
    List<ManageRoleModel> _orderData = [];
    try {
      for (var element in ManageRoleColumn.data) {
        final data = ManageRoleModel.fromJson(element);
        _orderData.add(data);
      }
      return (_orderData, false);
    } catch (e) {
      return (_orderData, false);
    }
  }

  void _columnMenuClick(String type, {ManageRoleModel? info}) {
    if (type == 'edit' || type == 'add') {
      // EditRoles.show(context, type == 'add' ? 'Add Role Group' : 'Edit Roles(${info?.roleGroupName})', (){});
      // Navigator.pushNamed(context, '/edit_roles');
    } else if (type == 'delete') {
      // List<RoleUserModel> _data = [];
      // for (var element in RoleUserColumn.data) {
      //   final data = RoleUserModel.fromJson(element);
      //   _data.add(data);
      // }
      // RoleUser.show<RoleUserModel>(context, 'User List in This Role', _data, RoleUserColumn.columns);
    }
  }

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      route: '/manage_roles',
      title: 'System Configuration / Manage Roles',
      body: Container(
        alignment: Alignment.topLeft,
        padding: const EdgeInsets.all(10),
        child: SizedBox(
          height: MediaQuery.of(context).size.height - 100,
          child: OperanceDataTable<ManageRoleModel>(
            showRowsPerPageOptions: true,
            showHeader: true,
            columns: ManageRoleColumn.columns((type, info) => _columnMenuClick(type, info: info)),
            decoration: OperanceDataDecoration(sizes: OperanceDataSizes(rowHeight: 60.h)),
            header: [
              SearchButtonWidget(title: 'Export All', onTap: () => _columnMenuClick('add')),
              SearchButtonWidget(title: 'Add Role Group', onTap: () => _columnMenuClick('add')),
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