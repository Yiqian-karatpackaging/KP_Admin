import 'package:kp_admin/src/shipping/audit/audit.dart';

class HistorySupportDocsWidget extends StatefulWidget {
  const HistorySupportDocsWidget({
    super.key,
  });

  @override
  State<HistorySupportDocsWidget> createState() => _CreateState();
}

class _CreateState extends State<HistorySupportDocsWidget> {

  final _menuButtonData = [
    {'id': 'upload', 'title': 'Upload', },
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

  Future<(List<HistorySupportDocsModel>, bool)> _getData() async {
    List<HistorySupportDocsModel> _orderData = [];
    try {
      HistorySupportDocsColumn.data.forEach((element) {
        final data = HistorySupportDocsModel.fromJson(element);
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
        TableHeadWidget(menuButtonData: _menuButtonData, callBack: (){}),
        Expanded(
          child: OperanceDataTable<HistorySupportDocsModel>(
            // showHeader: true,
            showRowsPerPageOptions: false,
            // showFooter: false,
            columns: HistorySupportDocsColumn.columns,
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
