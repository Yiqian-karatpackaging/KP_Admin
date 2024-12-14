import '../cycle_count_list.dart';

class CycleCountBulkListWidget extends StatefulWidget {

  const CycleCountBulkListWidget({
    super.key,
  });

  @override
  State<CycleCountBulkListWidget> createState() => _CreateState();
}

class _CreateState extends State<CycleCountBulkListWidget> {

  final _filterData = [
    {'id': '', 'title': 'WH:', 'type': 'select', 'value': ''},
    {'id': '', 'title': 'Area:', 'type': 'select', 'value': ''},
    {'id': '', 'title': 'Type:', 'type': 'select', 'value': ''},
    {'id': '', 'title': 'ID-Chino:', 'type': 'select', 'value': ''},
    {'id': '', 'title': 'Bin#:', 'type': 'textFile', 'value': ''},
    {'id': '', 'title': 'Item Code:', 'type': 'textFile', 'value': ''},
    {'id': '', 'title': 'Legacy Item:', 'type': 'textFile', 'value': ''},
    {'id': '', 'title': 'Exclude 0 LPN Qty:', 'type': 'checkBox', 'value': ''},
    {'id': '', 'title': 'Exclude Precount Bins:', 'type': 'checkBox', 'value': ''},
  ];

  final _menuButtonData = [
    {'id': 'search', 'title': 'Search', },
    {'id': 'excel', 'title': 'Create Cycle Count ID', },
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

  Future<(List<CycleCountBulkListModel>, bool)> _getData() async {
    List<CycleCountBulkListModel> _orderData = [];
    try {
      CycleCountBulkListColumn.data.forEach((element) {
        final data = CycleCountBulkListModel.fromJson(element);
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
        TableHeadWidget(filterData: _filterData, menuButtonData: _menuButtonData,),
        Expanded(child: OperanceDataTable<CycleCountBulkListModel>(
          columns: CycleCountBulkListColumn.columns,
          emptyStateBuilder: (BuildContext context) => const EmptyWidget(),
          onFetch: (limit, sort, {bool isInitial = true}) async {
            return _getData();
          },
          loadingStateBuilder: (BuildContext context) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          },
        ),),
      ],
    );
  }
}