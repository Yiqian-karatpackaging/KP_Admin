import 'bin_snapshot.dart';

class BinSnapshotPage extends StatefulWidget {

  const BinSnapshotPage({
    super.key,
  });

  @override
  State<BinSnapshotPage> createState() => _CreateState();
}

class _CreateState extends State<BinSnapshotPage> {

  final _filterData = [
    {'id': '', 'title': 'WH:', 'type': 'select', 'value': ''},
    {'id': '', 'title': 'Area:', 'type': 'select', 'value': ''},
    {'id': '', 'title': 'Inventory Type:', 'type': 'select', 'value': ''},
    {'id': '', 'title': 'Bin Type:', 'type': 'select', 'value': ''},
    {'id': '', 'title': 'Bin:', 'type': 'text', 'value': ''},
    {'id': '', 'title': 'Level:', 'type': 'text', 'value': ''},
    {'id': '', 'title': 'Item Code:', 'type': 'text', 'value': ''},
    {'id': '', 'title': 'Empty Bin:', 'type': 'checkBox', 'value': ''},
  ];

  final _menuButtonData = [
    {'id': 'search', 'title': 'Search'},
    {'id': 'excel', 'title': 'Excel'},
    {'id': 'csv', 'title': 'CSV'},
    {'id': 'exportAll', 'title': 'Export All'},
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

  Future<(List<BinSnapshotModel>, bool)> _getData() async {
    List<BinSnapshotModel> _orderData = [];
    try {
      BinSnapshotColumn.data.forEach((element) {
        final data = BinSnapshotModel.fromJson(element);
        _orderData.add(data);
      });
      return (_orderData, false);
    } catch (e) {
      return (_orderData, false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      route: '/bin_snapshot',
      title: 'Inventory / Bin Snapshot',
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TableHeadWidget(
            menuButtonData: _menuButtonData,
            filterData: _filterData,
            callBack: (value) {},
          ),
          SizedBox(
            height: usableHeight(context),
            child: OperanceDataTable<BinSnapshotModel>(
              showRowsPerPageOptions: false,
              columns: BinSnapshotColumn.columns,
              emptyStateBuilder: (BuildContext context) => EmptyWidget(),
              onFetch: (limit, sort, {bool isInitial = true}) async {
                return _getData();
              },
              loadingStateBuilder: (BuildContext context) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}