import '../shipping_quote.dart';

class ShippingQuoteListWidget extends StatefulWidget {

  const ShippingQuoteListWidget({
    super.key,
  });

  @override
  State<ShippingQuoteListWidget> createState() => _CreateState();
}

class _CreateState extends State<ShippingQuoteListWidget> {

  final _menuButtonData = [
    {'id': 'export', 'title': 'Export', },
    {'id': 'save', 'title': 'Save', },
    {'id': 'recalculate', 'title': 'Recalculate', },
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

  Future<(List<ShippingQuoteListModel>, bool)> _getData() async {
    List<ShippingQuoteListModel> _orderData = [];
    try {
      ShippingQuoteListColumn.data.forEach((element) {
        final data = ShippingQuoteListModel.fromJson(element);
        _orderData.add(data);
      });
      return (_orderData, false);
    } catch (e) {
      return (_orderData, false);
    }
  }

  Future<(List<ShippingQuoteListDetailModel>, bool)> _getDetailData() async {
    List<ShippingQuoteListDetailModel> _orderData = [];
    try {
      ShippingQuoteListDetailColumn.data.forEach((element) {
        final data = ShippingQuoteListDetailModel.fromJson(element);
        _orderData.add(data);
      });
      return (_orderData, false);
    } catch (e) {
      return (_orderData, false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 5),
        BaseText(text: 'Person Name:'),
        SizedBox(height: 5),
        BaseText(text: 'Ship To Address:'),
        TableHeadWidget(menuButtonData: _menuButtonData, callBack: (){}),
        SizedBox(
          height: 150.h,
          child: OperanceDataTable<ShippingQuoteListModel>(
            showFooter: false,
            columns: ShippingQuoteListColumn.columns,
            emptyStateBuilder: (BuildContext context) => EmptyWidget(),
            onFetch: (limit, sort, {bool isInitial = true}) async {
              return _getData();
            },
            loadingStateBuilder: (BuildContext context) {
              return Center(
                child: CircularProgressIndicator(),
              );
            },
          ),
        ),
        Expanded(
          child: OperanceDataTable<ShippingQuoteListDetailModel>(
            selectable: true,
            columns: ShippingQuoteListDetailColumn.columns,
            emptyStateBuilder: (BuildContext context) => EmptyWidget(),
            onFetch: (limit, sort, {bool isInitial = true}) async {
              return _getDetailData();
            },
            loadingStateBuilder: (BuildContext context) {
              return Center(
                child: CircularProgressIndicator(),
              );
            },
          ),
        )
      ],
    );
  }
}