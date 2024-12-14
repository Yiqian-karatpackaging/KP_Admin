import 'package:kp_admin/src/shipping/user_pick_kpi/user_pick_kpi.dart';

class UserPickKPIPage extends StatefulWidget {

  const UserPickKPIPage({
    super.key,
  });

  @override
  State<UserPickKPIPage> createState() => _CreateState();
}

class _CreateState extends State<UserPickKPIPage> {

  final _filterData = [
    {'id': '', 'title': 'Date From:', 'type': 'calendar', 'value': ''},
    {'id': '', 'title': 'Date To:', 'type': 'calendar', 'value': ''},
    {'id': '', 'title': 'User Name:', 'type': 'select', 'value': ''},
    {'id': '', 'title': 'WH:', 'type': 'select', 'value': ''},
    {'id': '', 'title': 'Exclude 0 Time Duration:', 'type': 'checkBox', 'value': ''},
  ];

  final _menuButtonData = [
    {'id': 'search', 'title': 'Search'},
  ];

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

  Future<(List<UserPickKpiModel>, bool)> _getData() async {
    List<UserPickKpiModel> _orderData = [];
    try {
      UserPickKpiColumn.data.forEach((element) {
        final data = UserPickKpiModel.fromJson(element);
        _orderData.add(data);
      });
      return (_orderData, false);
    } catch (e) {
      return (_orderData, false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
        route: '/user_pick_kpi',
        title: 'Shipping / User Pick KPI',
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TableHeadWidget(
              filterData: _filterData,
              menuButtonData: _menuButtonData,
              callBack: (value) {},
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height - 100,
              child: OperanceDataTable<UserPickKpiModel>(
                showHeader: false,
                columns: UserPickKpiColumn.columns,
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
          ],
        )
    );
  }
  
}