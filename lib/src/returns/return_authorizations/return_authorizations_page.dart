import 'return_authorizations.dart';

class ReturnAuthorizationsPage extends StatefulWidget {

  const ReturnAuthorizationsPage({
    super.key,
  });

  @override
  State<ReturnAuthorizationsPage> createState() => _CreateState();
}

class _CreateState extends State<ReturnAuthorizationsPage> {

  final _filterData = [
    {'id': '', 'title': 'Tran Date From:', 'type': 'calendar', 'value': ''},
    {'id': '', 'title': 'Tran Date To:', 'type': 'calendar', 'value': ''},

    {'id': '', 'title': 'RACode:', 'type': 'textFle', 'value': ''},
    {'id': '', 'title': 'Receiver Assigned To:', 'type': 'textFle', 'value': ''},
    {'id': '', 'title': 'Receiver Started By:', 'type': 'textFle', 'value': ''},
    {'id': '', 'title': 'Received By:', 'type': 'textFle', 'value': ''},

    {'id': '', 'title': 'WH:', 'type': 'select', 'value': ''},
    {'id': '', 'title': 'Order Status:', 'type': 'textFile', 'value': ''},
  ];

  final _menuButtonData = [
    {'id': 'search', 'title': 'Search'},
    {'id': 'excel', 'title': 'Excel'},
    {'id': 'csv', 'title': 'CSV'},
    {'id': 'batchAssign', 'title': 'Batch Assign'},
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

  Future<(List<ReturnAuthorizationsModel>, bool)> _getData() async {
    List<ReturnAuthorizationsModel> _orderData = [];
    try {
      ReturnAuthorizationsColumn.data.forEach((element) {
        final data = ReturnAuthorizationsModel.fromJson(element);
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
      route: '/return_authorizations',
      title: 'Returns / Return Authorizations',
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TableHeadWidget(
            filterData: _filterData,
            menuButtonData: _menuButtonData,
            // callBack: (value) => _headButtonClick(value),
          ),
          SizedBox(
            height: usableHeight(context),
            child: OperanceDataTable<ReturnAuthorizationsModel>(
              columns: ReturnAuthorizationsColumn.columns,
              emptyStateBuilder: (BuildContext context) => const EmptyWidget(),
              onFetch: (limit, sort, {bool isInitial = true}) async {
                return _getData();
              },
              loadingStateBuilder: (BuildContext context) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
