import 'fulfillment_adjustment_request.dart';

class FulfillmentAdjustmentRequestPage extends StatefulWidget {

  const FulfillmentAdjustmentRequestPage({
    super.key,
  });

  @override
  State<FulfillmentAdjustmentRequestPage> createState() => _CreateState();
}

class _CreateState extends State<FulfillmentAdjustmentRequestPage> {

  final _filterData = [
    {'id': '', 'title': 'Date From:', 'type': 'calendar', 'value': ''},
    {'id': '', 'title': 'Date To:', 'type': 'calendar', 'value': ''},
    {'id': '', 'title': 'WH:', 'type': 'select', 'value': ''},
    {'id': '', 'title': 'Item Code:', 'type': 'text', 'value': ''},
    {'id': '', 'title': 'Legacy:', 'type': 'text', 'value': ''},
    {'id': '', 'title': 'NS Adjust #:', 'type': 'text', 'value': ''},
    {'id': '', 'title': 'Adjusted:', 'type': 'checkBox', 'value': ''},
  ];

  final _menuButtonData = [
    {'id': 'search', 'title': 'Search'},
    {'id': 'createAdjustment', 'title': 'Create Adjustment'},
    {'id': 'changeMainMemo', 'title': 'Change Main Memo'},
    {'id': 'deleteFulfillmentAdjustment', 'title': 'Delete Fulfillment Adjustment'},
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

  Future<(List<FulfillmentAdjustmentRequestModel>, bool)> _getData() async {
    List<FulfillmentAdjustmentRequestModel> _orderData = [];
    try {
      FulfillmentAdjustmentRequestColumn.data.forEach((element) {
        final data = FulfillmentAdjustmentRequestModel.fromJson(element);
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
      route: '/fulfillment_adjustment_request',
      title: 'Inventory / Fulfillment Adjustment Request',
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
            child: OperanceDataTable<FulfillmentAdjustmentRequestModel>(
              showRowsPerPageOptions: false,
              selectable: true,
              columns: FulfillmentAdjustmentRequestColumn.columns,
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