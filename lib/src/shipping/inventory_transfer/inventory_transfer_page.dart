import 'package:kp_admin/src/shipping/inventory_transfer/inventory_transfer.dart';

class InventoryTransferPage extends StatefulWidget {
  const InventoryTransferPage({
    super.key,
  });

  @override
  State<InventoryTransferPage> createState() => _CreateState();
}

class _CreateState extends State<InventoryTransferPage> {
  final _filterData = [
    {'id': '', 'title': 'Date From:', 'type': 'calendar', 'value': ''},
    {'id': '', 'title': 'Date To:', 'type': 'calendar', 'value': ''},
    {'id': '', 'title': 'WH:', 'type': 'select', 'value': ''},
    {'id': '', 'title': 'User Name:', 'type': 'select', 'value': ''},
  ];

  final _menuButtonData = [
    {'id': 'search', 'title': 'Search'},
    {'id': 'excel', 'title': 'Excel'},
    {'id': 'csv', 'title': 'CSV'},
    {'id': 'changePallets', 'title': 'Create Inventory Transfer'},
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

  Future<(List<InventoryTransferModel>, bool)> _getData() async {
    List<InventoryTransferModel> _orderData = [];
    try {
      InventoryTransferColumn.data.forEach((element) {
        final data = InventoryTransferModel.fromJson(element);
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
      route: '/inventory_transfer',
      title: 'Shipping / Inventory Transfer',
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TableHeadWidget(filterData: _filterData, menuButtonData: _menuButtonData, callBack: (value) {
            print(value);
          },),
          SizedBox(
            height: MediaQuery.of(context).size.height - 100,
            child: OperanceDataTable<InventoryTransferModel>(
              columns: InventoryTransferColumn.columns,
              emptyStateBuilder: (BuildContext context) => const EmptyWidget(),
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
