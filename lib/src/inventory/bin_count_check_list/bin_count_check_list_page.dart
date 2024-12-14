import 'bin_count_check_list.dart';

class BinCountCheckListPage extends StatefulWidget {

  const BinCountCheckListPage({
    super.key,
  });

  @override
  State<BinCountCheckListPage> createState() => _CreateState();
}

class _CreateState extends State<BinCountCheckListPage> {

  final _filterData = [
    {'id': '', 'title': 'Count From:', 'type': 'calendar', 'value': ''},
    {'id': '', 'title': 'Count To:', 'type': 'calendar', 'value': ''},
    {'id': '', 'title': 'WH:', 'type': 'select', 'value': ''},
    {'id': '', 'title': 'Inventory Type:', 'type': 'select', 'value': ''},
    {'id': '', 'title': 'Area:', 'type': 'select', 'value': ''},
    {'id': '', 'title': 'Quantity>:', 'type': 'text', 'value': ''},
    {'id': '', 'title': 'Item Code:', 'type': 'text', 'value': ''},
    {'id': '', 'title': 'Bin:', 'type': 'text', 'value': ''},
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

  Future<(List<BinCountCheckListModel>, bool)> _getData() async {
    List<BinCountCheckListModel> _orderData = [];
    try {
      BinCountCheckListColumn.data.forEach((element) {
        final data = BinCountCheckListModel.fromJson(element);
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
      route: '/bin_count_check_list',
      title: 'Inventory / Bin Count Check List',
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TableHeadWidget(menuButtonData: _menuButtonData, filterData: _filterData, callBack: (value){},),
          SizedBox(
            height: usableHeight(context),
            child: OperanceDataTable<BinCountCheckListModel>(
              showRowsPerPageOptions: false,
              columns: BinCountCheckListColumn.columns,
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