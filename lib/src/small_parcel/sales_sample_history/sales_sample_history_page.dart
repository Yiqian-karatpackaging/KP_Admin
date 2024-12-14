import 'sales_sample_history.dart';

class SalesSampleHistoryPage extends StatefulWidget {
  const SalesSampleHistoryPage({
    super.key,
  });

  @override
  State<SalesSampleHistoryPage> createState() => _CreateState();
}

class _CreateState extends State<SalesSampleHistoryPage> {
  final _filterData = [
    {'id': '', 'title': 'PackStart From:', 'type': 'calendar', 'value': ''},
    {'id': '', 'title': 'PackStart To:', 'type': 'calendar', 'value': ''},
    {'id': '', 'title': 'WH:', 'type': 'select', 'value': ''},
    {'id': '', 'title': 'Order Status:', 'type': 'select', 'value': ''},
    {'id': '', 'title': 'Ship Status:', 'type': 'select', 'value': ''},
    {'id': '', 'title': 'Box Type:', 'type': 'select', 'value': ''},
    {'id': '', 'title': 'Invoice#:', 'type': 'title', 'value': ''},
    {'id': '', 'title': 'Carrier:', 'type': 'title', 'value': ''},
    {'id': '', 'title': 'Track No:', 'type': 'title', 'value': ''},
    {'id': '', 'title': 'Customer Name:', 'type': 'title', 'value': ''},
    {'id': '', 'title': 'Weight Min:', 'type': 'title', 'value': ''},
    {'id': '', 'title': 'Weight Max:', 'type': 'title', 'value': ''},
    {'id': '', 'title': 'Item/Legacy:', 'type': 'title', 'value': ''},
    {'id': '', 'title': 'No Box:', 'type': 'checkBox', 'value': ''},
    {'id': '', 'title': 'No Shipment:', 'type': 'checkBox', 'value': ''},
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

  Future<(List<SalesSampleHistoryModel>, bool)> _getData() async {
    List<SalesSampleHistoryModel> orderData = [];
    try {
      for (var element in SalesSampleHistoryColumn.data) {
        final data = SalesSampleHistoryModel.fromJson(element);
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
      route: '/sales_sample_history',
      title: 'Small Parcel / Sales Sample History',
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          TableHeadWidget(
            filterData: _filterData,
            menuButtonData: _menuButtonData,
            callBack: (value) {},
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height - 100,
            child: OperanceDataTable<SalesSampleHistoryModel>(
              showRowsPerPageOptions: false,
              columns: SalesSampleHistoryColumn.columns,
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
