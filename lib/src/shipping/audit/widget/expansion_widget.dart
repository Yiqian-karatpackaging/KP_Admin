import 'package:kp_admin/src/shipping/audit_queue/audit_queue.dart';

class ExpansionWidget extends StatefulWidget {

  const ExpansionWidget({
    super.key,
  });

  @override
  State<ExpansionWidget> createState() => _CreateState();
}

class _CreateState extends State<ExpansionWidget> {

  int _dataCount = 0;

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

  Future<(List<AuditQueueExpansionModel>, bool)> _getData() async {
    List<AuditQueueExpansionModel> orderData = [];
    try {
      for (var element in AuditQueueExpansionColumn.data) {
        final data = AuditQueueExpansionModel.fromJson(element);
        orderData.add(data);
      }
      setState(() {
        _dataCount = orderData.length;
      });
      return (orderData, false);
    } catch (e) {
      return (orderData, false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 1 * 50 + 60,
      margin: EdgeInsets.only(left: 55),
      // child: OperanceDataTable<AuditQueueExpansionModel>(
      //   showFooter: false,
      //   columns: AuditQueueExpansionColumn.columns,
      //   emptyStateBuilder: (BuildContext context) => EmptyWidget(),
      //   onFetch: (limit, sort, {bool isInitial = true}) async {
      //     return _getData();
      //   },
      //   loadingStateBuilder: (BuildContext context) {
      //     return Center(
      //       child: CircularProgressIndicator(),
      //     );
      //   },
      // ),
    );
  }
}