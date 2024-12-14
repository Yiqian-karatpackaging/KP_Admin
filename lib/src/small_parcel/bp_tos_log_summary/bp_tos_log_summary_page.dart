import 'bp_tos_log_summary.dart';

class BPTosLogSummaryPage extends StatefulWidget {

  const BPTosLogSummaryPage({
    super.key,
  });

  @override
  State<BPTosLogSummaryPage> createState() => _CreateState();
}

class _CreateState extends State<BPTosLogSummaryPage> {
  
  final _filterData = [
    {'id': '', 'title': 'Date From:', 'type': 'calendar', 'value': ''},
    {'id': '', 'title': 'Date To:', 'type': 'calendar', 'value': ''},
    {'id': '', 'title': 'WH:', 'type': 'select', 'value': ''},
    {'id': '', 'title': 'Item Code:', 'type': 'title', 'value': ''},
    {'id': '', 'title': 'BP#:', 'type': 'title', 'value': ''},
    {'id': '', 'title': 'SO#:', 'type': 'title', 'value': ''},
    {'id': '', 'title': 'PO#:', 'type': 'title', 'value': ''},
    {'id': '', 'title': 'Customer Name:', 'type': 'title', 'value': ''},
  ];

  final _menuButtonData = [
    {'id': 'search', 'title': 'Search'},
    {'id': 'exportAll', 'title': 'Export All'},
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

  Future<(List<BPTOSLogSummaryModel>, bool)> _getData() async {
    List<BPTOSLogSummaryModel> orderData = [];
    try {
      for (var element in BPTOSLogSummaryColumn.data) {
        final data = BPTOSLogSummaryModel.fromJson(element);
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
      route: '/bp_tos_log_summary',
      title: 'Small Parcel / BP TOS Log Summary',
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TableHeadWidget(filterData: _filterData, menuButtonData: _menuButtonData, callBack:(value) {},),
          SizedBox(
            height: MediaQuery.of(context).size.height - 100,
            child: OperanceDataTable<BPTOSLogSummaryModel>(
              showRowsPerPageOptions: false,
              columns: BPTOSLogSummaryColumn.columns,
              emptyStateBuilder: (BuildContext context) => EmptyWidget(),
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