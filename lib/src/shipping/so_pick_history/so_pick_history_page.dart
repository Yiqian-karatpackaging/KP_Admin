import 'package:kp_admin/src/shipping/so_pick_history/so_pick_history.dart';

class SoPickHistoryPage extends StatefulWidget {
  const SoPickHistoryPage({
    super.key,
  });

  @override
  State<SoPickHistoryPage> createState() => _CreateState();
}

class _CreateState extends State<SoPickHistoryPage> {
  final _filterData = [
    {'title': 'Date From:', 'type': 'calendar', 'value': ''},
    {'title': 'Date To:', 'type': 'calendar', 'value': ''},
    {'title': 'WH:', 'type': 'select', 'value': ''},
    {'title': 'User:', 'type': 'select', 'value': ''},
    {'title': 'Shift:', 'type': 'select', 'value': ''},
    {'title': 'Type:', 'type': 'select', 'value': ''},
    {'title': 'SO#:', 'type': 'textFile', 'value': ''},
    {'title': 'Item Code:', 'type': 'textFile', 'value': ''},
    {'title': 'Legacy Item:', 'type': 'textFile', 'value': ''},
    {'title': 'Bin#:', 'type': 'textFile', 'value': ''},
    {'title': 'Exclude BP:', 'type': 'checkBox', 'value': ''},
  ];

  final _menuButtonData = [
    {
      'id': 'search',
      'title': 'Search',
    },
    {
      'id': 'exportAll',
      'title': 'Export All',
    },
  ];

  List<SOPickHistoryModel> _selectData = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  Future<(List<SOPickHistoryModel>, bool)> _getData() async {
    List<SOPickHistoryModel> _orderData = [];
    try {
      SoPickHistoryColumn.data.forEach((element) {
        final data = SOPickHistoryModel.fromJson(element);
        _orderData.add(data);
      });
      return (_orderData, false);
    } catch (e) {
      return (_orderData, false);
    }
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  Future<void> _headButtonClick(Map<String, dynamic> info) async {
    switch (info['id']) {
      case 'search':
        EasyLoading.showToast("Search");
        break;
      case 'excel':
        if (fxEmpty(_selectData)) {
          EasyLoading.showToast(
              "ERROR: please select at least one record to cancel");
        } else {
          await saveFile();
        }
        break;
      case 'exportAll':
        await saveFile();
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
        route: '/so_pick_history',
        title: 'Shipping / SO Pick History',
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TableHeadWidget(
              filterData: _filterData,
              menuButtonData: _menuButtonData,
              callBack: (value) => _headButtonClick(value),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height - 100,
              child: OperanceDataTable<SOPickHistoryModel>(
                showHeader: false,
                columns: SoPickHistoryColumn.columns,
                emptyStateBuilder: (BuildContext context) => EmptyWidget(),
                onFetch: (limit, sort, {bool isInitial = true}) async {
                  return _getData();
                },
                loadingStateBuilder: (BuildContext context) {
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                },
              ),
            )
          ],
        ));
  }
}
