import 'to_yard_management.dart';

class ToYardManagementPage extends StatefulWidget {

  const ToYardManagementPage({
    super.key,
  });

  @override
  State<ToYardManagementPage> createState() => _CreateState();
}

class _CreateState extends State<ToYardManagementPage> {

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
    {'id': 'excel', 'title': 'Excel'},
    {'id': 'csv', 'title': 'CSV'},
    {'id': 'assignDriver', 'title': 'Assign Driver'},
    {'id': 'assignUnLoader', 'title': 'Assign UnLoader'},
  ];

  final List<ToYardManagementExpansionModel> _expansionData = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    ToYardManagementExpansionColumn.data.forEach((element) {
      final data = ToYardManagementExpansionModel.fromJson(element);
      _expansionData.add(data);
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  Future<(List<ToYardManagementModel>, bool)> _getData() async {
    List<ToYardManagementModel> _orderData = [];
    try {
      ToYardManagementColumn.data.forEach((element) {
        final data = ToYardManagementModel.fromJson(element);
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
      route: '/to_yard_management',
      title: 'Receiving / TO Yard Management',
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
            child: OperanceDataTable<ToYardManagementModel>(
              expandable: true,
              infiniteScroll: true,
              columns: ToYardManagementColumn.columns,
              expansionBuilder: (value) => ExpansionTableWidget(
                data: _expansionData,
                column: ToYardManagementExpansionColumn.columns,),
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