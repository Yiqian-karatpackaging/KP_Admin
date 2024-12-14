import 'precount_list.dart';

class PrecountListPage extends StatefulWidget {

  const PrecountListPage({
    super.key,
  });

  @override
  State<PrecountListPage> createState() => _CreateState();
}

class _CreateState extends State<PrecountListPage> {

  final _filterData = [
    {'id': '', 'title': 'Count Date From:', 'type': 'calendar', 'value': ''},
    {'id': '', 'title': 'Count Date To:', 'type': 'calendar', 'value': ''},
    {'id': '', 'title': 'Future Date From:', 'type': 'calendar', 'value': ''},
    {'id': '', 'title': 'Future Date To:', 'type': 'calendar', 'value': ''},
    {'id': '', 'title': 'WH:', 'type': 'select', 'value': ''},
    {'id': '', 'title': 'Bin#:', 'type': 'text', 'value': ''},
    {'id': '', 'title': 'Item Code:', 'type': 'text', 'value': ''},
    {'id': '', 'title': 'Legacy:', 'type': 'text', 'value': ''},
    {'id': '', 'title': 'Precount Error:', 'type': 'checkBox', 'value': ''},
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

  Future<(List<PrecountListModel>, bool)> _getData() async {
    List<PrecountListModel> _orderData = [];
    try {
      PrecountListColumn.data.forEach((element) {
        final data = PrecountListModel.fromJson(element);
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
      route: '/precount_list',
      title: 'Inventory / Precount List',
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
            child: OperanceDataTable<PrecountListModel>(
              showRowsPerPageOptions: false,
              columns: PrecountListColumn.columns,
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