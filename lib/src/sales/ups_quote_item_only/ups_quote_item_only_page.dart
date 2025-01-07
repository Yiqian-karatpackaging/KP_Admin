import 'ups_quote_item_only.dart';

class UPSQuoteItemOnlyPage extends StatefulWidget {

  const UPSQuoteItemOnlyPage({
    super.key,
  });

  @override
  State<UPSQuoteItemOnlyPage> createState() => _CreateState();
}

class _CreateState extends State<UPSQuoteItemOnlyPage> {
  final _filterData = [
    {'id': '', 'title': 'From WH:', 'type': 'select', 'value': ''},
    {'id': '', 'title': 'Ship To State:', 'type': 'select', 'value': ''},
    {'id': '', 'title': 'Item/Legacy:', 'type': 'textFile', 'value': ''},
    {'id': '', 'title': 'Ship To Address:', 'type': 'textFile', 'value': ''},
    {'id': '', 'title': 'Ship To ZipCode:', 'type': 'textFile', 'value': ''},
    {'id': '', 'title': 'Ship To City:', 'type': 'textFile', 'value': ''},
    {'id': '', 'title': 'Shipping Date:', 'type': 'calendar', 'value': ''},
    {'id': '', 'title': 'Return Ship:', 'type': 'checkBox', 'value': ''},
    {'id': '', 'title': 'Saturday Delivery:', 'type': 'checkBox', 'value': ''},
  ];

  final _menuButtonData = [
    {'id': 'search', 'title': 'Search'},
    {'id': 'downloadImage', 'title': 'DownloadImage'},
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

  Future<(List<UpsQuoteItemOnlyModel>, bool)> _getData() async {
    List<UpsQuoteItemOnlyModel> _orderData = [];
    try {
      UpsQuoteItemOnlyColumn.data.forEach((element) {
        final data = UpsQuoteItemOnlyModel.fromJson(element);
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
      route: '/ups_quote_item_only',
      title: 'Sales / UPS Quote (Item Only)',
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TableHeadWidget(
            filterData: _filterData,
            menuButtonData: _menuButtonData,
            // callBack: (value) => _headButtonClick(value),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height - 100,
            child: OperanceDataTable<UpsQuoteItemOnlyModel>(
              columns: UpsQuoteItemOnlyColumn.columns,
              decoration: OperanceDataDecoration(
                  sizes: OperanceDataSizes(rowHeight: 60.h)),
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
          ),
        ],
      ),
    );
  }
}