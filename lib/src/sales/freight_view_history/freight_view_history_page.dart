import 'freight_view_history.dart';

class FreightViewHistoryPage extends StatefulWidget {

  const FreightViewHistoryPage({
    super.key,
  });

  @override
  State<FreightViewHistoryPage> createState() => _CreateState();
}

class _CreateState extends State<FreightViewHistoryPage> {
  final _filterData = [
    {'id': '', 'title': 'Date From:', 'type': 'calendar', 'value': ''},
    {'id': '', 'title': 'Date To:', 'type': 'calendar', 'value': ''},
    {'id': '', 'title': 'WH', 'type': 'select', 'value': ''},
    {'id': '', 'title': 'SO#:', 'type': 'textFile', 'value': ''},
    {'id': '', 'title': 'Cancel Saved:', 'type': 'checkBox', 'value': ''},
  ];

  final _menuButtonData = [
    {'id': 'search', 'title': 'Search'},
    {'id': 'syncFreightView TL', 'title': 'Sync Freightview TL'},
    {'id': 'reSyncQuote', 'title': 'Resync Quote'},
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

  Future<(List<FreightViewHistoryModel>, bool)> _getData() async {
    List<FreightViewHistoryModel> _orderData = [];
    try {
      FreightViewHistoryColumn.data.forEach((element) {
        final data = FreightViewHistoryModel.fromJson(element);
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
      route: '/freight_view_history',
      title: 'Sales / Freight View History',
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TableHeadWidget(
            filterData: _filterData,
            menuButtonData: _menuButtonData,
            // callBack: (value) => _headButtonClick(value),
          ),
          SizedBox(
            height: usableHeight(context),
            child: OperanceDataTable<FreightViewHistoryModel>(
              columns: FreightViewHistoryColumn.columns,
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
          )
        ],
      ),
    );
  }
}
