import 'bin_count_history.dart';

class BinCountHistoryPage extends StatefulWidget {

  const BinCountHistoryPage({
    super.key,
  });

  @override
  State<BinCountHistoryPage> createState() => _CreateState();
}

class _CreateState extends State<BinCountHistoryPage> {

  final _filterData = [
    {'id': '', 'title': 'Count From:', 'type': 'calendar', 'value': ''},
    {'id': '', 'title': 'Count To:', 'type': 'calendar', 'value': ''},
    {'id': '', 'title': 'WH:', 'type': 'select', 'value': ''},
    {'id': '', 'title': 'Added By:', 'type': 'text', 'value': ''},
    {'id': '', 'title': 'Final Count Only:', 'type': 'checkBox', 'value': ''},
  ];

  final _menuButtonData = [{'id': 'search', 'title': 'Search', },{'id': 'excel', 'title': 'Excel', },{'id': 'csv', 'title': 'CSV', },];

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

  Future<(List<BinCountHistoryModel>, bool)> _getData() async {
    List<BinCountHistoryModel> _orderData = [];
    try {
      BinCountHistoryColumn.data.forEach((element) {
        final data = BinCountHistoryModel.fromJson(element);
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
      route: '/bin_count_history',
      title: 'Inventory / Bin Count History',
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TableHeadWidget(menuButtonData: _menuButtonData, filterData: _filterData, callBack: (value){},),
          SizedBox(
            height: usableHeight(context),
            child: OperanceDataTable<BinCountHistoryModel>(
              showRowsPerPageOptions: false,
              columns: BinCountHistoryColumn.columns,
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