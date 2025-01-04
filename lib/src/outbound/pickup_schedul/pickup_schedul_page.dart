import 'pickup_schedul.dart';

class PickupSchedulPage extends StatefulWidget {

  const PickupSchedulPage({
    super.key,
  });

  @override
  State<PickupSchedulPage> createState() => _CreateState();
}

class _CreateState extends State<PickupSchedulPage> {

  final _filterData = [
    {'id': '', 'title': 'Date From:', 'type': 'calendar', 'value': ''},
    {'id': '', 'title': 'Date To:', 'type': 'calendar', 'value': ''},

    {'id': '', 'title': 'SO#:', 'type': 'textField', 'value': ''},
    {'id': '', 'title': 'Customer:', 'type': 'textField', 'value': ''},
    {'id': '', 'title': 'Pallets:', 'type': 'textField', 'value': ''},

    {'id': '', 'title': 'WH:', 'type': 'select', 'value': ''},
    {'id': '', 'title': 'Weekday:', 'type': 'select', 'value': ''},
    {'id': '', 'title': 'Trucking Company:', 'type': 'select', 'value': ''},
  ];

  final _menuButtonData = [
    {'id': 'search', 'title': 'Search'},
    {'id': 'addSchedule', 'title': 'Add Schedule'},
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

  Future<(List<PickupSchedulModel>, bool)> _getData() async {
    List<PickupSchedulModel> _orderData = [];
    try {
      PickupSchedulColumn.data.forEach((element) {
        final data = PickupSchedulModel.fromJson(element);
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
      route: '/3p_pickup_schedul',
      title: 'Outbound / 3P Pickup Schedul',
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
            child: OperanceDataTable<PickupSchedulModel>(
              columns: PickupSchedulColumn.columns,
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