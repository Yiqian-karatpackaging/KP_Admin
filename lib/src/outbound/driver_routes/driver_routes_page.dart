import 'driver_routes.dart';

class DriverRoutesPage extends StatefulWidget {

  const DriverRoutesPage({
    super.key,
  });

  @override
  State<DriverRoutesPage> createState() => _CreateState();
}

class _CreateState extends State<DriverRoutesPage> {

  final _filterData = [
    {'id': '', 'title': 'Ship Date From:', 'type': 'calendar', 'value': ''},
    {'id': '', 'title': 'Ship Date To:', 'type': 'calendar', 'value': ''},

    {'id': '', 'title': 'SO Code:', 'type': 'textField', 'value': ''},
    {'id': '', 'title': 'Customer Name:', 'type': 'textField', 'value': ''},
    {'id': '', 'title': 'Item Code:', 'type': 'textField', 'value': ''},
    {'id': '', 'title': 'Legacy Item:', 'type': 'textField', 'value': ''},
    {'id': '', 'title': 'Route No:', 'type': 'textField', 'value': ''},

    {'id': '', 'title': 'WH:', 'type': 'select', 'value': ''},
    {'id': '', 'title': 'Status:', 'type': 'select', 'value': ''},

    {'id': '', 'title': 'No Priority:', 'type': 'checkBox', 'value': ''},
    {'id': '', 'title': 'Complete:', 'type': 'checkBox', 'value': ''},
  ];

  final _menuButtonData = [
    {'id': 'search', 'title': 'Search'},
    {'id': 'excel', 'title': 'Excel'},
    {'id': 'csv', 'title': 'CSV'},
    {'id': 'startRoute', 'title': 'Start Route'},
    {'id': 'arriveAtStop', 'title': 'Arrive at Stop'},
    {'id': 'customerSignature', 'title': 'Customer Signature'},
    {'id': 'leaveStop', 'title': 'Leave Stop'},
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

  Future<(List<DriverRoutesModel>, bool)> _getData() async {
    List<DriverRoutesModel> _orderData = [];
    try {
      DriverRoutesColumn.data.forEach((element) {
        final data = DriverRoutesModel.fromJson(element);
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
      route: '/driver_routes',
      title: 'Outbound / Driver Routes',
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TableHeadWidget(
            menuButtonData: _menuButtonData,
            filterData: _filterData,
            callBack: (value) {},
          ),
          SizedBox(
            height: usableHeight(context),
            child: OperanceDataTable<DriverRoutesModel>(
              selectable: true,
              columns: DriverRoutesColumn.columns,
              emptyStateBuilder: (BuildContext context) => EmptyWidget(),
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
      ),
    );
  }
}