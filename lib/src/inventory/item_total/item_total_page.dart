import 'item_total.dart';

class ItemTotalPage extends StatefulWidget {

  const ItemTotalPage({
    super.key,
  });

  @override
  State<ItemTotalPage> createState() => _CreateState();
}

class _CreateState extends State<ItemTotalPage> {

  final _filterData = [
    {'id': '', 'title': 'WH:', 'type': 'select', 'value': ''},
    {'id': '', 'title': 'Inventory Type:', 'type': 'select', 'value': ''},
  ];

  final _menuButtonData = [
    {'id': 'search', 'title': 'Search'},
    {'id': 'excel', 'title': 'Excel'},
    {'id': 'csv', 'title': 'CSV'},
  ];

  final List<ItemTotalExpansionModel> _expantionData = [];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    ItemTotalExpansionColumn.data.forEach((element) {
      final data = ItemTotalExpansionModel.fromJson(element);
      _expantionData.add(data);
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  Future<(List<ItemTotalModel>, bool)> _getData() async {
    List<ItemTotalModel> _orderData = [];
    try {
      ItemTotalColumn.data.forEach((element) {
        final data = ItemTotalModel.fromJson(element);
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
      route: '/item_total',
      title: 'Inventory / ItemTotal',
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
            child: OperanceDataTable<ItemTotalModel>(
              showRowsPerPageOptions: false,
              expandable: true,
              columns: ItemTotalColumn.columns,
              expansionBuilder: (value) => ExpansionTableWidget(data: _expantionData, column: ItemTotalExpansionColumn.columns),
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