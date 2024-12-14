import 'ns_adjustment_review.dart';

class NSAdjustmentReviewPage extends StatefulWidget {

  const NSAdjustmentReviewPage({
    super.key,
  });

  @override
  State<NSAdjustmentReviewPage> createState() => _CreateState();
}

class _CreateState extends State<NSAdjustmentReviewPage> {

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

  Future<(List<NSAdjustmentReviewModel>, bool)> _getData() async {
    List<NSAdjustmentReviewModel> _orderData = [];
    try {
      NSAdjustmentReviewColumn.data.forEach((element) {
        final data = NSAdjustmentReviewModel.fromJson(element);
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
      route: '/ns_adjustment_review',
      title: 'Inventory / NS Adjustment Review',
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
            child: OperanceDataTable<NSAdjustmentReviewModel>(
              showRowsPerPageOptions: false,
              selectable: true,
              columns: NSAdjustmentReviewColumn.columns,
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