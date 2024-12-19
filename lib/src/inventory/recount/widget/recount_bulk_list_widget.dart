import '../recount.dart';

class RecountBulkListWidget extends StatefulWidget {

  const RecountBulkListWidget({
    super.key,
  });

  @override
  State<RecountBulkListWidget> createState() => _CreateState();
}

class _CreateState extends State<RecountBulkListWidget> {

  final _filterData = [
    {'id': '', 'title': 'BPN#:', 'type': 'textFile', 'value': ''},
  ];

  final _menuButtonData = [
    {'id': 'search', 'title': 'Search', },
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

  Future<(List<RecountBulkListModel>, bool)> _getData() async {
    List<RecountBulkListModel> _orderData = [];
    try {
      RecountBulkListColumn.data.forEach((element) {
        final data = RecountBulkListModel.fromJson(element);
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
        Expanded(child: OperanceDataTable<RecountBulkListModel>(
          columns: RecountBulkListColumn.columns,
          selectable: true,
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