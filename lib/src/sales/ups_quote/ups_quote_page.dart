import 'ups_quote.dart';

class UPSQuotePage extends StatefulWidget {

  const UPSQuotePage({
    super.key,
  });

  @override
  State<UPSQuotePage> createState() => _CreateState();
}

class _CreateState extends State<UPSQuotePage> {
  final _filterData = [
    {'id': '', 'title': 'SO#:', 'type': 'textFile', 'value': ''},
    {'id': '', 'title': 'Shipping Date:', 'type': 'calendar', 'value': ''},
    {'id': '', 'title': 'Number of Packages:', 'type': 'select', 'value': ''},
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

  Future<(List<UpsQuoteModel>, bool)> _getData() async {
    List<UpsQuoteModel> _orderData = [];
    try {
      UpsQuoteColumn.data.forEach((element) {
        final data = UpsQuoteModel.fromJson(element);
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
      route: '/ups_quote',
      title: 'Sales / UPS Quote',
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
            child: OperanceDataTable<UpsQuoteModel>(
              columns: UpsQuoteColumn.columns,
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
          )
        ],
      ),
    );
  }
}
