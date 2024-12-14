import 'package:kp_admin/src/shipping/staged_pallets/staged_pallets.dart';

class StagedPalletsPage extends StatefulWidget {

  const StagedPalletsPage({
    super.key,
  });

  @override
  State<StagedPalletsPage> createState() => _CreateState();
}

class _CreateState extends State<StagedPalletsPage> {

  final _filterData = [
    {'id': '', 'title': 'Staged From:', 'type': 'calendar', 'value': ''},
    {'id': '', 'title': 'Staged To:', 'type': 'calendar', 'value': ''},
    {'id': '', 'title': 'Loc:', 'type': 'select', 'value': ''},
    {'id': '', 'title': 'Status:', 'type': 'select', 'value': ''},
    {'id': '', 'title': 'SO Code:', 'type': 'textFile', 'value': ''},
    {'id': '', 'title': 'PalletID:', 'type': 'textFile', 'value': ''},
    {'id': '', 'title': 'Bin:', 'type': 'textFile', 'value': ''},
  ];

  final _menuButtonData = [{'id': 'search', 'title': 'Search', },{'id': 'excel', 'title': 'Excel', },{'id': 'csv', 'title': 'CSV', },{'id': 'changePallets', 'title': 'Change Pallets', },];

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

  Future<(List<StagedPalletsModel>, bool)> _getData() async {
    List<StagedPalletsModel> _orderData = [];
    try {
      StagedPalletsColumn.data.forEach((element) {
        final data = StagedPalletsModel.fromJson(element);
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
      route: '/staged_pallets',
        title: 'Shipping / Staged Pallets',
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TableHeadWidget(filterData: _filterData, menuButtonData: _menuButtonData, callBack: (value){},),
          SizedBox(
            height: MediaQuery.of(context).size.height - 100,
            child: OperanceDataTable<StagedPalletsModel>(
              columns: StagedPalletsColumn.columns,
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
      )
    );
  }
}