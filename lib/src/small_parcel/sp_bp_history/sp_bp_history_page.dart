import 'sp_bp_history.dart';

class SPBpHistoryPage extends StatefulWidget {

  const SPBpHistoryPage({
    super.key,
  });

  @override
  State<SPBpHistoryPage> createState() => _CreateState();
}

class _CreateState extends State<SPBpHistoryPage> {

  final _filterData = [
    {'id': '', 'title': 'Added From:', 'type': 'calendar', 'value': ''},
    {'id': '', 'title': 'Added To:', 'type': 'calendar', 'value': ''},
    {'id': '', 'title': 'Status:', 'type': 'select', 'value': ''},
    {'id': '', 'title': 'Loc:', 'type': 'select', 'value': ''},
    {'id': '', 'title': 'Picker Assigned To:', 'type': 'select', 'value': ''},
  ];

  final _menuButtonData = [
    {'id': 'search', 'title': 'Search'},
    {'id': 'excel', 'title': 'Excel'},
    {'id': 'csv', 'title': 'CSV'},
    // {'id': 'print', 'title': 'Print'},
    // {'id': 'printSO', 'title': 'Print SO'},
    {'id': 'batchAssign', 'title': 'Batch Assign'},
    {'id': 'assignedCarrier', 'title': 'Assigned Carrier'},
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

  Future<(List<SPBPHistoryModel>, bool)> _getData() async {
    List<SPBPHistoryModel> orderData = [];
    try {
      for (var element in SPBPHistoryColumn.data) {
        final data = SPBPHistoryModel.fromJson(element);
        orderData.add(data);
      }
      return (orderData, false);
    } catch (e) {
      return (orderData, false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      route: '/sp_bp_history',
      title: 'Small Parcel / SP BP History',
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TableHeadWidget(filterData: _filterData, menuButtonData: _menuButtonData, callBack:(value) {},),
          SizedBox(
            height: MediaQuery.of(context).size.height - 100,
            child: OperanceDataTable<SPBPHistoryModel>(
              showRowsPerPageOptions: false,
              expandable: true,
              columns: SPBPHistoryColumn.columns,
              emptyStateBuilder: (BuildContext context) => EmptyWidget(),
              expansionBuilder: (value) => ExpansionTableWidget(data: [], column: SPBPHistoryExpansionColumn.columns),
              onFetch: (limit, sort, {bool isInitial = true}) async {
                return _getData();
              },
              loadingStateBuilder: (BuildContext context) {
                return Center(
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
