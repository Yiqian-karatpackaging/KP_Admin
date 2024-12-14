import 'package:kp_admin/src/shipping/cross_inventory_lookup/cross_inventory_lookup.dart';

class CrossInventoryLookupWidget extends StatefulWidget {

  const CrossInventoryLookupWidget({
    super.key,
  });

  @override
  State<CrossInventoryLookupWidget> createState() => _CreateState();
}

class _CreateState extends State<CrossInventoryLookupWidget> {

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

  Future<(List<CrossInventoryLookupModel>, bool)> _getData() async {
    List<CrossInventoryLookupModel> _orderData = [];
    try {
      CrossInventoryLookupColumn.data.forEach((element) {
        final data = CrossInventoryLookupModel.fromJson(element);
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
      child: OperanceDataTable<CrossInventoryLookupModel>(
        showRowsPerPageOptions: false,
        columns: CrossInventoryLookupColumn.columns,
        emptyStateBuilder: (BuildContext context) => const EmptyWidget(),
        onFetch: (limit, sort, {bool isInitial = true}) async {
          return _getData();
        },
        loadingStateBuilder: (BuildContext context) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}