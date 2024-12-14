import 'package:kp_admin/src/shipping/audit/audit.dart';

class HistoryPhotoOverrideWidget extends StatefulWidget {
  const HistoryPhotoOverrideWidget({
    super.key,
  });

  @override
  State<HistoryPhotoOverrideWidget> createState() => _CreateState();
}

class _CreateState extends State<HistoryPhotoOverrideWidget> {
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

  Future<(List<HistoryPhotoOverrideModel>, bool)> _getData() async {
    List<HistoryPhotoOverrideModel> _orderData = [];
    try {
      HistorySupportDocsColumn.data.forEach((element) {
        final data = HistoryPhotoOverrideModel.fromJson(element);
        _orderData.add(data);
      });
      return (_orderData, false);
    } catch (e) {
      return (_orderData, false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height - 100,
      child: OperanceDataTable<HistoryPhotoOverrideModel>(
        showRowsPerPageOptions: false,
        // showFooter: false,
        columns: HistoryPhotoOverrideColumn.columns,
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
