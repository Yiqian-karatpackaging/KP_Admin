import 'cancel_orders_review.dart';

class CancelOrdersReviewPage extends StatefulWidget {

  const CancelOrdersReviewPage({
    super.key,
  });

  @override
  State<CancelOrdersReviewPage> createState() => _CreateState();
}

class _CreateState extends State<CancelOrdersReviewPage> {

  final _filterData = [
    {'id': '', 'title': 'WH:', 'type': 'select', 'value': ''},
    {'id': '', 'title': 'SO:', 'type': 'select', 'value': ''},
    {'id': '', 'title': 'Item Code:', 'type': 'text', 'value': ''},
    {'id': '', 'title': 'Legacy Item:', 'type': 'text', 'value': ''},
  ];

  final _menuButtonData = [
    {'id': 'search', 'title': 'Search'},
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

  Future<(List<CancelOrdersReviewModel>, bool)> _getData() async {
    List<CancelOrdersReviewModel> _orderData = [];
    try {
      CancelOrdersReviewColumn.data.forEach((element) {
        final data = CancelOrdersReviewModel.fromJson(element);
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
      route: '/cancel_orders_review',
      title: 'Inventory / Cancel Orders Review',
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
            child: OperanceDataTable<CancelOrdersReviewModel>(
              showRowsPerPageOptions: false,
              columns: CancelOrdersReviewColumn.columns,
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