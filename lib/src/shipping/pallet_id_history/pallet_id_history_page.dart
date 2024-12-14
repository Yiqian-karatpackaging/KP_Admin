import 'package:kp_admin/src/shipping/pallet_id_history/pallet_id_history.dart';

class PalletIdHistoryPage extends StatefulWidget {

  const PalletIdHistoryPage({
    super.key,
  });

  @override
  State<PalletIdHistoryPage> createState() => _CreateState();
}

class _CreateState extends State<PalletIdHistoryPage> {

  final _filterData = [
    {'id': '', 'title': 'SO Code:', 'type': 'textFile', 'value': ''},
    {'id': '', 'title': 'PalletID:', 'type': 'textFile', 'value': ''},
  ];

  final _menuButtonData = [{'id': 'search', 'title': 'Search', },{'id': 'excel', 'title': 'Excel', },{'id': 'csv', 'title': 'CSV', },];

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

  Future<(List<PalletIdHistoryModel>, bool)> _getData() async {
    List<PalletIdHistoryModel> _orderData = [];
    try {
      PalletIdHistoryColumn.data.forEach((element) {
        final data = PalletIdHistoryModel.fromJson(element);
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
      route: '/pallet_id_history',
        title: 'Shipping / Pallet ID History',
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TableHeadWidget(filterData: _filterData, menuButtonData: _menuButtonData, callBack: (value){},),
          SizedBox(
            height: MediaQuery.of(context).size.height - 100,
            child: OperanceDataTable<PalletIdHistoryModel>(
              columns: PalletIdHistoryColumn.columns,
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
      )
    );
  }
}