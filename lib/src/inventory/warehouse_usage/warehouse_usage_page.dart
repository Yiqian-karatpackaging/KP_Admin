import 'warehouse_usage.dart';

class WarehouseUsagePage extends StatefulWidget {

  const WarehouseUsagePage({
    super.key,
  });

  @override
  State<WarehouseUsagePage> createState() => _CreateState();
}

class _CreateState extends State<WarehouseUsagePage> {

  final _filterData = [
    {'id': '', 'title': 'Date From:', 'type': 'calendar', 'value': ''},
    {'id': '', 'title': 'Date To:', 'type': 'calendar', 'value': ''},
    {'id': '', 'title': 'WH:', 'type': 'select', 'value': ''},
    {'id': '', 'title': 'Class:', 'type': 'select', 'value': ''},
    {'id': '', 'title': 'Item Code:', 'type': 'text', 'value': ''},
    {'id': '', 'title': 'Legacy Item:', 'type': 'text', 'value': ''},
    {'id': '', 'title': 'NS Adjust #:', 'type': 'text', 'value': ''},
    {'id': '', 'title': 'Request #:', 'type': 'text', 'value': ''},
    {'id': '', 'title': 'Adjustment Completed:', 'type': 'checkBox', 'value': ''},
    {'id': '', 'title': 'Only User:', 'type': 'checkBox', 'value': ''},
  ];

  final _menuButtonData = [
    {'id': 'search', 'title': 'Search'},
    {'id': 'createNSAdjustment', 'title': 'Create NS Adjustment'},
    {'id': 'changeMainMemo', 'title': 'Change Main Memo'},
    {'id': 'exportAll', 'title': 'Export All'},
    {'id': 'delete', 'title': 'Delete'},
    {'id': 'batchAssign', 'title': 'Batch Assign'},
  ];

  final List<WarehouseUsageExpansionModel> _expansionData = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    WarehouseUsageColumn.data.forEach((element) {
      _expansionData.add(WarehouseUsageExpansionModel.fromJson(element));
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  Future<(List<WarehouseUsageModel>, bool)> _getData() async {
    List<WarehouseUsageModel> _orderData = [];
    try {
      WarehouseUsageColumn.data.forEach((element) {
        final data = WarehouseUsageModel.fromJson(element);
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
      route: '/warehouse_usage',
      title: 'Inventory / Warehouse Usage',
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
            child: OperanceDataTable<WarehouseUsageModel>(
              showRowsPerPageOptions: false,
              selectable: true,
              expandable: true,
              columns: WarehouseUsageColumn.columns,
              emptyStateBuilder: (BuildContext context) => EmptyWidget(),
              expansionBuilder: (value) => ExpansionTableWidget(data: _expansionData, column: WarehouseUsageExpansionColumn.columns),
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