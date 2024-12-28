import '../receive_scan.dart';

class ReceiveScanSupportDocsWidget extends StatefulWidget {

  const ReceiveScanSupportDocsWidget({
    super.key,
  });

  @override
  State<ReceiveScanSupportDocsWidget> createState() => _CreateState();
}

class _CreateState extends State<ReceiveScanSupportDocsWidget> {

  final _menuButtonData = [
    {'id': 'upLoad', 'title': 'UpLoad'},
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

  Future<(List<ReceiveScanSupportDocsModel>, bool)> _getData() async {
    List<ReceiveScanSupportDocsModel> _orderData = [];
    try {
      ReceiveScanSupportDocsColumn.data.forEach((element) {
        final data = ReceiveScanSupportDocsModel.fromJson(element);
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
        Expanded(
          child: OperanceDataTable<ReceiveScanSupportDocsModel>(
            columns: ReceiveScanSupportDocsColumn.columns,
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