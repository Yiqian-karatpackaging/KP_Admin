import 'inventory_movement.dart';

class InventoryMovementPage extends StatefulWidget {

  const InventoryMovementPage({
    super.key,
  });

  @override
  State<InventoryMovementPage> createState() => _CreateState();
}

class _CreateState extends State<InventoryMovementPage> {

  final _filterData = [
    {'id': '', 'title': 'Added From:', 'type': 'calendar', 'value': ''},
    {'id': '', 'title': 'Added To:', 'type': 'calendar', 'value': ''},
    {'id': '', 'title': 'Type:', 'type': 'select', 'value': ''},
    {'id': '', 'title': 'Added By:', 'type': 'select', 'value': ''},
    {'id': '', 'title': 'Item Code:', 'type': 'text', 'value': ''},
    {'id': '', 'title': 'SO Code:', 'type': 'text', 'value': ''},
    {'id': '', 'title': 'Bin#:', 'type': 'text', 'value': ''},
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

  Future<(List<InventoryMovementModel>, bool)> _getData() async {
    List<InventoryMovementModel> _orderData = [];
    try {
      InventoryMovementColumn.data.forEach((element) {
        final data = InventoryMovementModel.fromJson(element);
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
      route: '/inventory_movement',
      title: 'Inventory / Inventory Movement',
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
            child: OperanceDataTable<InventoryMovementModel>(
              showRowsPerPageOptions: false,
              columns: InventoryMovementColumn.columns,
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