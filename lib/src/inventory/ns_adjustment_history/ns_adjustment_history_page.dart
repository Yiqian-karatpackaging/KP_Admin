import 'ns_adjustment_history.dart';

class NSAdjustmentHistoryPage extends StatefulWidget {

  const NSAdjustmentHistoryPage({
    super.key,
  });

  @override
  State<NSAdjustmentHistoryPage> createState() => _CreateState();
}

class _CreateState extends State<NSAdjustmentHistoryPage> {

  final _filterData = [
    {'id': '', 'title': 'Date From:', 'type': 'calendar', 'value': ''},
    {'id': '', 'title': 'Date To:', 'type': 'calendar', 'value': ''},
    {'id': '', 'title': 'WH:', 'type': 'select', 'value': ''},
    {'id': '', 'title': 'Item Code:', 'type': 'text', 'value': ''},
    {'id': '', 'title': 'Legacy Item:', 'type': 'text', 'value': ''},
  ];

  final _menuButtonData = [
    {'id': 'search', 'title': 'Search'},
    {'id': 'exportAll', 'title': 'Export All'},
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

  Future<(List<NSAdjustmentHistoryModel>, bool)> _getData() async {
    List<NSAdjustmentHistoryModel> _orderData = [];
    try {
      NSAdjustmentHistoryColumn.data.forEach((element) {
        final data = NSAdjustmentHistoryModel.fromJson(element);
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
      route: '/ns_adjustment_history',
      title: 'Inventory / NS Adjustment History',
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
            child: OperanceDataTable<NSAdjustmentHistoryModel>(
              showRowsPerPageOptions: false,
              columns: NSAdjustmentHistoryColumn.columns,
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