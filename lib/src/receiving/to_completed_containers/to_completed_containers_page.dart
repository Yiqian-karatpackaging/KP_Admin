import 'to_completed_containers.dart';

class ToCompletedContainersPage extends StatefulWidget {

  const ToCompletedContainersPage({
    super.key,
  });

  @override
  State<ToCompletedContainersPage> createState() => _CreateState();
}

class _CreateState extends State<ToCompletedContainersPage> {

  final _filterData = [
    {'id': '', 'title': 'Completed From:', 'type': 'calendar', 'value': ''},
    {'id': '', 'title': 'Completed To:', 'type': 'calendar', 'value': ''},
    {'id': '', 'title': 'TO#:', 'type': 'textField', 'value': ''},
    {'id': '', 'title': 'From WH:', 'type': 'select', 'value': ''},
    {'id': '', 'title': 'To WH:', 'type': 'select', 'value': ''},
  ];

  final _menuButtonData = [
    {'id': 'search', 'title': 'Search'},
  ];

  final List<ToCompletedContainersExpansionModel> _expansionData = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    ToCompletedContainersExpansionColumn.data.forEach((element) {
      final data = ToCompletedContainersExpansionModel.fromJson(element);
      _expansionData.add(data);
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  Future<(List<ToCompletedContainersModel>, bool)> _getData() async {
    List<ToCompletedContainersModel> _orderData = [];
    try {
      ToCompletedContainersColumn.data.forEach((element) {
        final data = ToCompletedContainersModel.fromJson(element);
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
      route: '/to_completed_containers',
      title: 'Receiving / TO Completed Containers',
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
            child: OperanceDataTable<ToCompletedContainersModel>(
              expandable: true,
              infiniteScroll: true,
              columns: ToCompletedContainersColumn.columns,
              expansionBuilder: (value) => ExpansionTableWidget(
                data: _expansionData,
                column: ToCompletedContainersExpansionColumn.columns,),
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