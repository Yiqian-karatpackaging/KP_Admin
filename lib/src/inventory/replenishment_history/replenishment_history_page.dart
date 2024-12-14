import 'replenishment_history.dart';

class ReplenishmentHistoryPage extends StatefulWidget {

  const ReplenishmentHistoryPage({
    super.key,
  });

  @override
  State<ReplenishmentHistoryPage> createState() => _CreateState();
}

class _CreateState extends State<ReplenishmentHistoryPage> {

  final _filterData = [
    {'id': '', 'title': 'Date From:', 'type': 'calendar', 'value': ''},
    {'id': '', 'title': 'Date To:', 'type': 'calendar', 'value': ''},
    {'id': '', 'title': 'WH:', 'type': 'select', 'value': ''},
    {'id': '', 'title': 'Item Code:', 'type': 'text', 'value': ''},
    {'id': '', 'title': 'Legacy Item:', 'type': 'text', 'value': ''},
    {'id': '', 'title': 'Pallet Movement By:', 'type': 'text', 'value': ''},
    {'id': '', 'title': 'LPN#:', 'type': 'text', 'value': ''},
    {'id': '', 'title': 'From Bin#:', 'type': 'text', 'value': ''},
    {'id': '', 'title': 'To Bin#:', 'type': 'text', 'value': ''},
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

  Future<(List<ReplenishmentHistoryModel>, bool)> _getData() async {
    List<ReplenishmentHistoryModel> _orderData = [];
    try {
      ReplenishmentHistoryColumn.data.forEach((element) {
        final data = ReplenishmentHistoryModel.fromJson(element);
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
      route: '/replenishment_history',
      title: 'Inventory / Replenishment History',
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
            child: OperanceDataTable<ReplenishmentHistoryModel>(
              showRowsPerPageOptions: false,
              columns: ReplenishmentHistoryColumn.columns,
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