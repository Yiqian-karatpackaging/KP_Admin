import 'to_containers.dart';

class TOContainersPage extends StatefulWidget {

  const TOContainersPage({
    super.key,
  });

  @override
  State<TOContainersPage> createState() => _CreateState();
}

class _CreateState extends State<TOContainersPage> {


  final _filterData = [
    {'id': '', 'title': 'Date From:', 'type': 'calendar', 'value': ''},
    {'id': '', 'title': 'Date To:', 'type': 'calendar', 'value': ''},
    {'id': '', 'title': 'TO#:', 'type': 'textField', 'value': ''},
    {'id': '', 'title': 'From WH:', 'type': 'select', 'value': ''},
    {'id': '', 'title': 'To WH:', 'type': 'select', 'value': ''},
    {'id': '', 'title': 'Status:', 'type': 'select', 'value': ''},
  ];

  final _menuButtonData = [
    {'id': 'search', 'title': 'Search'},
    {'id': 'csv', 'title': 'CSV'},
  ];

  final List<ToContainersExpansionModel> _expansionData = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    ToContainersExpansionColumn.data.forEach((element) {
      final data = ToContainersExpansionModel.fromJson(element);
      _expansionData.add(data);
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  Future<(List<ToContainersModel>, bool)> _getData() async {
    List<ToContainersModel> _orderData = [];
    try {
      ToContainersColumn.data.forEach((element) {
        final data = ToContainersModel.fromJson(element);
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
      route: '/to_containers',
      title: 'Receiving / TO Containers',
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
            child: OperanceDataTable<ToContainersModel>(
              expandable: true,
              infiniteScroll: true,
              columns: ToContainersColumn.columns,
              expansionBuilder: (value) => ExpansionTableWidget(
                  data: _expansionData,
                  column: ToContainersExpansionColumn.columns,),
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