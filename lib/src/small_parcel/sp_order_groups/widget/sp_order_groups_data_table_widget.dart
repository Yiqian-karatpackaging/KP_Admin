import '../sp_order_groups.dart';

class SPOrderGroupsDataTableWidget extends StatefulWidget {

  const SPOrderGroupsDataTableWidget({
    super.key,
  });

  @override
  State<SPOrderGroupsDataTableWidget> createState() => _CreateState();
}

class _CreateState extends State<SPOrderGroupsDataTableWidget> {

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

  Future<(List<SPOrderGroupsDataTableModel>, bool)> _getData() async {
    List<SPOrderGroupsDataTableModel> orderData = [];
    try {
      for (var element in SPOrderGroupsDataTableColumn.data) {
        final data = SPOrderGroupsDataTableModel.fromJson(element);
        orderData.add(data);
      }
      return (orderData, false);
    } catch (e) {
      return (orderData, false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return OperanceDataTable<SPOrderGroupsDataTableModel>(
      columns: SPOrderGroupsDataTableColumn.columns,
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