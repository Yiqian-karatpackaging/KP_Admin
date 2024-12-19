import 'receiving_incoming_containers.dart';

class ReceivingIncomingContainersPage extends StatefulWidget {

  const ReceivingIncomingContainersPage({
    super.key,
  });

  @override
  State<ReceivingIncomingContainersPage> createState() => _CreateState();
}

class _CreateState extends State<ReceivingIncomingContainersPage> {

  final _filterData = [
    {'id': '', 'title': 'Date From:', 'type': 'calendar', 'value': ''},
    {'id': '', 'title': 'Date To:', 'type': 'calendar', 'value': ''},
    {'id': '', 'title': 'WH:', 'type': 'select', 'value': ''},
  ];

  final _menuButtonData = [{'id': 'search', 'title': 'Search', },{'id': 'excel', 'title': 'Excel', },];

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

  Future<(List<ReceivingIncomingContainersModel>, bool)> _getData() async {
    List<ReceivingIncomingContainersModel> _orderData = [];
    try {
      ReceivingIncomingContainersColumn.data.forEach((element) {
        final data = ReceivingIncomingContainersModel.fromJson(element);
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
      route: '/receiving_incoming_containers',
      title: 'Receiving / Incoming Containers',
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TableHeadWidget(menuButtonData: _menuButtonData, filterData: _filterData, callBack: (value){},),
          SizedBox(
            height: usableHeight(context),
            child: OperanceDataTable<ReceivingIncomingContainersModel>(
              columns: ReceivingIncomingContainersColumn.columns,
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