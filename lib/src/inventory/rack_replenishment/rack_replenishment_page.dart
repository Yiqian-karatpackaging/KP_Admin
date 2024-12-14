import 'rack_replenishment.dart';

class RackReplenishmentPage extends StatefulWidget {

  const RackReplenishmentPage({
    super.key,
  });

  @override
  State<RackReplenishmentPage> createState() => _CreateState();
}

class _CreateState extends State<RackReplenishmentPage> {

  final _filterData = [
    {'id': '', 'title': 'License#:', 'type': 'text', 'value': ''},
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

  Future<(List<RackReplenishmentModel>, bool)> _getData() async {
    List<RackReplenishmentModel> _orderData = [];
    try {
      RackReplenishmentColumn.data.forEach((element) {
        final data = RackReplenishmentModel.fromJson(element);
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
      route: '/rack_replenishment',
      title: 'Inventory / Rack Replenishment',
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
            child: OperanceDataTable<RackReplenishmentModel>(
              showRowsPerPageOptions: false,
              columns: RackReplenishmentColumn.columns,
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