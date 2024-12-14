import 'package:kp_admin/src/shipping/so_tos_log_summary/so_tos_log_summary.dart';

class SOTOSLogSummaryPage extends StatefulWidget {

  const SOTOSLogSummaryPage({
    super.key,
  });

  @override
  State<SOTOSLogSummaryPage> createState() => _CreateState();
}

class _CreateState extends State<SOTOSLogSummaryPage> {

  final _filterData = [
    {'id': '', 'title': 'Audit Complete Date From:', 'type': 'calendar', 'value': ''},
    {'id': '', 'title': 'Audit Complete Date To:', 'type': 'calendar', 'value': ''},
    {'id': '', 'title': 'Loc:', 'type': 'select', 'value': ''},
    {'id': '', 'title': 'Sales Ord#:', 'type': 'textFile', 'value': ''},
    {'id': '', 'title': 'Pick Started By:', 'type': 'textFile', 'value': ''},
    {'id': '', 'title': 'Item Code:', 'type': 'textFile', 'value': ''},
    {'id': '', 'title': 'Customer Name:', 'type': 'textFile', 'value': ''},
    {'id': '', 'title': 'Exclude Online Orders:', 'type': 'checkBox', 'value': ''},
    {'id': '', 'title': 'KP Fulfilled - NS 0 QTY:', 'type': 'checkBox', 'value': ''},
  ];

  final _menuButtonData = [{'id': 'search', 'title': 'Search', },{'id': 'csv', 'title': 'CSV', },];

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

  Future<(List<SOTOSLogSummaryModel>, bool)> _getData() async {
    List<SOTOSLogSummaryModel> _orderData = [];
    try {
      SOTOSLogSummaryColumns.data.forEach((element) {
        final data = SOTOSLogSummaryModel.fromJson(element);
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
      route: '/so_tos_log_summary',
        title: 'Shipping / SO TOS Log Summary',
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TableHeadWidget(filterData: _filterData, menuButtonData: _menuButtonData, callBack: (value) {
            print(value);
          },),
          SizedBox(
            height: MediaQuery.of(context).size.height - 100,
            child: OperanceDataTable<SOTOSLogSummaryModel>(
              columns: SOTOSLogSummaryColumns.columns,
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
      )
    );
  }
}