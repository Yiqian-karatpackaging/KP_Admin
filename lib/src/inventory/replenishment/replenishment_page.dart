import 'replenishment.dart';

class ReplenishmentPage extends StatefulWidget {

  const ReplenishmentPage({
    super.key,
  });

  @override
  State<ReplenishmentPage> createState() => _CreateState();
}

class _CreateState extends State<ReplenishmentPage> {

  final _filterData = [
    {'id': '', 'title': 'WH:', 'type': 'select', 'value': ''},
    {'id': '', 'title': 'Replen Dept:', 'type': 'select', 'value': ''},
    {'id': '', 'title': 'Color:', 'type': 'select', 'value': ''},
    {'id': '', 'title': 'Velocity Class:', 'type': 'select', 'value': ''},
    {'id': '', 'title': 'Replen Group:', 'type': 'select', 'value': ''},
    {'id': '', 'title': 'User:', 'type': 'select', 'value': ''},
  ];

  final _menuButtonData = [
    {'id': 'search', 'title': 'Search'},
    {'id': 'excel', 'title': 'Excel'},
    {'id': 'csv', 'title': 'CSV'},
    {'id': 'batchAssign', 'title': 'Batch Assign'},
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

  Future<(List<ReplenishmentModel>, bool)> _getData() async {
    List<ReplenishmentModel> _orderData = [];
    try {
      ReplenishmentColumn.data.forEach((element) {
        final data = ReplenishmentModel.fromJson(element);
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
      route: '/replenishment',
      title: 'Inventory / Replenishment',
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
            child: OperanceDataTable<ReplenishmentModel>(
              showRowsPerPageOptions: false,
              selectable: true,
              columns: ReplenishmentColumn.columns,
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