import 'package:kp_admin/src/shipping/audit/audit.dart';

class HistoryAuditWidget extends StatefulWidget {
  const HistoryAuditWidget({
    super.key,
  });

  @override
  State<HistoryAuditWidget> createState() => _CreateState();
}

class _CreateState extends State<HistoryAuditWidget> {
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

  Future<(List<HistoryAuditModel>, bool)> _getData() async {
    List<HistoryAuditModel> _orderData = [];
    try {
      HistoryAuditColumn.data.forEach((element) {
        final data = HistoryAuditModel.fromJson(element);
        _orderData.add(data);
      });
      return (_orderData, false);
    } catch (e) {
      return (_orderData, false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height - 100,
      child: OperanceDataTable<HistoryAuditModel>(
        // showHeader: true,
        showRowsPerPageOptions: false,
        // showFooter: false,
        columns: HistoryAuditColumn.columns,
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
    );
  }
}
