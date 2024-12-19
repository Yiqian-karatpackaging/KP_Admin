import 'bulk_pallet_movement.dart';

class BulkPalletMovementPage extends StatefulWidget {

  const BulkPalletMovementPage({
    super.key,
  });

  @override
  State<BulkPalletMovementPage> createState() => _CreateState();
}

class _CreateState extends State<BulkPalletMovementPage> {

  final _filterData = [
    {'id': '', 'title': 'Bin:', 'type': 'text', 'value': ''},
  ];

  final _menuButtonData = [
    {'id': 'search', 'title': 'Search'},
    {'id': 'move', 'title': 'Move'},
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

  Future<(List<BulkPalletMovementModel>, bool)> _getData() async {
    List<BulkPalletMovementModel> _orderData = [];
    try {
      BulkPalletMovementColumn.data.forEach((element) {
        final data = BulkPalletMovementModel.fromJson(element);
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
      route: '/bulk_pallet_movement',
      title: 'Inventory / Bulk Pallet Movement',
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
            child: OperanceDataTable<BulkPalletMovementModel>(
              showRowsPerPageOptions: false,
              selectable: true,
              columns: BulkPalletMovementColumn.columns,
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