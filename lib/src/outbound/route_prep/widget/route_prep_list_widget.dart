import '../route_prep.dart';

class RoutePrepListWidget extends StatefulWidget {

  const RoutePrepListWidget({
    super.key,
  });

  @override
  State<RoutePrepListWidget> createState() => _CreateState();
}

class _CreateState extends State<RoutePrepListWidget> {

  final _menuButtonData = [
    {'id': 'exportAll', 'title': 'Export All', },
    {'id': 'map', 'title': 'Map', },
    {'id': 'createRoute', 'title': 'Create Route#', },
  ];

  final List<RoutePrepListExpansionModel> _expansionData = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    RoutePrepListExpansionColumn.data.forEach((element) {
      final data = RoutePrepListExpansionModel.fromJson(element);
      _expansionData.add(data);
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  Future<(List<RoutePrepListModel>, bool)> _getData() async {
    List<RoutePrepListModel> _orderData = [];
    try {
      RoutePrepListColumn.data.forEach((element) {
        final data = RoutePrepListModel.fromJson(element);
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
        TableHeadWidget(menuButtonData: _menuButtonData, callBack: (){}),
        Expanded(
          child: OperanceDataTable<RoutePrepListModel>(
            selectable: true,
            expandable: true,
            columns: RoutePrepListColumn.columns,
            expansionBuilder: (value) => ExpansionTableWidget(data: _expansionData, column: RoutePrepListExpansionColumn.columns),
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
    );
  }
}