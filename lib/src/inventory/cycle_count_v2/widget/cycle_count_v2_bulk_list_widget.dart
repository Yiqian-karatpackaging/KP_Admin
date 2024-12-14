import '../cycle_count_v2.dart';

class CycleCountV2BulkListWidget extends StatefulWidget {

  const CycleCountV2BulkListWidget({
    super.key,
  });

  @override
  State<CycleCountV2BulkListWidget> createState() => _CreateState();
}

class _CreateState extends State<CycleCountV2BulkListWidget> {

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
    {'id': 'onHandSync', 'title': 'On Hand Sync', },
    {'id': 'refresh', 'title': 'Refresh', },
    {'id': 'exportAll', 'title': 'Export All', },
    {'id': 'highlight', 'title': 'Highlight', },
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

  Future<(List<CycleCountV2BulkListModel>, bool)> _getData() async {
    List<CycleCountV2BulkListModel> _orderData = [];
    try {
      CycleCountV2BulkListColumn.data.forEach((element) {
        final data = CycleCountV2BulkListModel.fromJson(element);
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
        TableHeadWidget(menuButtonData: _menuButtonData,),
        Expanded(child: OperanceDataTable<CycleCountV2BulkListModel>(
          columns: CycleCountV2BulkListColumn.columns,
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