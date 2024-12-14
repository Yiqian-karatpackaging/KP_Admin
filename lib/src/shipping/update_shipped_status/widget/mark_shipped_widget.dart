import 'package:kp_admin/src/shipping/update_shipped_status/update_shipped_status.dart';

class MarkShippedWidget extends StatefulWidget {

  const MarkShippedWidget({
    super.key,
  });

  @override
  State<MarkShippedWidget> createState() => _CreateState();
}

class _CreateState extends State<MarkShippedWidget> {

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

  Future<(List<MarkShippedModel>, bool)> _getData() async {
    List<MarkShippedModel> _orderData = [];
    try {
      NonShippedColumn.data.forEach((element) {
        final data = MarkShippedModel.fromJson(element);
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
      child: OperanceDataTable<MarkShippedModel>(
        showRowsPerPageOptions: false,
        columns: MarkShippedColumn.columns,
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