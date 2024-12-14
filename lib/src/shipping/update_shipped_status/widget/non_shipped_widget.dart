import 'package:kp_admin/src/shipping/update_shipped_status/update_shipped_status.dart';

class NonShippedWidget extends StatefulWidget {

  const NonShippedWidget({
    super.key,
  });

  @override
  State<NonShippedWidget> createState() => _CreateState();
}

class _CreateState extends State<NonShippedWidget> {

  final _filterData = [
    {'id': '', 'title': 'Date From:', 'type': 'calendar', 'value': ''},
    {'id': '', 'title': 'Date To:', 'type': 'calendar', 'value': ''},
  ];

  final _menuButtonData = [{'id': 'search', 'title': 'Search', },{'id': 'markAsShipped', 'title': 'Mark as Shipped', },];

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

  Future<(List<NonShippedModel>, bool)> _getData() async {
    List<NonShippedModel> _orderData = [];
    try {
      NonShippedColumn.data.forEach((element) {
        final data = NonShippedModel.fromJson(element);
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
        TableHeadWidget(menuButtonData: _menuButtonData, filterData: _filterData, callBack: (value){},),
        Expanded(
          child: OperanceDataTable<NonShippedModel>(
            showRowsPerPageOptions: false,
            selectable: true,
            columns: NonShippedColumn.columns,
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