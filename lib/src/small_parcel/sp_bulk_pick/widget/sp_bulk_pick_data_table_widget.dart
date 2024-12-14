import '../sp_bulk_pick.dart';

class SPBulkPickDataTableWidget extends StatefulWidget {

  const SPBulkPickDataTableWidget({
    super.key,
  });

  @override
  State<SPBulkPickDataTableWidget> createState() => _CreateState();
}

class _CreateState extends State<SPBulkPickDataTableWidget> {

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

  Future<(List<SPBulkPickDataTableModel>, bool)> _getData() async {
    List<SPBulkPickDataTableModel> orderData = [];
    try {
      for (var element in SPBulkPickDataTableColumn.data) {
        final data = SPBulkPickDataTableModel.fromJson(element);
        orderData.add(data);
      }
      return (orderData, false);
    } catch (e) {
      return (orderData, false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return OperanceDataTable<SPBulkPickDataTableModel>(
      columns: SPBulkPickDataTableColumn.columns,
      emptyStateBuilder: (BuildContext context) => EmptyWidget(),
      onFetch: (limit, sort, {bool isInitial = true}) async {
        return _getData();
      },
      loadingStateBuilder: (BuildContext context) {
        return const Center(
          child: CircularProgressIndicator(),
        );
      },
    );
  }
}