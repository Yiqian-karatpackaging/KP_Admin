import 'freight_view_bol.dart';

class FreightViewBolPage extends StatefulWidget {

  const FreightViewBolPage({
    super.key,
  });

  @override
  State<FreightViewBolPage> createState() => _CreateState();
}

class _CreateState extends State<FreightViewBolPage> {
  final _filterData = [
    {'id': '', 'title': 'Date From:', 'type': 'calendar', 'value': ''},
    {'id': '', 'title': 'Date To:', 'type': 'calendar', 'value': ''},
    {'id': '', 'title': 'WH', 'type': 'select', 'value': ''},
    {'id': '', 'title': 'SO#:', 'type': 'textFile', 'value': ''},
    {'id': '', 'title': 'Complete:', 'type': 'checkBox', 'value': ''},
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

  Future<(List<FreightViewBolModel>, bool)> _getData() async {
    List<FreightViewBolModel> _orderData = [];
    try {
      FreightViewBolColumn.data.forEach((element) {
        final data = FreightViewBolModel.fromJson(element);
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
      route: '/freight_view_bol',
      title: 'Sales / Freight View BOL',
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
            child: OperanceDataTable<FreightViewBolModel>(
              columns: FreightViewBolColumn.columns,
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
