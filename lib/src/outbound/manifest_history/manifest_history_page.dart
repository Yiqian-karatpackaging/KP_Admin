import 'manifest_history.dart';

class ManifestHistoryPage extends StatefulWidget {

  const ManifestHistoryPage({
    super.key,
  });

  @override
  State<ManifestHistoryPage> createState() => _CreateState();
}

class _CreateState extends State<ManifestHistoryPage> {

  final _filterData = [
    {'id': '', 'title': 'Ship Date From:', 'type': 'calendar', 'value': ''},
    {'id': '', 'title': 'Ship Date To:', 'type': 'calendar', 'value': ''},

    {'id': '', 'title': 'SO Code:', 'type': 'textField', 'value': ''},
    {'id': '', 'title': 'Route No:', 'type': 'textField', 'value': ''},

    {'id': '', 'title': 'WH:', 'type': 'select', 'value': ''},

    {'id': '', 'title': 'Complete:', 'type': 'checkBox', 'value': ''},
    {'id': '', 'title': 'No Priority:', 'type': 'checkBox', 'value': ''},
  ];

  final _menuButtonData = [
    {'id': 'search', 'title': 'Search'},
    {'id': 'excel', 'title': 'Excel'},
    {'id': 'csv', 'title': 'CSV'},
    {'id': 'delete', 'title': 'Delete'},
    {'id': 'driverProgress', 'title': 'Driver Progress'},
    {'id': 'pastDue', 'title': 'Past Due'},
    {'id': 'reorderRoute', 'title': 'Reorder Route'},
    {'id': 'print', 'title': 'Print'},
  ];

  final List<ManifestHistoryExpansionModel> _expansionData = [];
  
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    ManifestHistoryExpansionColumn.data.forEach((element) {
      final data = ManifestHistoryExpansionModel.fromJson(element);
      _expansionData.add(data);
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  Future<(List<ManifestHistoryModel>, bool)> _getData() async {
    List<ManifestHistoryModel> _orderData = [];
    try {
      ManifestHistoryColumn.data.forEach((element) {
        final data = ManifestHistoryModel.fromJson(element);
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
      route: '/manifest_history',
      title: 'Outbound / Manifest History',
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
            child: OperanceDataTable<ManifestHistoryModel>(
              selectable: true,
              expandable: true,
              columns: ManifestHistoryColumn.columns,
              expansionBuilder: (value) => ExpansionTableWidget(data: _expansionData, column: ManifestHistoryExpansionColumn.columns,),
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