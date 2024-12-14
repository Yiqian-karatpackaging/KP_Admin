import 'bpn_history.dart';

class BPNHistoryPage extends StatefulWidget {

  const BPNHistoryPage({
    super.key,
  });

  @override
  State<BPNHistoryPage> createState() => _CreateState();
}

class _CreateState extends State<BPNHistoryPage> {

  final _filterData = [
    {'id': '', 'title': 'Date From:', 'type': 'calendar', 'value': ''},
    {'id': '', 'title': 'Date To:', 'type': 'calendar', 'value': ''},
    {'id': '', 'title': 'WH:', 'type': 'select', 'value': ''},
    {'id': '', 'title': 'BPN#:', 'type': 'text', 'value': ''},
    {'id': '', 'title': 'BPN Bin:', 'type': 'text', 'value': ''},
  ];

  final _menuButtonData = [
    {'id': 'search', 'title': 'Search'},
    {'id': 'excel', 'title': 'Excel'},
    {'id': 'excelAll', 'title': 'Excel All'},
  ];

  final List<BPNHistoryExpansionModel> _expansionData = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _getExpansionData();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  void _getExpansionData() {
    BPNHistoryColumn.data.forEach((element) {
      final data = BPNHistoryExpansionModel.fromJson(element);
      _expansionData.add(data);
    });
  }

  Future<(List<BPNHistoryModel>, bool)> _getData() async {
    List<BPNHistoryModel> _orderData = [];
    try {
      BPNHistoryColumn.data.forEach((element) {
        final data = BPNHistoryModel.fromJson(element);
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
      route: '/bpn_history',
      title: 'Inventory / BPN History',
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
            child: OperanceDataTable<BPNHistoryModel>(
              showRowsPerPageOptions: false,
              expandable: true,
              columns: BPNHistoryColumn.columns,
              expansionBuilder: (value) => ExpansionTableWidget(data: _expansionData, column: BPNHistoryExpansionColumn.columns),
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