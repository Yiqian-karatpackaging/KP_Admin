import 'pallet_movement_hist.dart';

class PalletMovementHistPage extends StatefulWidget {

  const PalletMovementHistPage({
    super.key,
  });

  @override
  State<PalletMovementHistPage> createState() => _CreateState();
}

class _CreateState extends State<PalletMovementHistPage> {

  final _filterData = [
    {'id': '', 'title': 'Pallet Move From:', 'type': 'calendar', 'value': ''},
    {'id': '', 'title': 'Pallet Move To:', 'type': 'calendar', 'value': ''},
    {'id': '', 'title': 'WH:', 'type': 'select', 'value': ''},
    {'id': '', 'title': 'Pallet Move By:', 'type': 'select', 'value': ''},
    {'id': '', 'title': 'BinFromType:', 'type': 'select', 'value': ''},
    {'id': '', 'title': 'BinToType:', 'type': 'select', 'value': ''},
    {'id': '', 'title': 'Type:', 'type': 'select', 'value': ''},
    {'id': '', 'title': 'Show Duplicated:', 'type': 'select', 'value': ''},
    {'id': '', 'title': 'Bypass Bin User:', 'type': 'select', 'value': ''},
    {'id': '', 'title': 'Bypass Bin:', 'type': 'checkBox', 'value': ''},
  ];

  final _menuButtonData = [
    {'id': 'search', 'title': 'Search'},
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

  Future<(List<PalletMovementHistModel>, bool)> _getData() async {
    List<PalletMovementHistModel> _orderData = [];
    try {
      PalletMovementHistColumn.data.forEach((element) {
        final data = PalletMovementHistModel.fromJson(element);
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
      route: '/pallet_movement_hist',
      title: 'Inventory / Pallet Movement Hist',
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
            child: OperanceDataTable<PalletMovementHistModel>(
              showRowsPerPageOptions: false,
              columns: PalletMovementHistColumn.columns,
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