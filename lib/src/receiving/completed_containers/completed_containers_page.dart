import 'completed_containers.dart';

class CompletedContainersPage extends StatefulWidget {

  const CompletedContainersPage({
    super.key,
  });

  @override
  State<CompletedContainersPage> createState() => _CreateState();
}

class _CreateState extends State<CompletedContainersPage> {

  final _filterData = [
    {'id': '', 'title': 'Completed From:', 'type': 'calendar', 'value': ''},
    {'id': '', 'title': 'Completed To:', 'type': 'calendar', 'value': ''},
    {'id': '', 'title': 'Item Code:', 'type': 'textField', 'value': ''},
    {'id': '', 'title': 'Legacy Item:', 'type': 'textField', 'value': ''},
    {'id': '', 'title': 'Container:', 'type': 'textField', 'value': ''},
    {'id': '', 'title': 'Container Item Type:', 'type': 'textField', 'value': ''},
    {'id': '', 'title': 'Dock#:', 'type': 'textField', 'value': ''},
    {'id': '', 'title': 'PO#:', 'type': 'textField', 'value': ''},
    {'id': '', 'title': 'WH:', 'type': 'select', 'value': ''},
    {'id': '', 'title': 'Yard Status:', 'type': 'select', 'value': ''},
    {'id': '', 'title': 'Urgent:', 'type': 'checkBox', 'value': ''},
  ];

  final _menuButtonData = [
    {'id': 'search', 'title': 'Search'},
  ];

  final List<CompletedContainersExpansionModel> _expansionData = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    CompletedContainersExpansionColumn.data.forEach((element) {
      final data = CompletedContainersExpansionModel.fromJson(element);
      _expansionData.add(data);
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  Future<(List<CompletedContainersModel>, bool)> _getData() async {
    List<CompletedContainersModel> _orderData = [];
    try {
      CompletedContainersColumn.data.forEach((element) {
        final data = CompletedContainersModel.fromJson(element);
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
      route: '/completed_containers',
      title: 'Receiving / Completed Containers',
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
            child: OperanceDataTable<CompletedContainersModel>(
              expandable: true,
              infiniteScroll: true,
              columns: CompletedContainersColumn.columns,
              expansionBuilder: (value) => ExpansionTableWidget(
                  data: _expansionData,
                  column: CompletedContainersExpansionColumn.columns),
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