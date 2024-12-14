import 'lpn_condense.dart';

class LPNCondensePage extends StatefulWidget {

  const LPNCondensePage({
    super.key,
  });

  @override
  State<LPNCondensePage> createState() => _CreateState();
}

class _CreateState extends State<LPNCondensePage> {


  final _filterData = [
    {'id': '', 'title': 'License#:', 'type': 'text', 'value': ''},
  ];

  final _menuButtonData = [
    {'id': 'search', 'title': 'Search'},
  ];

  final List<LPNCondenseExpansionModel> _expansionData = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    LPNCondenseColumn.data.forEach((element) {
      final data = LPNCondenseExpansionModel.fromJson(element);
      _expansionData.add(data);
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  Future<(List<LPNCondenseModel>, bool)> _getData() async {
    List<LPNCondenseModel> _orderData = [];
    try {
      LPNCondenseColumn.data.forEach((element) {
        final data = LPNCondenseModel.fromJson(element);
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
      route: '/lpn_condense',
      title: 'Inventory / LPN Condense',
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
            child: OperanceDataTable<LPNCondenseModel>(
              showRowsPerPageOptions: false,
              columns: LPNCondenseColumn.columns,
              expandable: true,
              expansionBuilder: (value) => ExpansionTableWidget(data: _expansionData, column: LPNCondenseExpansionColumn.columns),
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