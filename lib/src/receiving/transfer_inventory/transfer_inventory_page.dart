import 'transfer_inventory.dart';

class TransferInventoryPage extends StatefulWidget {

  const TransferInventoryPage({
    super.key,
  });

  @override
  State<TransferInventoryPage> createState() => _CreateState();
}

class _CreateState extends State<TransferInventoryPage> {

  final _filterData = [
    {'id': '', 'title': 'Tran Date From:', 'type': 'calendar', 'value': ''},
    {'id': '', 'title': 'Tran Date To:', 'type': 'calendar', 'value': ''},
    {'id': '', 'title': 'Item Code:', 'type': 'textField', 'value': ''},
    {'id': '', 'title': 'Legacy Item:', 'type': 'textField', 'value': ''},
    {'id': '', 'title': 'TO#:', 'type': 'textField', 'value': ''},
    {'id': '', 'title': 'From WH:', 'type': 'select', 'value': ''},
    {'id': '', 'title': 'To WH:', 'type': 'select', 'value': ''},
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

  Future<(List<TransferInventoryModel>, bool)> _getData() async {
    List<TransferInventoryModel> _orderData = [];
    try {
      TransferInventoryColumn.data.forEach((element) {
        final data = TransferInventoryModel.fromJson(element);
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
      route: '/transfer_inventory',
      title: 'Receiving / Transfer Inventory',
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
            child: OperanceDataTable<TransferInventoryModel>(
              columns: TransferInventoryColumn.columns,
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