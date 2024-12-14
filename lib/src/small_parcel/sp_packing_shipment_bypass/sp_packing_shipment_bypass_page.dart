import 'sp_packing_shipment_bypass.dart';

class SPPackingShipmentBypassPage extends StatefulWidget {

  const SPPackingShipmentBypassPage({
    super.key,
  });

  @override
  State<SPPackingShipmentBypassPage> createState() => _CreateState();
}

class _CreateState extends State<SPPackingShipmentBypassPage> {

  final _filterData = [
    {'id': '', 'title': 'PackStart From:', 'type': 'calendar', 'value': ''},
    {'id': '', 'title': 'PackStart To:', 'type': 'calendar', 'value': ''},
    {'id': '', 'title': 'WH:', 'type': 'select', 'value': ''},
    {'id': '', 'title': 'KP Page:', 'type': 'select', 'value': ''},
    {'id': '', 'title': 'Order Status:', 'type': 'select', 'value': ''},
    {'id': '', 'title': 'SO:', 'type': 'title', 'value': ''},
  ];

  final _menuButtonData = [
    {'id': 'search', 'title': 'Search'},
    {'id': 'excel', 'title': 'Excel'},
    {'id': 'csv', 'title': 'CSV'},
    {'id': 'complete', 'title': 'Complete'},
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

  Future<(List<SPPackingShipmentBypassModel>, bool)> _getData() async {
    List<SPPackingShipmentBypassModel> orderData = [];
    try {
      for (var element in SPPackingShipmentBypassColumn.data) {
        final data = SPPackingShipmentBypassModel.fromJson(element);
        orderData.add(data);
      }
      return (orderData, false);
    } catch (e) {
      return (orderData, false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      route: '/sp_packing_shipment_bypass',
      title: 'Small Parcel / SP Packing Shipment Bypass',
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TableHeadWidget(filterData: _filterData, menuButtonData: _menuButtonData, callBack:(value) {},),
          SizedBox(
            height: MediaQuery.of(context).size.height - 100,
            child: OperanceDataTable<SPPackingShipmentBypassModel>(
              showRowsPerPageOptions: false,
              columns: SPPackingShipmentBypassColumn.columns,
              emptyStateBuilder: (BuildContext context) => EmptyWidget(),
              onFetch: (limit, sort, {bool isInitial = true}) async {
                return _getData();
              },
              loadingStateBuilder: (BuildContext context) {
                return Center(
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