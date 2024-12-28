import 'yard_containers.dart';

class YardContainersPage extends StatefulWidget {

  const YardContainersPage({
    super.key,
  });

  @override
  State<YardContainersPage> createState() => _CreateState();
}

class _CreateState extends State<YardContainersPage> {

  final _filterData = [
    {'id': '', 'title': 'Date From:', 'type': 'calendar', 'value': ''},
    {'id': '', 'title': 'Date To:', 'type': 'calendar', 'value': ''},
    {'id': '', 'title': 'WH:', 'type': 'select', 'value': ''},
  ];

  final _menuButtonData = [
    {'id': 'search', 'title': 'Search'},
  ];

  final List<YardContainersExpansionModel> _expansionData = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    YardContainersExpansionColumn.data.forEach((element) {
      final data = YardContainersExpansionModel.fromJson(element);
      _expansionData.add(data);
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  Future<(List<YardContainersModel>, bool)> _getData() async {
    List<YardContainersModel> _orderData = [];
    try {
      YardContainersColumn.data.forEach((element) {
        final data = YardContainersModel.fromJson(element);
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
      route: '/yard_containers',
      title: 'Receiving / Yard Containers',
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
            child: OperanceDataTable<YardContainersModel>(
              expandable: true,
              infiniteScroll: true,
              columns: YardContainersColumn.columns,
              expansionBuilder: (value) => ExpansionTableWidget(
                  data: _expansionData,
                  column: YardContainersExpansionColumn.columns),
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