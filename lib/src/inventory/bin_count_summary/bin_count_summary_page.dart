import 'bin_count_summary.dart';

class BinCountSummaryPage extends StatefulWidget {
  const BinCountSummaryPage({
    super.key,
  });

  @override
  State<BinCountSummaryPage> createState() => _CreateState();
}

class _CreateState extends State<BinCountSummaryPage> {
  final _filterData = [
    {'id': '', 'title': 'Count From:', 'type': 'calendar', 'value': ''},
    {'id': '', 'title': 'Count To:', 'type': 'calendar', 'value': ''},
    {'id': '', 'title': 'WH:', 'type': 'select', 'value': ''},
    {'id': '', 'title': 'Inventory Type:', 'type': 'select', 'value': ''},
    {'id': '', 'title': 'Amt Diff>=:', 'type': 'text', 'value': ''},
    {'id': '', 'title': 'Qty Diff>=:', 'type': 'text', 'value': ''},
    {'id': '', 'title': 'Qty Diff (%)>=:', 'type': 'text', 'value': ''},
    {'id': '', 'title': 'Item Code:', 'type': 'text', 'value': ''},
    {'id': '', 'title': 'Legacy Item:', 'type': 'text', 'value': ''},
    {'id': '', 'title': 'Cycle Count ID:', 'type': 'text', 'value': ''},
    {'id': '', 'title': 'Adjustment:', 'type': 'checkBox', 'value': ''},
    {'id': '', 'title': 'Adjust Review:', 'type': 'checkBox', 'value': ''},
    {'id': '', 'title': 'Bin Counted:', 'type': 'checkBox', 'value': ''},
    {'id': '', 'title': 'High Valuation:', 'type': 'checkBox', 'value': ''},
    {'id': '', 'title': 'Count Qty:', 'type': 'checkBox', 'value': ''},
    {'id': '', 'title': 'Non Submitted:', 'type': 'checkBox', 'value': ''},
    {'id': '', 'title': 'No NS 0 QTY:', 'type': 'checkBox', 'value': ''},
    {'id': '', 'title': 'No KP 0 QTY:', 'type': 'checkBox', 'value': ''},
  ];

  final _menuButtonData = [
    {'id': 'search', 'title': 'Search'},
    {'id': 'excel', 'title': 'Excel'},
    {'id': 'Add to Adjust Review', 'title': 'Add to Adjust Review'},
    {'id': 'Sync OHQty', 'title': 'Sync OHQty'},
    {'id': 'Undo All Adjustment', 'title': 'Undo All Adjustment'},
    {'id': 'Clear Adjust Review', 'title': 'Clear Adjust Review'},
    {'id': 'Export All', 'title': 'Export All'},
    {'id': 'Clear Highlights', 'title': 'Clear Highlights'},
  ];

  final List<BinCountSummaryExpansionModel> _expansionData = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    BinCountSummaryExpansionColumn.data.forEach((element) {
      _expansionData.add(BinCountSummaryExpansionModel.fromJson(element));
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  Future<(List<BinCountSummaryModel>, bool)> _getData() async {
    List<BinCountSummaryModel> _orderData = [];
    try {
      BinCountSummaryColumn.data.forEach((element) {
        final data = BinCountSummaryModel.fromJson(element);
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
      route: '/bin_count_summary',
      title: 'Inventory / Bin Count Summary',
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
            child: OperanceDataTable<BinCountSummaryModel>(
              showRowsPerPageOptions: false,
              selectable: true,
              expandable: true,
              columns: BinCountSummaryColumn.columns,
              emptyStateBuilder: (BuildContext context) => EmptyWidget(),
              expansionBuilder: (value) => ExpansionTableWidget(data: _expansionData, column: BinCountSummaryExpansionColumn.columns),
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
