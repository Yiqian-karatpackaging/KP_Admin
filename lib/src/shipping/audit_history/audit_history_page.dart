import 'package:kp_admin/src/shipping/audit_history/audit_history.dart';

class AuditHistoryPage extends StatefulWidget {

  const AuditHistoryPage({
    super.key,
  });

  @override
  State<AuditHistoryPage> createState() => _CreateState();
}

class _CreateState extends State<AuditHistoryPage> {

  final _filterData = [
    {'id': '', 'title': 'Date From:', 'type': 'calendar', 'value': ''},
    {'id': '', 'title': 'Date To:', 'type': 'calendar', 'value': ''},
    {'id': '', 'title': 'WH:', 'type': 'select', 'value': ''},
  ];

  final _menuButtonData = [{'id': 'search', 'title': 'Search', },{'id': 'excel', 'title': 'Excel', },];

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

  Future<(List<AuditHistoryModel>, bool)> _getData() async {
    List<AuditHistoryModel> _orderData = [];
    try {
      AuditHistoryColumns.data.forEach((element) {
        final data = AuditHistoryModel.fromJson(element);
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
      route: '/audit_history',
        title: 'Shipping / Audit History',
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TableHeadWidget(menuButtonData: _menuButtonData, filterData: _filterData, callBack: (value){},),
          SizedBox(
            height: MediaQuery.of(context).size.height - 100,
            child: OperanceDataTable<AuditHistoryModel>(
              columns: AuditHistoryColumns.columns,
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