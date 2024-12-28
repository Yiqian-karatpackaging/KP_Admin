import 'to_queue.dart';

class TOQueuePage extends StatefulWidget {

  const TOQueuePage({
    super.key,
  });

  @override
  State<TOQueuePage> createState() => _CreateState();
}

class _CreateState extends State<TOQueuePage> {

  final _filterData = [
    {'id': '', 'title': 'Tran Date From:', 'type': 'calendar', 'value': ''},
    {'id': '', 'title': 'Tran Date To:', 'type': 'calendar', 'value': ''},
    {'id': '', 'title': 'Item Code:', 'type': 'textField', 'value': ''},
    {'id': '', 'title': 'Legacy Item:', 'type': 'textField', 'value': ''},
    {'id': '', 'title': 'WH From:', 'type': 'select', 'value': ''},
    {'id': '', 'title': 'WH To:', 'type': 'select', 'value': ''},
    {'id': '', 'title': 'TO Status:', 'type': 'select', 'value': ''},
  ];

  final _menuButtonData = [
    {'id': 'search', 'title': 'Search'},
    {'id': 'csv', 'title': 'CSV'},
    {'id': 'batchAssign', 'title': 'Batch Assign'},
  ];

  final List<ToQueueExpansionModel> _expansionData = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    ToQueueExpansionColumn.data.forEach((element) {
      final data = ToQueueExpansionModel.fromJson(element);
      _expansionData.add(data);
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  Future<(List<ToQueueModel>, bool)> _getData() async {
    List<ToQueueModel> _orderData = [];
    try {
      ToQueueColumn.data.forEach((element) {
        final data = ToQueueModel.fromJson(element);
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
      route: '/to_queue',
      title: 'Receiving / TO Queue',
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
            child: OperanceDataTable<ToQueueModel>(
              expandable: true,
              infiniteScroll: true,
              columns: ToQueueColumn.columns,
              expansionBuilder: (value) => ExpansionTableWidget(
                  data: _expansionData,
                  column: ToQueueExpansionColumn.columns),
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