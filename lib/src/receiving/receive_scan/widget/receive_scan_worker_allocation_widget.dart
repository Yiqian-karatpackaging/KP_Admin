import '../receive_scan.dart';

class ReceiveScanWorkerAllocationWidget extends StatefulWidget {
  const ReceiveScanWorkerAllocationWidget({
    super.key,
  });

  @override
  State<ReceiveScanWorkerAllocationWidget> createState() => _CreateState();
}

class _CreateState extends State<ReceiveScanWorkerAllocationWidget> {
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

  Future<(List<ReceiveScanWorkerAllocationModel>, bool)> _getData() async {
    List<ReceiveScanWorkerAllocationModel> _orderData = [];
    try {
      ReceiveScanWorkerAllocationColumn.data.forEach((element) {
        final data = ReceiveScanWorkerAllocationModel.fromJson(element);
        _orderData.add(data);
      });
      return (_orderData, false);
    } catch (e) {
      return (_orderData, false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: OperanceDataTable<ReceiveScanWorkerAllocationModel>(
            columns: ReceiveScanWorkerAllocationColumn.columns,
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
        )
      ],
    );
  }
}
