import 'package:kp_admin/src/shipping/audit_queue/audit_queue.dart';

class AuditQueuePage extends StatefulWidget {
  const AuditQueuePage({
    super.key,
  });

  @override
  State<AuditQueuePage> createState() => _CreateState();
}

class _CreateState extends State<AuditQueuePage> {

  final _filterData = [
    {'id': '', 'title': 'Ship DateFrom:', 'type': 'calendar', 'value': ''},
    {'id': '', 'title': 'Ship DateTo:', 'type': 'calendar', 'value': ''},
    {'id': '', 'title': 'PCompleted Date:', 'type': 'calendar', 'value': ''},
    {'id': '', 'title': 'Order Status:', 'type': 'select', 'value': ''},
    {'id': '', 'title': 'WH', 'type': 'select', 'value': ''},
    {'id': '', 'title': 'SO Code:', 'type': 'textFile', 'value': ''},
    {'id': '', 'title': 'Customer Name:', 'type': 'textFile', 'value': ''},
    {'id': '', 'title': 'Ship Via:', 'type': 'textFile', 'value': ''},
    {'id': '', 'title': 'Billing By:', 'type': 'textFile', 'value': ''},
    {'id': '', 'title': 'Audit Assigned To:', 'type': 'textFile', 'value': ''},
    {'id': '', 'title': 'Pick Started By:', 'type': 'textFile', 'value': ''},
    {'id': '', 'title': 'PCompleted By:', 'type': 'textFile', 'value': ''},
    {'id': '', 'title': 'Item Code:', 'type': 'textFile', 'value': ''},
    {'id': '', 'title': 'Legacy Item:', 'type': 'textFile', 'value': ''},
    {'id': '', 'title': 'Total Qty:', 'type': 'textFile', 'value': ''},
    {'id': '', 'title': 'Truck#:', 'type': 'textFile', 'value': ''},
    {'id': '', 'title': '#Items:', 'type': 'textFile', 'value': ''},
    {'id': '', 'title': 'Exclude Online Orders:', 'type': 'checkBox', 'value': ''},
  ];

  final _menuButtonData = [
    {'id': 'search', 'title': 'Search', },
    {'id': 'excel', 'title': 'Excel', },
    {'id': 'csv', 'title': 'CSV', },
    {'id': 'batchAssign', 'title': 'Batch Assign', },
    {'id': 'exportAll', 'title': 'Export All', },
  ];

  final List<AuditQueueExpansionModel> _expansionData = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _getExpansionData();
  }

  Future<(List<AuditQueueModel>, bool)> _getData() async {
    List<AuditQueueModel> _orderData = [];
    try {
      AuditQueueColumn.data.forEach((element) {
        final data = AuditQueueModel.fromJson(element);
        _orderData.add(data);
      });
      return (_orderData, false);
    } catch (e) {
      return (_orderData, false);
    }
  }

  Future<void> _getExpansionData() async {
    try {
      final countryJson = await rootBundle.loadString('assets/shippingExpansion.json');
      final jsonData = json.decode(countryJson);
      if (jsonData is List) {
        for (var element in jsonData) {
          final data = AuditQueueExpansionModel.fromJson(element);
          _expansionData.add(data);
        }
      }
    } catch (e) {
    }
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    return CustomScaffold(
        route: '/audit_queue',
        title: 'Shipping / Audit Queue',
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TableHeadWidget(filterData: _filterData, menuButtonData: _menuButtonData, callBack: (value){}),
            SizedBox(
              height: MediaQuery.of(context).size.height - 100,
              child: OperanceDataTable<AuditQueueModel>(
                expandable: true,
                showRowsPerPageOptions: true,
                selectable: true,
                columns: AuditQueueColumn.columns,
                emptyStateBuilder: (BuildContext context) => EmptyWidget(),
                onFetch: (limit, sort, {bool isInitial = true}) async {
                  return _getData();
                },
                loadingStateBuilder: (BuildContext context) {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                },
                expansionBuilder: (model) {
                  return ExpansionTableWidget(data: _expansionData, column: AuditQueueExpansionColumn.columns());
                },

              ),
            )
          ],
        )
    );
  }
}
