import 'manifest_history_v2.dart';

class ManifestHistoryV2Page extends StatefulWidget {

  const ManifestHistoryV2Page({
    super.key,
  });

  @override
  State<ManifestHistoryV2Page> createState() => _CreateState();
}

class _CreateState extends State<ManifestHistoryV2Page> {

  final _filterData = [
    {'id': '', 'title': 'Created Date From:', 'type': 'calendar', 'value': ''},
    {'id': '', 'title': 'Created Date To:', 'type': 'calendar', 'value': ''},

    {'id': '', 'title': 'Route No:', 'type': 'textField', 'value': ''},

    {'id': '', 'title': 'WH:', 'type': 'select', 'value': ''},

    {'id': '', 'title': 'No Priority:', 'type': 'checkBox', 'value': ''},
    {'id': '', 'title': 'Complete:', 'type': 'checkBox', 'value': ''},
  ];

  final _menuButtonData = [
    {'id': 'search', 'title': 'Search'},
    {'id': 'excel', 'title': 'Excel'},
    {'id': 'csv', 'title': 'CSV'},
    {'id': 'delete', 'title': 'Delete'},
    {'id': 'driverProgress', 'title': 'Driver Progress'},
    {'id': 'reorderRoute', 'title': 'Reorder Route'},
  ];

  final List<ManifestHistoryV2ExpansionModel> _expansionData = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    ManifestHistoryV2ExpansionColumn.data.forEach((element) {
      final data = ManifestHistoryV2ExpansionModel.fromJson(element);
      _expansionData.add(data);
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  Future<(List<ManifestHistoryV2Model>, bool)> _getData() async {
    List<ManifestHistoryV2Model> _orderData = [];
    try {
      ManifestHistoryV2Column.data.forEach((element) {
        final data = ManifestHistoryV2Model.fromJson(element);
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
      route: '/manifest_history_v2',
      title: 'Outbound / Manifest History V2',
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
            child: OperanceDataTable<ManifestHistoryV2Model>(
              selectable: true,
              expandable: true,
              columns: ManifestHistoryV2Column.columns,
              expansionBuilder: (value) => ExpansionTableWidget(data: _expansionData, column: ManifestHistoryV2ExpansionColumn.columns,),
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