import 'order_schedule.dart';

class OrderSchedulePage extends StatefulWidget {

  const OrderSchedulePage({
    super.key,
  });

  @override
  State<OrderSchedulePage> createState() => _CreateState();
}

class _CreateState extends State<OrderSchedulePage> {

  final _filterData = [
    {'id': '', 'title': 'Ship Date From:', 'type': 'calendar', 'value': ''},
    {'id': '', 'title': 'Ship Date To:', 'type': 'calendar', 'value': ''},
    {'id': '', 'title': 'Appointment Date From:', 'type': 'calendar', 'value': ''},
    {'id': '', 'title': 'Appointment Date To:', 'type': 'calendar', 'value': ''},

    {'id': '', 'title': 'SO#:', 'type': 'textField', 'value': ''},
    {'id': '', 'title': 'Customer:', 'type': 'textField', 'value': ''},
    {'id': '', 'title': 'Ship Via:', 'type': 'textField', 'value': ''},

    {'id': '', 'title': 'WH:', 'type': 'select', 'value': ''},
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

  Future<(List<OrderScheduleModel>, bool)> _getData() async {
    List<OrderScheduleModel> _orderData = [];
    try {
      OrderScheduleColumn.data.forEach((element) {
        final data = OrderScheduleModel.fromJson(element);
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
      route: '/order_schedule',
      title: 'Outbound / Order Schedule',
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
            child: OperanceDataTable<OrderScheduleModel>(
              columns: OrderScheduleColumn.columns,
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