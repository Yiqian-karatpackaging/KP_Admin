import 'do_manifest_history.dart';

class DoManifestHistoryPage extends StatefulWidget {

  const DoManifestHistoryPage({
    super.key,
  });

  @override
  State<DoManifestHistoryPage> createState() => _CreateState();
}

class _CreateState extends State<DoManifestHistoryPage> {

  final _filterData = [
    {'id': '', 'title': 'Date From:', 'type': 'calendar', 'value': ''},
    {'id': '', 'title': 'Date To:', 'type': 'calendar', 'value': ''},

    {'id': '', 'title': 'Ref#:', 'type': 'textField', 'value': ''},
    {'id': '', 'title': 'Route#:', 'type': 'textField', 'value': ''},

    {'id': '', 'title': 'WH:', 'type': 'select', 'value': ''},
  ];

  final _menuButtonData = [
    {'id': 'search', 'title': 'Search'},
    {'id': 'excel', 'title': 'Excel'},
    {'id': 'csv', 'title': 'CSV'},
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

  Future<(List<DoManifestHistoryModel>, bool)> _getData() async {
    List<DoManifestHistoryModel> _orderData = [];
    try {
      DoManifestHistoryColumn.data.forEach((element) {
        final data = DoManifestHistoryModel.fromJson(element);
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
      route: '/do_manifest_history',
      title: 'Outbound / DO Manifest History',
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
            child: OperanceDataTable<DoManifestHistoryModel>(
              selectable: true,
              columns: DoManifestHistoryColumn.columns,
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