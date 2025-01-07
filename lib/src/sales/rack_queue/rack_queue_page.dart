import 'rack_queue.dart';

class RackQueuePage extends StatefulWidget {
  const RackQueuePage({
    super.key,
  });

  @override
  State<RackQueuePage> createState() => _CreateState();
}

class _CreateState extends State<RackQueuePage> {
  final _filterData = [
    {'id': '', 'title': 'WH', 'type': 'select', 'value': ''},
    {'id': '', 'title': 'SO#:', 'type': 'textFile', 'value': ''},
    {'id': '', 'title': 'Complete:', 'type': 'checkBox', 'value': ''},
  ];

  final _menuButtonData = [
    {'id': 'search', 'title': 'Search'},
    {'id': 'excel', 'title': 'Excel'},
    {'id': 'csv', 'title': 'CSV'},
  ];

  final List<RackQueueExpansionModel> _expansionData = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    RackQueueExpansionColumn.data.forEach((element) {
      final data = RackQueueExpansionModel.fromJson(element);
      _expansionData.add(data);
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  Future<(List<RackQueueModel>, bool)> _getData() async {
    List<RackQueueModel> _orderData = [];
    try {
      RackQueueColumn.data.forEach((element) {
        final data = RackQueueModel.fromJson(element);
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
      route: '/rack_queue',
      title: 'Sales / Rack Queue',
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TableHeadWidget(
            filterData: _filterData,
            menuButtonData: _menuButtonData,
            // callBack: (value) => _headButtonClick(value),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height - 100,
            child: OperanceDataTable<RackQueueModel>(
              expandable: true,
              columns: RackQueueColumn.columns,
              decoration: OperanceDataDecoration(
                  sizes: OperanceDataSizes(rowHeight: 60.h)),
              emptyStateBuilder: (BuildContext context) => const EmptyWidget(),
              onFetch: (limit, sort, {bool isInitial = true}) async {
                return _getData();
              },
              loadingStateBuilder: (BuildContext context) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              },
              expansionBuilder: (value) {
                return ExpansionTableWidget(
                  data: _expansionData,
                  column: RackQueueExpansionColumn.columns,
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
