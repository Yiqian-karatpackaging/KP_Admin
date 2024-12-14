import 'package:kp_admin/src/shipping/audit/audit.dart';

class HistoryPalletsWidget extends StatefulWidget {
  const HistoryPalletsWidget({
    super.key,
  });

  @override
  State<HistoryPalletsWidget> createState() => _CreateState();
}

class _CreateState extends State<HistoryPalletsWidget> {

  final List<HistoryPalletsExpansionModel> _expansionData = [];

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

  Future<(List<HistoryPalletsModel>, bool)> _getData() async {
    List<HistoryPalletsModel> _orderData = [];
    try {
      HistoryPalletsColumn.data.forEach((element) {
        final data = HistoryPalletsModel.fromJson(element);
        _orderData.add(data);
      });
      return (_orderData, false);
    } catch (e) {
      return (_orderData, false);
    }
  }

  void _getExpansionData() {
    try {
      HistoryPalletsExpansionColumn.data.forEach((element) {
        final data = HistoryPalletsExpansionModel.fromJson(element);
        _expansionData.add(data);
      });
    } catch (e) {
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height - 100,
      child: OperanceDataTable<HistoryPalletsModel>(
        // showHeader: true,
        showRowsPerPageOptions: false,
        // showFooter: false,
        expandable: true,
        columns: HistoryPalletsColumn.columns,
        emptyStateBuilder: (BuildContext context) => const EmptyWidget(),
        onFetch: (limit, sort, {bool isInitial = true}) async {
          return _getData();
        },
        expansionBuilder: (value) {
          return  ExpansionTableWidget(data: _expansionData, column: HistoryPalletsExpansionColumn.columns);
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
