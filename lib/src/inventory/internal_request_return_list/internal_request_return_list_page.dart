import 'internal_request_return_list.dart';

class InternalRequestReturnListPage extends StatefulWidget {

  const InternalRequestReturnListPage({
    super.key,
  });

  @override
  State<InternalRequestReturnListPage> createState() => _CreateState();
}

class _CreateState extends State<InternalRequestReturnListPage> {

  final _filterData = [
    {'id': '', 'title': 'Date From:', 'type': 'calendar', 'value': ''},
    {'id': '', 'title': 'Date To:', 'type': 'calendar', 'value': ''},
    {'id': '', 'title': 'WH:', 'type': 'select', 'value': ''},
    {'id': '', 'title': 'Item Code:', 'type': 'text', 'value': ''},
    {'id': '', 'title': 'Legacy Item:', 'type': 'text', 'value': ''},
    {'id': '', 'title': 'Request #:', 'type': 'text', 'value': ''},
    {'id': '', 'title': 'Adjustment Completed:', 'type': 'checkBox', 'value': ''},
  ];

  final _menuButtonData = [
    {'id': 'search', 'title': 'Search'},
    {'id': 'addItem', 'title': 'Add Item'},
    {'id': 'createNSAdjustment', 'title': 'Create NS Adjustment'},
    {'id': 'clearAdjustment', 'title': 'Clear Adjustment'},
    {'id': 'delete', 'title': 'Delete'},
    {'id': 'changeMainMemo', 'title': 'Change Main Memo'},
  ];

  final List<InternalRequestReturnListExpansionModel> _expansionData = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    InternalRequestReturnListColumn.data.forEach((element) {
      _expansionData.add(InternalRequestReturnListExpansionModel.fromJson(element));
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  Future<(List<InternalRequestReturnListModel>, bool)> _getData() async {
    List<InternalRequestReturnListModel> _orderData = [];
    try {
      InternalRequestReturnListColumn.data.forEach((element) {
        final data = InternalRequestReturnListModel.fromJson(element);
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
      route: '/internal_request_return_list',
      title: 'Inventory / Internal Request Return List',
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
            child: OperanceDataTable<InternalRequestReturnListModel>(
              showRowsPerPageOptions: false,
              selectable: true,
              expandable: true,
              columns: InternalRequestReturnListColumn.columns,
              emptyStateBuilder: (BuildContext context) => EmptyWidget(),
              expansionBuilder: (value) => ExpansionTableWidget(data: _expansionData, column: InternalRequestReturnListExpansionColumn.columns),
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