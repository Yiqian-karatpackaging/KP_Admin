import 'cycle_count_history.dart';

class CycleCountHistoryPage extends StatefulWidget {

  const CycleCountHistoryPage({
    super.key,
  });

  @override
  State<CycleCountHistoryPage> createState() => _CreateState();
}

class _CreateState extends State<CycleCountHistoryPage> {

  final _filterData = [
    {'id': '', 'title': 'Date From:', 'type': 'calendar', 'value': ''},
    {'id': '', 'title': 'Date To:', 'type': 'calendar', 'value': ''},
    {'id': '', 'title': 'WH:', 'type': 'select', 'value': ''},
    {'id': '', 'title': 'Cycle Count ID:', 'type': 'text', 'value': ''},
    {'id': '', 'title': 'Bin#:', 'type': 'text', 'value': ''},
    {'id': '', 'title': 'Item Code:', 'type': 'text', 'value': ''},
    {'id': '', 'title': 'Recount Variance:', 'type': 'checkBox', 'value': ''},
  ];

  final _menuButtonData = [
    {'id': 'search', 'title': 'Search'},
    {'id': 'excel', 'title': 'Excel'},
    {'id': 'delete', 'title': 'Delete'},
    {'id': 'batchAssign', 'title': 'Batch Assign'},
    {'id': 'adjustment', 'title': 'Adjustment'},
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

  Future<(List<CycleCountHistoryModel>, bool)> _getData() async {
    List<CycleCountHistoryModel> _orderData = [];
    try {
      CycleCountHistoryColumn.data.forEach((element) {
        final data = CycleCountHistoryModel.fromJson(element);
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
      route: '/cycle_count_history',
      title: 'Inventory / Cycle Count History',
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
            child: OperanceDataTable<CycleCountHistoryModel>(
              showRowsPerPageOptions: false,
              selectable: true,
              columns: CycleCountHistoryColumn.columns,
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