import 'package:kp_admin/src/shipping/item_pick_average/item_pick_average.dart';

class ItemPickAveragePage extends StatefulWidget {
  const ItemPickAveragePage({
    super.key,
  });

  @override
  State<ItemPickAveragePage> createState() => _CreateState();
}

class _CreateState extends State<ItemPickAveragePage> {
  final _filterData = [
    {'id': '', 'title': 'WH:', 'type': 'select', 'value': ''},
    {'id': '', 'title': 'Item Code:', 'type': 'textFile', 'value': ''},
    {'id': '', 'title': 'Legacy Item:', 'type': 'textFile', 'value': ''},
  ];

  final _menuButtonData = [
    {'id': 'search', 'title': 'Search'},
    {'id': 'excel', 'title': 'Excel'},
    {'id': 'csv', 'title': 'CSV'},
    {'id': 'changePallets', 'title': 'Update Average'},
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

  Future<(List<ItemPickAverageModel>, bool)> _getData() async {
    List<ItemPickAverageModel> _orderData = [];
    try {
      ItemPickAverageColumn.data.forEach((element) {
        final data = ItemPickAverageModel.fromJson(element);
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
      route: '/item_pick_average',
      title: 'Shipping / Item Pick Average',
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TableHeadWidget(
            filterData: _filterData,
            menuButtonData: _menuButtonData,
            callBack: (value) {},
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height - 100,
            child: OperanceDataTable<ItemPickAverageModel>(
              columns: ItemPickAverageColumn.columns,
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
