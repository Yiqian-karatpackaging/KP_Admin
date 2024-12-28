import '../receive_scan.dart';

class ReceiveScanScannedItemWidget extends StatefulWidget {

  const ReceiveScanScannedItemWidget({
    super.key,
  });

  @override
  State<ReceiveScanScannedItemWidget> createState() => _CreateState();
}

class _CreateState extends State<ReceiveScanScannedItemWidget> {

  final _menuButtonData = [
    {'id': 'delete', 'title': 'Delete'},
    {'id': 'clear', 'title': 'Clear NS Receipt QTY'},
    {'id': 'reprint', 'title': 'Reprint LPNs'},
  ];

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
  
  Future<(List<ReceiveScanScannedItemModel>, bool)> _getData() async {
    List<ReceiveScanScannedItemModel> _orderData = [];
    try {
      ReceiveScanScannedItemColumn.data.forEach((element) {
        final data = ReceiveScanScannedItemModel.fromJson(element);
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
        TableHeadWidget(
          menuButtonData: _menuButtonData,
          callBack: (value) {},
        ),
        Expanded(child: OperanceDataTable<ReceiveScanScannedItemModel>(
          selectable: true,
          columns: ReceiveScanScannedItemColumn.columns,
          emptyStateBuilder: (BuildContext context) => EmptyWidget(),
          // header: [PickingListHeaderWidget()],
          onFetch: (limit, sort, {bool isInitial = true}) async {
            return _getData();
          },
          loadingStateBuilder: (BuildContext context) {
            return Center(
              child: CircularProgressIndicator(),
            );
          },
        ),)
      ],
    );
  }
}