import 'partial_pallet_list.dart';

class PartialPalletListPage extends StatefulWidget {

  const PartialPalletListPage({
    super.key,
  });

  @override
  State<PartialPalletListPage> createState() => _CreateState();
}

class _CreateState extends State<PartialPalletListPage> {

  final _filterData = [
    {'id': '', 'title': 'LPN#:', 'type': 'text', 'value': ''},
    {'id': '', 'title': 'Bin#:', 'type': 'text', 'value': ''},
    {'id': '', 'title': 'Item Code:', 'type': 'text', 'value': ''},
    {'id': '', 'title': 'Legacy Item:', 'type': 'text', 'value': ''},
    {'id': '', 'title': 'WH:', 'type': 'select', 'value': ''},
    {'id': '', 'title': 'Class:', 'type': 'select', 'value': ''},
  ];

  final _menuButtonData = [
    {'id': 'search', 'title': 'Search'},
    {'id': 'excel', 'title': 'Excel'},
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

  Future<(List<PartialPalletListModel>, bool)> _getData() async {
    List<PartialPalletListModel> _orderData = [];
    try {
      PartialPalletListColumn.data.forEach((element) {
        final data = PartialPalletListModel.fromJson(element);
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
      route: '/partial_pallet_list',
      title: 'Inventory / Partial Pallet List',
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
            child: OperanceDataTable<PartialPalletListModel>(
              showRowsPerPageOptions: false,
              columns: PartialPalletListColumn.columns,
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