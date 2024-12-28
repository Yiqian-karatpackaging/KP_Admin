import 'yard_managment.dart';

class YardManagmentPage extends StatefulWidget {

  const YardManagmentPage({
    super.key,
  });

  @override
  State<YardManagmentPage> createState() => _CreateState();
}

class _CreateState extends State<YardManagmentPage> {

  final _filterData = [
    {'id': '', 'title': 'DateInYard From:', 'type': 'calendar', 'value': ''},
    {'id': '', 'title': 'DateInYard To:', 'type': 'calendar', 'value': ''},
    {'id': '', 'title': 'LFD:', 'type': 'calendar', 'value': ''},
    {'id': '', 'title': 'Item Code:', 'type': 'textField', 'value': ''},
    {'id': '', 'title': 'Legacy Item:', 'type': 'textField', 'value': ''},
    {'id': '', 'title': 'Container:', 'type': 'textField', 'value': ''},
    {'id': '', 'title': 'Container Item Type:', 'type': 'textField', 'value': ''},
    {'id': '', 'title': 'Dock#:', 'type': 'textField', 'value': ''},
    {'id': '', 'title': 'PO#:', 'type': 'textField', 'value': ''},
    {'id': '', 'title': 'WH:', 'type': 'select', 'value': ''},
    {'id': '', 'title': 'Status:', 'type': 'select', 'value': ''},
    {'id': '', 'title': 'Vendor:', 'type': 'select', 'value': ''},
    {'id': '', 'title': 'Yard Status:', 'type': 'select', 'value': ''},
    {'id': '', 'title': 'Urgent:', 'type': 'checkBox', 'value': ''},
  ];

  final _menuButtonData = [
    {'id': 'search', 'title': 'Search'},
    {'id': 'excel', 'title': 'Excel'},
    {'id': 'csv', 'title': 'CSV'},
    {'id': 'assignDriver', 'title': 'Assign Driver'},
    {'id': 'assignUnLoader', 'title': 'Assign UnLoader'},
  ];

  final List<YardManagmentExpansionModel> _expansionData = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    YardManagmentExpansionColumn.data.forEach((element) {
      final data = YardManagmentExpansionModel.fromJson(element);
      _expansionData.add(data);
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  Future<(List<YardManagmentModel>, bool)> _getData() async {
    List<YardManagmentModel> _orderData = [];
    try {
      YardManagmentColumn.data.forEach((element) {
        final data = YardManagmentModel.fromJson(element);
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
      route: '/yard_managment',
      title: 'Receiving / Yard Managment',
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
            child: OperanceDataTable<YardManagmentModel>(
              expandable: true,
              infiniteScroll: true,
              columns: YardManagmentColumn.columns,
              expansionBuilder: (value) => ExpansionTableWidget(
                  data: _expansionData,
                  column: YardManagmentExpansionColumn.columns),
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