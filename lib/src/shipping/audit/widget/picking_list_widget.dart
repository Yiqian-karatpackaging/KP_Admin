import 'package:kp_admin/src/shipping/audit/audit.dart';

class PickingListWidget extends StatefulWidget {
  const PickingListWidget({
    super.key,
  });

  @override
  State<PickingListWidget> createState() => _CreateState();
}

class _CreateState extends State<PickingListWidget> {
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

  Future<(List<PickingListModel>, bool)> _getData() async {
    List<PickingListModel> _orderData = [];
    try {
      final countryJson =
      await rootBundle.loadString('assets/so_pick_list.json');
      final jsonData = json.decode(countryJson);
      if (jsonData is List) {
        jsonData.forEach((element) {
          final data = PickingListModel.fromJson(element);
          _orderData.add(data);
        });
      }
      return (_orderData, false);
    } catch (e) {
      return (_orderData, false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height - 100,
      child: OperanceDataTable<PickingListModel>(
        // showHeader: true,
        // showRowsPerPageOptions: false,
        showFooter: false,
        // decoration: OperanceDataDecoration(sizes: OperanceDataSizes(headerHeight: 0.0)),

        columns: PickingListColumn.columns,
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
      ),
    );
  }
}
