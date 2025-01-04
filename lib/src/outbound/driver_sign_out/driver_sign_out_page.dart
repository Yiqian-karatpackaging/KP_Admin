import 'driver_sign_out.dart';

class DriverSignOutPage extends StatefulWidget {

  const DriverSignOutPage({
    super.key,
  });

  @override
  State<DriverSignOutPage> createState() => _CreateState();
}

class _CreateState extends State<DriverSignOutPage> {

  final _filterData = [
    {'id': '', 'title': 'Ship Date From:', 'type': 'calendar', 'value': ''},
    {'id': '', 'title': 'Ship Date To:', 'type': 'calendar', 'value': ''},

    {'id': '', 'title': 'SO#:', 'type': 'textField', 'value': ''},
    {'id': '', 'title': 'Customer Name:', 'type': 'textField', 'value': ''},

    {'id': '', 'title': 'WH:', 'type': 'select', 'value': ''},
    {'id': '', 'title': 'Status:', 'type': 'select', 'value': ''},

    {'id': '', 'title': 'Completed Orders:', 'type': 'checkBox', 'value': ''},
    {'id': '', 'title': 'Driver Has Arrived:', 'type': 'checkBox', 'value': ''},
  ];

  final _menuButtonData = [
    {'id': 'search', 'title': 'Search'},
    {'id': 'excel', 'title': 'Excel'},
    {'id': 'csv', 'title': 'CSV'},
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

  Future<(List<DriverSignOutModel>, bool)> _getData() async {
    List<DriverSignOutModel> _orderData = [];
    try {
      DriverSignOutColumn.data.forEach((element) {
        final data = DriverSignOutModel.fromJson(element);
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
      route: '/3pl_driver_sign_out',
      title: 'Outbound / 3PL Driver Sign Out',
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
            child: OperanceDataTable<DriverSignOutModel>(
              selectable: true,
              columns: DriverSignOutColumn.columns,
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