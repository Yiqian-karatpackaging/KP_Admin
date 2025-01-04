import 'do_dispatch.dart';

class DoDispatchPage extends StatefulWidget {

  const DoDispatchPage({
    super.key,
  });

  @override
  State<DoDispatchPage> createState() => _CreateState();
}

class _CreateState extends State<DoDispatchPage> {

  final _filterData = [
    {'id': '', 'title': 'Date From:', 'type': 'calendar', 'value': ''},
    {'id': '', 'title': 'Date To:', 'type': 'calendar', 'value': ''},

    {'id': '', 'title': 'Ref#:', 'type': 'textField', 'value': ''},
    {'id': '', 'title': 'Route#:', 'type': 'textField', 'value': ''},

    {'id': '', 'title': 'WH:', 'type': 'select', 'value': ''},
  ];

  final _menuButtonData = [
    {'id': 'search', 'title': 'Search'},
    {'id': 'excel', 'title': 'Excel'},
    {'id': 'csv', 'title': 'CSV'},
    {'id': 'addToRoute', 'title': 'Add To Route'},
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

  Future<(List<DoDispatchModel>, bool)> _getData() async {
    List<DoDispatchModel> _orderData = [];
    try {
      DoDispatchColumn.data.forEach((element) {
        final data = DoDispatchModel.fromJson(element);
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
      route: '/do_dispatch',
      title: 'Outbound / DO Dispatch',
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
            child: OperanceDataTable<DoDispatchModel>(
              selectable: true,
              columns: DoDispatchColumn.columns,
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