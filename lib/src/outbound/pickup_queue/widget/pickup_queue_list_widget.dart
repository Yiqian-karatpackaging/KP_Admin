import '../pickup_queue.dart';

class PickupQueueListWidget extends StatefulWidget {

  const PickupQueueListWidget({
    super.key,
  });

  @override
  State<PickupQueueListWidget> createState() => _CreateState();
}

class _CreateState extends State<PickupQueueListWidget> {

  final _filterData = [
    {'id': '', 'title': 'Date From:', 'type': 'calendar', 'value': ''},
    {'id': '', 'title': 'Date To:', 'type': 'calendar', 'value': ''},
    {'id': '', 'title': 'Appointment Date From:', 'type': 'calendar', 'value': ''},
    {'id': '', 'title': 'Appointment Date To:', 'type': 'calendar', 'value': ''},
    {'id': '', 'title': 'WH:', 'type': 'select', 'value': ''},
    {'id': '', 'title': 'Status:', 'type': 'select', 'value': ''},
  ];

  final _menuButtonData = [
    {'id': 'search', 'title': 'Search', },
    {'id': 'batchAssign', 'title': 'Batch Assign', },
    {'id': 'signIn', 'title': 'Sign In', },
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
  Future<(List<PickupQueueListModel>, bool)> _getData() async {
    List<PickupQueueListModel> _orderData = [];
    try {
      PickupQueueListColumn.data.forEach((element) {
        final data = PickupQueueListModel.fromJson(element);
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
        TableHeadWidget(filterData: _filterData, menuButtonData: _menuButtonData, callBack: (){}),
        Expanded(
          child: OperanceDataTable<PickupQueueListModel>(
            selectable: true,
            columns: PickupQueueListColumn.columns,
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