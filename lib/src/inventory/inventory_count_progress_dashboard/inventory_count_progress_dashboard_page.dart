import 'inventory_count_progress_dashboard.dart';

class InventoryCountProgressDashboardPage extends StatefulWidget {

  const InventoryCountProgressDashboardPage({
    super.key,
  });

  @override
  State<InventoryCountProgressDashboardPage> createState() => _CreateState();
}

class _CreateState extends State<InventoryCountProgressDashboardPage> {

  final _filterData = [
    {'id': '', 'title': 'Count Date From:', 'type': 'calendar', 'value': ''},
    {'id': '', 'title': 'Count Date To:', 'type': 'calendar', 'value': ''},
    {'id': '', 'title': 'WH:', 'type': 'select', 'value': ''},
    {'id': '', 'title': 'Bin Area type:', 'type': 'select', 'value': ''},
    {'id': '', 'title': 'Inventory Item Type:', 'type': 'select', 'value': ''},
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

  Future<(List<InventoryCountProgressDashboardModel>, bool)> _getData() async {
    List<InventoryCountProgressDashboardModel> _orderData = [];
    try {
      InventoryCountProgressDashboardColumn.data.forEach((element) {
        final data = InventoryCountProgressDashboardModel.fromJson(element);
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
      route: '/inventory_count_progress_dashboard',
      title: 'Inventory / Inventory Count Progress Dashboard',
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TableHeadWidget(
            menuButtonData: _menuButtonData,
            filterData: _filterData,
            callBack: (value) {},
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
            child: Column(
              children: [
                Row(
                  children: [
                    BaseText(text: 'TotalLpns: 21924     '),
                    BaseText(text: 'TotalBins: 18849     '),
                    BaseText(text: 'CountedBins: 29     '),
                    BaseText(text: 'MatchBins: 29     '),
                    BaseText(text: 'Bins Not in CCID: 25     '),
                  ],
                ),
                SizedBox(height: 4),
                Row(
                  children: [
                    BaseText(text: 'LPN Completion Bar: 21924%     '),
                    BaseText(text: 'Bin Completion Bar: 18849%     '),
                    BaseText(text: 'Accuracy Bar: 29%     '),
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: usableHeight(context),
            child: Row(
              children: [
                Expanded(child: OperanceDataTable<InventoryCountProgressDashboardModel>(
                  showRowsPerPageOptions: false,
                  columns: InventoryCountProgressDashboardColumn.leftColumns,
                  emptyStateBuilder: (BuildContext context) => EmptyWidget(),
                  onFetch: (limit, sort, {bool isInitial = true}) async {
                    return _getData();
                  },
                  loadingStateBuilder: (BuildContext context) {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  },
                ),),
                SizedBox(width: 4.w),
                Expanded(child: OperanceDataTable<InventoryCountProgressDashboardModel>(
                  showRowsPerPageOptions: false,
                  columns: InventoryCountProgressDashboardColumn.rightColumns,
                  emptyStateBuilder: (BuildContext context) => EmptyWidget(),
                  onFetch: (limit, sort, {bool isInitial = true}) async {
                    return _getData();
                  },
                  loadingStateBuilder: (BuildContext context) {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  },
                ),),
              ],
            ),
          ),
        ],
      ),
    );
  }
}