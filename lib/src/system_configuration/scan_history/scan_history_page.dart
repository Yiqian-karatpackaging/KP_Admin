import 'scan_history.dart';

class ScanHistoryPage extends StatefulWidget {

  const ScanHistoryPage({
    super.key,
  });

  @override
  State<ScanHistoryPage> createState() => _CreateState();
}

class _CreateState extends State<ScanHistoryPage> {

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

  Future<(List<ScanHistoryModel>, bool)> _getData() async {
    List<ScanHistoryModel> _orderData = [];
    try {
      for (var element in ScanHistoryColumn.data) {
        final data = ScanHistoryModel.fromJson(element);
        _orderData.add(data);
      }
      return (_orderData, false);
    } catch (e) {
      return (_orderData, false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
        route: '/scan_history',
        title: 'System Configuration / Scan History',
        body: Column(
          children: [
            // HeaderWidget((value) => _headButtonClick(value)),
            SizedBox(
              height: MediaQuery.of(context).size.height - 100,
              child: OperanceDataTable<ScanHistoryModel>(
                expandable: true,
                showRowsPerPageOptions: true,
                columns: ScanHistoryColumn.columns,
                decoration: OperanceDataDecoration(sizes: OperanceDataSizes(rowHeight: 60.h)),
                emptyStateBuilder: (BuildContext context) => const EmptyWidget(),
                onFetch: (limit, sort, {bool isInitial = true}) async {
                  return _getData();
                },
                loadingStateBuilder: (BuildContext context) {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                },
                expansionBuilder: (value) {
                  return const ExpansionWidget();
                },
                // onSelectionChanged: (value) => _selectData = value,
              ),
            )
          ],
        )
    );
  }
}