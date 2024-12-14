import 'package:kp_admin/src/shipping/so_fulfill_history/so_fulfill_history.dart';

class SOFulfillHistoryPage extends StatefulWidget {

  const SOFulfillHistoryPage({
    super.key,
  });

  @override
  State<SOFulfillHistoryPage> createState() => _CreateState();
}

class _CreateState extends State<SOFulfillHistoryPage> {

  final _filterData = [
    {'id': '', 'title': 'Ship DateFrom:', 'type': 'calendar', 'value': ''},
    {'id': '', 'title': 'Ship DateTo:', 'type': 'calendar', 'value': ''},
    {'id': '', 'title': 'Loc:', 'type': 'select', 'value': ''},
    {'id': '', 'title': 'Order Status:', 'type': 'select', 'value': ''},
    {'id': '', 'title': 'Sales Ord#:', 'type': 'textFile', 'value': ''},
    {'id': '', 'title': 'Pick Started By:', 'type': 'textFile', 'value': ''},
    {'id': '', 'title': 'Customer Name:', 'type': 'textFile', 'value': ''},
    {'id': '', 'title': 'Ship Via:', 'type': 'textFile', 'value': ''},
  ];

  final _menuButtonData = [{'id': 'search', 'title': 'Search', },];

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

  Future<(List<SoFulfillHistoryModel>, bool)> _getData() async {
    List<SoFulfillHistoryModel> _orderData = [];
    try {
      SOFulfillHistoryColumn.data.forEach((element) {
        final data = SoFulfillHistoryModel.fromJson(element);
        _orderData.add(data);
      });
      return (_orderData, false);
    } catch (e) {
      return (_orderData, false);
    }
  }

  List<SOFulfillHistoryExpansionModel> _getExpansionData() {
    List<SOFulfillHistoryExpansionModel> _orderData = [];
    SOFulfillHistoryExpansionColumn.data.forEach((element) {
      final data = SOFulfillHistoryExpansionModel.fromJson(element);
      _orderData.add(data);
    });
    return _orderData;
  }

  void _columnClick(String type, dynamic info) {
    if (type == 'salesOrd') {
      Navigator.pushNamed(context, '/so_pick');
    } else if (type == 'name') {
        List<SOFulfillHistoryExpansionNameModel> data = [];
        SOFulfillHistoryExpansionNameColumn.data.forEach((element) {
          data.add(SOFulfillHistoryExpansionNameModel.fromJson(element));
        });
        PopTable.show(context, info.name, data, SOFulfillHistoryExpansionNameColumn.columns);
    } else if (type == 'bin') {
      List<SOFulfillHistoryExpansionBinModel> data = [];
      SOFulfillHistoryExpansionBinColumn.data.forEach((element) {
        data.add(SOFulfillHistoryExpansionBinModel.fromJson(element));
      });
      PopTable.show(context, info.name, data, SOFulfillHistoryExpansionBinColumn.columns);
    }
  }

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      route: '/so_fulfill_history',
        title: 'Shipping / SO FulFill History',
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TableHeadWidget(filterData: _filterData, menuButtonData: _menuButtonData, callBack: () {},),
          SizedBox(
            height: MediaQuery.of(context).size.height - 100,
            child: OperanceDataTable<SoFulfillHistoryModel>(
              expandable: true,
              showRowsPerPageOptions: true,
              columns: SOFulfillHistoryColumn.columns((type, info) => _columnClick(type, info)),
              decoration: OperanceDataDecoration(sizes: OperanceDataSizes(rowHeight: 60.h)),
              emptyStateBuilder: (BuildContext context) => const EmptyWidget(),
              onFetch: (limit, sort, {bool isInitial = true}) async {
                return _getData();
              },
              loadingStateBuilder: (BuildContext context) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              },
              expansionBuilder: (value) {
                return ExpansionTableWidget(data: _getExpansionData(), column: SOFulfillHistoryExpansionColumn.columns((type, info) => _columnClick(type, info)));
              },
            ),
          ),
        ],
      )
    );
  }
}