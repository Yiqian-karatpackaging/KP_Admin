import 'delivery_orders.dart';

class DeliveryOrdersPage extends StatefulWidget {

  const DeliveryOrdersPage({
    super.key,
  });

  @override
  State<DeliveryOrdersPage> createState() => _CreateState();
}

class _CreateState extends State<DeliveryOrdersPage> {

  final _filterData = [
    {'id': '', 'title': 'Date From:', 'type': 'calendar', 'value': ''},
    {'id': '', 'title': 'Date To:', 'type': 'calendar', 'value': ''},

    {'id': '', 'title': 'Ref#:', 'type': 'textField', 'value': ''},
  ];

  final _menuButtonData = [
    {'id': 'search', 'title': 'Search'},
    {'id': 'addNew', 'title': 'Add New'},
    {'id': 'snycService Items', 'title': 'Snyc Service Items'},
    {'id': 'createInvoice', 'title': 'Create Invoice'},
    {'id': 'delete', 'title': 'Delete'},
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

  Future<(List<DeliveryOrdersModel>, bool)> _getData() async {
    List<DeliveryOrdersModel> _orderData = [];
    try {
      DeliveryOrdersColumn.data.forEach((element) {
        final data = DeliveryOrdersModel.fromJson(element);
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
      route: '/delivery_orders',
      title: 'Outbound / Delivery Orders',
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
            child: OperanceDataTable<DeliveryOrdersModel>(
              selectable: true,
              columns: DeliveryOrdersColumn.columns,
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