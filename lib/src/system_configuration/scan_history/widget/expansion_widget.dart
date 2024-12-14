import 'package:kp_admin/src/system_configuration/scan_history/scan_history.dart';

class ExpansionWidget extends StatefulWidget {

  const ExpansionWidget({
    super.key,
  });

  @override
  State<ExpansionWidget> createState() => _CreateState();
}

class _CreateState extends State<ExpansionWidget> {

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

  Future<(List<ScanHistoryExpansionModel>, bool)> _getData() async {
    List<ScanHistoryExpansionModel> orderData = [];
    try {
      for (var element in ScanHistoryExpansionColumn.data) {
        final data = ScanHistoryExpansionModel.fromJson(element);
        orderData.add(data);
      }
      return (orderData, false);
    } catch (e) {
      return (orderData, false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 3 * 56,
      margin: const EdgeInsets.only(left: 55),
      child: OperanceDataTable<ScanHistoryExpansionModel>(
        showFooter: false,
        columns: ScanHistoryExpansionColumn.columns,
        emptyStateBuilder: (BuildContext context) => const EmptyWidget(),
        onFetch: (limit, sort, {bool isInitial = true}) async {
          return _getData();
        },
        loadingStateBuilder: (BuildContext context) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}