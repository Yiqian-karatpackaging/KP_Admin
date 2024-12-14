import 'lpn_reprint_review.dart';

class LPNReprintReviewPage extends StatefulWidget {
  const LPNReprintReviewPage({
    super.key,
  });

  @override
  State<LPNReprintReviewPage> createState() => _CreateState();
}

class _CreateState extends State<LPNReprintReviewPage> {
  final _filterData = [
    {'id': '', 'title': 'Date From:', 'type': 'calendar', 'value': ''},
    {'id': '', 'title': 'Date To:', 'type': 'calendar', 'value': ''},
    {'id': '', 'title': 'WH:', 'type': 'select', 'value': ''},
    {'id': '', 'title': 'LPN:', 'type': 'text', 'value': ''},
    {'id': '', 'title': 'Duplicates:', 'type': 'checkBox', 'value': ''},
  ];

  final _menuButtonData = [
    {'id': 'search', 'title': 'Search'},
  ];

  final List<LPNReprintReviewExpansionModel> _expansionData = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _getExpansionData();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  void _getExpansionData() {
    LPNReprintReviewColumn.data.forEach((element) {
      final data = LPNReprintReviewExpansionModel.fromJson(element);
      _expansionData.add(data);
    });
  }

  Future<(List<LPNReprintReviewModel>, bool)> _getData() async {
    List<LPNReprintReviewModel> _orderData = [];
    try {
      LPNReprintReviewColumn.data.forEach((element) {
        final data = LPNReprintReviewModel.fromJson(element);
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
      route: '/lpn_reprint_review',
      title: 'Inventory / LPN Reprint Review',
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
            child: OperanceDataTable<LPNReprintReviewModel>(
              showRowsPerPageOptions: false,
              expandable: true,
              columns: LPNReprintReviewColumn.columns,
              expansionBuilder: (value) => ExpansionTableWidget(data: _expansionData, column: LPNReprintReviewExpansionColumn.columns),
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
