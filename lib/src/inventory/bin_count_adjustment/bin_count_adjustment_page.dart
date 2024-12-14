import 'bin_count_adjustment.dart';

class BinCountAdjustmentPage extends StatefulWidget {

  const BinCountAdjustmentPage({
    super.key,
  });

  @override
  State<BinCountAdjustmentPage> createState() => _CreateState();
}

class _CreateState extends State<BinCountAdjustmentPage> {

  final _filterData = [
    {'id': '', 'title': 'Date From:', 'type': 'calendar', 'value': ''},
    {'id': '', 'title': 'Date To:', 'type': 'calendar', 'value': ''},
    {'id': '', 'title': 'WH:', 'type': 'select', 'value': ''},
    {'id': '', 'title': 'Status:', 'type': 'select', 'value': ''},
    {'id': '', 'title': 'Item Code:', 'type': 'text', 'value': ''},
    {'id': '', 'title': 'Legacy Item:', 'type': 'text', 'value': ''},
    {'id': '', 'title': 'LPN#:', 'type': 'text', 'value': ''},
  ];

  final _menuButtonData = [
    {'id': 'search', 'title': 'Search'},
    {'id': 'exportAll', 'title': 'Export All'},
    {'id': 'createCycleCountID', 'title': 'Create Cycle Count ID'},
  ];
  
  final List<BinCountAdjustmentExpansionModel> _expansionData = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    BinCountAdjustmentColumn.data.forEach((element) {
      final data = BinCountAdjustmentExpansionModel.fromJson(element);
      _expansionData.add(data);
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  Future<(List<BinCountAdjustmentModel>, bool)> _getData() async {
    List<BinCountAdjustmentModel> _orderData = [];
    try {
      BinCountAdjustmentColumn.data.forEach((element) {
        final data = BinCountAdjustmentModel.fromJson(element);
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
      route: '/bin_count_adjustment',
      title: 'Inventory / Bin Count Adjustment',
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
            child: OperanceDataTable<BinCountAdjustmentModel>(
              showRowsPerPageOptions: false,
              selectable: true,
              expandable: true,
              columns: BinCountAdjustmentColumn.columns,
              emptyStateBuilder: (BuildContext context) => EmptyWidget(),
              expansionBuilder: (value) => ExpansionTableWidget(data: _expansionData, column: BinCountAdjustmentExpansionColumn.columns),
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