import 'sp_packing_gls.dart';

class SPPackingGlsPage extends StatefulWidget {

  const SPPackingGlsPage({
    super.key,
  });

  @override
  State<SPPackingGlsPage> createState() => _CreateState();
}

class _CreateState extends State<SPPackingGlsPage> {

  final List<Map<String, String>> _detailInfo = [
    {'title': 'Customer Name: ', 'value': 'Walmart.com'},
    {'title': 'Ship Address: ', 'value': 'Sunghye Cho 2063831494 921 Arthur Street Suite A (happy teriyaki) Caldwell ID 83605 United States'},
    {'title': 'PO: ', 'value': '108933689452330'},
    {'title': 'Delivery Instructions: ', 'value': ' '},
    {'title': 'Support Rep: ', 'value': 'E-BIZ WMT'},
    {'title': 'Ship Method: ', 'value': 'SP_UPS Ground'},
    {'title': 'Pack Start By: ', 'value': 'Klein'},
    {'title': 'Ship Via: ', 'value': 'SP_UPS Ground'},
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

  Future<(List<SPPackingGlsModel>, bool)> _getData() async {
    List<SPPackingGlsModel> orderData = [];
    try {
      for (var element in SPPackingGlsColumn.data) {
        final data = SPPackingGlsModel.fromJson(element);
        orderData.add(data);
      }
      return (orderData, false);
    } catch (e) {
      return (orderData, false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      route: '/sp_packing_gls',
      title: 'Small Parcel / SP Packing GLS',
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Row(
            children: [
              SearchTextFieldWidget(
                title: 'SO#',
                titleWidth: 20,
                textWidth: 100,
              ),
              SizedBox(width: 8),
              BaseText(
                text: 'Search',
                bgColor: Colors.blue,
                textColor: Colors.white,
                padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                borderRadius: 2,
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 5.w, horizontal: 10.w),
            child: Wrap(
              spacing: 8.w,
              runSpacing: 8.h,
              alignment: WrapAlignment.start,
              children: List.generate(_detailInfo.length, (index) {
                return RichText(
                  text: TextSpan(
                    text: _detailInfo[index]['title'],
                    style: TextStyle(fontSize: 14, color: Colors.black),
                    children: [
                      TextSpan(
                        text: _detailInfo[index]['value'], // 第二段文字
                        style: const TextStyle(
                            decoration: TextDecoration.underline),
                      ),
                    ],
                  ),
                );
              }),
            ),
          ),
          SizedBox(
            height: 200.h,
            child: OperanceDataTable<SPPackingGlsModel>(
              showRowsPerPageOptions: false,
              showFooter: false,
              columns: SPPackingGlsColumn.leftColumns,
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
          SizedBox(
            height: 200.h,
            child: OperanceDataTable<SPPackingGlsModel>(
              showRowsPerPageOptions: false,
              showFooter: false,
              columns: SPPackingGlsColumn.rightColumns,
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
        ],
      ),
    );
  }
}
