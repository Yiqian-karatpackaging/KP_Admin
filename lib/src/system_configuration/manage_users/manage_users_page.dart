import 'manage_users.dart';

class ManageUsersPage extends StatefulWidget {

  const ManageUsersPage({
    super.key,
  });

  @override
  State<ManageUsersPage> createState() => _CreateState();
}

class _CreateState extends State<ManageUsersPage> {

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

  Future<(List<UserInfoModel>, bool)> _getData() async {
    List<UserInfoModel> _orderData = [];
    try {
      for (var element in UserListColumn.data) {
        final data = UserInfoModel.fromJson(element);
        _orderData.add(data);
      }
      return (_orderData, false);
    } catch (e) {
      return (_orderData, false);
    }
  }

  Future<void> _headButtonClick(String type) async {
    switch(type){
      case 'search':
        EasyLoading.showToast("search data");
        break;
      case 'excel':
        await saveFile();
        break;
      case 'csv':
        await saveFile();
        break;
      case 'pdf':
        await saveFile();
        break;
      case 'usersTemplate':
        final result = await selectFile();
        break;
      case 'uploadTemplate':
        final result = await selectFile();
        break;
      case 'uploadProfilePic':
        final result = await selectFile();
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      route: '/manage_users',
      title: 'System Configuration / Manage Users',
      body: Column(
        children: [
          HeadWidget((value) => _headButtonClick(value)),
          SizedBox(
            height: MediaQuery.of(context).size.height - 100,
            child: OperanceDataTable<UserInfoModel>(
              showRowsPerPageOptions: true,
              columns: UserListColumn.columns,
              decoration: OperanceDataDecoration(sizes: OperanceDataSizes(rowHeight: 60.h)),
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
          )
        ],
      ),
    );
  }
}
