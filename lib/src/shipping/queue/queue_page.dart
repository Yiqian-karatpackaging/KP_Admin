import 'package:kp_admin/src/shipping/queue/queue.dart';

class QueuePage extends StatefulWidget {
  const QueuePage({
    super.key,
  });

  @override
  State<QueuePage> createState() => _CreateState();
}

class _CreateState extends State<QueuePage> {
  final _filterData = [
    {'id': '', 'title': 'Ship DateFrom:', 'type': 'calendar', 'value': ''},
    {'id': '', 'title': 'Ship DateTo:', 'type': 'calendar', 'value': ''},
    {'id': '', 'title': 'Pick Started Date From:', 'type': 'calendar', 'value': ''},
    {'id': '', 'title': 'Pick Started Date To:', 'type': 'calendar', 'value': ''},
    {'id': '', 'title': 'PCompleted Date:', 'type': 'calendar', 'value': ''},
    {'id': '', 'title': 'Billing By:', 'type': 'select', 'value': ''},
    {'id': '', 'title': 'Pick Started By:', 'type': 'select', 'value': ''},
    {'id': '', 'title': 'PickStarted By Dept:', 'type': 'select', 'value': ''},
    {'id': '', 'title': 'PCompleted by:', 'type': 'select', 'value': ''},
    {'id': '', 'title': 'PCompleted By Dept:', 'type': 'select', 'value': ''},
    {'id': '', 'title': 'PickStarted By Shift:', 'type': 'select', 'value': ''},
    {'id': '', 'title': 'PCompleted By Shift:', 'type': 'select', 'value': ''},
    {'id': '', 'title': 'Picker Assigned To:', 'type': 'select', 'value': ''},
    {'id': '', 'title': 'WH', 'type': 'select', 'value': ''},
    {'id': '', 'title': 'Ecommerce:', 'type': 'select', 'value': ''},
    {'id': '', 'title': 'SO Code:', 'type': 'textFile', 'value': ''},
    {'id': '', 'title': 'Customer Name:', 'type': 'textFile', 'value': ''},
    {'id': '', 'title': 'Ship Via:', 'type': 'textFile', 'value': ''},
    {'id': '', 'title': 'Item Code:', 'type': 'textFile', 'value': ''},
    {'id': '', 'title': 'Legacy Item:', 'type': 'textFile', 'value': ''},
    {'id': '', 'title': 'Total Qty:', 'type': 'textFile', 'value': ''},
    {'id': '', 'title': 'Truck#:', 'type': 'textFile', 'value': ''},
    {'id': '', 'title': '#Items:', 'type': 'textFile', 'value': ''},
    {'id': '', 'title': 'Exclude Online Orders:', 'type': 'checkBox', 'value': ''},
  ];

  final _menuButtonData = [
    {'id': 'search', 'title': 'Search'},
    {'id': 'excel', 'title': 'Excel'},
    {'id': 'csv', 'title': 'CSV'},
    {'id': 'batchAssign', 'title': 'Batch Assign'},
    {'id': 'exportAll', 'title': 'Export All'},
  ];

  List<QueueModel> _selectData = [];
  final List<QueueExpansionModel> _expansionData = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _getExpansionData();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  Future<(List<QueueModel>, bool)> _getData() async {
    List<QueueModel> _orderData = [];
    try {
      final countryJson =
          await rootBundle.loadString('assets/shippingQueue.json');
      final jsonData = json.decode(countryJson);
      if (jsonData is List) {
        jsonData.forEach((element) {
          final data = QueueModel.fromJson(element);
          _orderData.add(data);
        });
      }
      return (_orderData, false);
    } catch (e) {
      return (_orderData, false);
    }
  }

  Future<void> _getExpansionData() async {
    try {
      final countryJson =
          await rootBundle.loadString('assets/shippingExpansion.json');
      final jsonData = json.decode(countryJson);
      if (jsonData is List) {
        for (var element in jsonData) {
          final data = QueueExpansionModel.fromJson(element);
          _expansionData.add(data);
        }
      }
    } catch (e) {}
  }

  // Future<List<QueueExpansionModel>> _getExpansionData() {
  //   List<QueueExpansionModel> orderData = [];
  //   try {
  //     final countryJson = rootBundle.loadString('assets/shippingExpansion.json');
  //     final jsonData = json.decode(countryJson);
  //     if (jsonData is List) {
  //       for (var element in jsonData) {
  //         final data = QueueExpansionModel.fromJson(element);
  //         orderData.add(data);
  //       }
  //     }
  //     return orderData;
  //   } catch (e) {
  //     return orderData;
  //   }
  // }

  Future<void> _headButtonClick(Map<String, dynamic> info) async {
    switch (info['id']) {
      case 'search':
        EasyLoading.showToast("search data");
        break;
      case 'excel':
        if (fxEmpty(_selectData)) {
          EasyLoading.showToast(
              "ERROR: please select at least one record to cancel");
        } else {
          await saveFile();
        }
        break;
      case 'csv':
        if (fxEmpty(_selectData)) {
          EasyLoading.showToast(
              "ERROR: please select at least one record to cancel");
        } else {
          await saveFile();
        }
        break;
      case 'batchAssign':
        BatchAssign.show(context, (value) {});
        break;
      case 'exportAll':
        await saveFile();
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
        route: '/queue_page',
        title: 'Shipping / Queue',
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TableHeadWidget(
              filterData: _filterData,
              menuButtonData: _menuButtonData,
              callBack: (value) => _headButtonClick(value),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height - 100,
              child: OperanceDataTable<QueueModel>(
                expandable: true,
                showRowsPerPageOptions: true,
                selectable: true,
                columns: QueuePageColumn.columns,
                decoration: OperanceDataDecoration(
                    sizes: OperanceDataSizes(rowHeight: 60.h)),
                emptyStateBuilder: (BuildContext context) =>
                    const EmptyWidget(),
                onFetch: (limit, sort, {bool isInitial = true}) async {
                  return _getData();
                },
                loadingStateBuilder: (BuildContext context) {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                },
                expansionBuilder: (value) {
                  return ExpansionTableWidget(
                      data: _expansionData,
                      column: QueuePageExpansionColumn.columns);
                },
                onSelectionChanged: (value) => _selectData = value,
              ),
            )
          ],
        ));
  }
}
