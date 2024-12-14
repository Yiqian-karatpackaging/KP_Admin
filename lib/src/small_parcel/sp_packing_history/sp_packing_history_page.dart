import 'sp_packing_history.dart';

class SPPackingHistoryPage extends StatefulWidget {

  const SPPackingHistoryPage({
    super.key,
  });

  @override
  State<SPPackingHistoryPage> createState() => _CreateState();
}

class _CreateState extends State<SPPackingHistoryPage> {

  final _filterData = [
    {'id': '', 'title': 'PackStart From:', 'type': 'calendar', 'value': ''},
    {'id': '', 'title': 'PackStart To:', 'type': 'calendar', 'value': ''},
    {'id': '', 'title': 'Fulfillment From:', 'type': 'calendar', 'value': ''},
    {'id': '', 'title': 'Fulfillment To:', 'type': 'calendar', 'value': ''},
    {'id': '', 'title': 'WH:', 'type': 'select', 'value': ''},
    {'id': '', 'title': 'Order Status:', 'type': 'select', 'value': ''},
    {'id': '', 'title': 'KP Page:', 'type': 'select', 'value': ''},
    {'id': '', 'title': 'Ship Status:', 'type': 'select', 'value': ''},
    {'id': '', 'title': 'Box Type:', 'type': 'select', 'value': ''},
    {'id': '', 'title': 'SO:', 'type': 'title', 'value': ''},
    {'id': '', 'title': 'BP:', 'type': 'title', 'value': ''},
    {'id': '', 'title': 'PO:', 'type': 'title', 'value': ''},
    {'id': '', 'title': 'Carrier:', 'type': 'title', 'value': ''},
    {'id': '', 'title': 'Track No:', 'type': 'title', 'value': ''},
    {'id': '', 'title': 'Customer Name:', 'type': 'title', 'value': ''},
    {'id': '', 'title': 'Weight Min:', 'type': 'title', 'value': ''},
    {'id': '', 'title': 'Weight Max:', 'type': 'title', 'value': ''},
    {'id': '', 'title': 'Item/Legacy:', 'type': 'title', 'value': ''},
    {'id': '', 'title': 'Signature Cost Min:', 'type': 'title', 'value': ''},
    {'id': '', 'title': 'Signature Cost Max:', 'type': 'title', 'value': ''},
    {'id': '', 'title': 'Declared Value Min:', 'type': 'title', 'value': ''},
    {'id': '', 'title': 'Declared Value Max:', 'type': 'title', 'value': ''},
    {'id': '', 'title': 'No Box:', 'type': 'checkBox', 'value': ''},
    {'id': '', 'title': 'No Shipment:', 'type': 'checkBox', 'value': ''},
    {'id': '', 'title': 'Fulfillment By:', 'type': 'checkBox', 'value': ''},
  ];

  final _menuButtonData = [
    {'id': 'search', 'title': 'Search'},
    {'id': 'excel', 'title': 'Excel'},
    {'id': 'csv', 'title': 'CSV'},
    {'id': 'exportAll', 'title': 'Export All'},
    {'id': 'downloadTemplate', 'title': 'Download Template'},
    {'id': 'importTemplate', 'title': 'Import Template'},
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

  Future<(List<SPPackingHistoryModel>, bool)> _getData() async {
    List<SPPackingHistoryModel> orderData = [];
    try {
      for (var element in SPPackingHistoryColumn.data) {
        final data = SPPackingHistoryModel.fromJson(element);
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
      route: '/sp_packing_history',
      title: 'Small Parcel / SP Packing History',
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TableHeadWidget(filterData: _filterData, menuButtonData: _menuButtonData, callBack:(value) {},),
          SizedBox(
            height: MediaQuery.of(context).size.height - 100,
            child: OperanceDataTable<SPPackingHistoryModel>(
              showRowsPerPageOptions: false,
              columns: SPPackingHistoryColumn.columns,
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