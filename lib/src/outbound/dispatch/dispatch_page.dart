import 'dispatch.dart';

class DispatchPage extends StatefulWidget {

  const DispatchPage({
    super.key,
  });

  @override
  State<DispatchPage> createState() => _CreateState();
}

class _CreateState extends State<DispatchPage> {

  final _filterData = [
    {'id': '', 'title': 'Ship Date From:', 'type': 'calendar', 'value': ''},
    {'id': '', 'title': 'Ship Date To:', 'type': 'calendar', 'value': ''},

    {'id': '', 'title': 'SO Code:', 'type': 'textField', 'value': ''},
    {'id': '', 'title': 'Customer Name:', 'type': 'textField', 'value': ''},
    {'id': '', 'title': 'Item Code:', 'type': 'textField', 'value': ''},
    {'id': '', 'title': 'Legacy Item:', 'type': 'textField', 'value': ''},
    {'id': '', 'title': 'Route#:', 'type': 'textField', 'value': ''},

    {'id': '', 'title': 'WH:', 'type': 'select', 'value': ''},
    {'id': '', 'title': 'Category:', 'type': 'select', 'value': ''},
    {'id': '', 'title': 'Status:', 'type': 'select', 'value': ''},
    {'id': '', 'title': 'Order Type:', 'type': 'select', 'value': ''},

    {'id': '', 'title': 'Include Route#:', 'type': 'checkBox', 'value': ''},
    {'id': '', 'title': 'less than \$1K:', 'type': 'checkBox', 'value': ''},
  ];

  final _menuButtonData = [
    {'id': 'search', 'title': 'Search'},
    {'id': 'excel', 'title': 'Excel'},
    {'id': 'csv', 'title': 'CSV'},
    {'id': 'addToRoute', 'title': 'Add To Route'},
    {'id': 'approve', 'title': 'Approve'},
    {'id': 'bolPrinted', 'title': 'BOL Printed'},
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

  Future<(List<DispatchModel>, bool)> _getData() async {
    List<DispatchModel> _orderData = [];
    try {
      DispatchColumn.data.forEach((element) {
        final data = DispatchModel.fromJson(element);
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
      route: '/dispatch',
      title: 'Outbound / Dispatch',
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
            child: OperanceDataTable<DispatchModel>(
              selectable: true,
              columns: DispatchColumn.columns,
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