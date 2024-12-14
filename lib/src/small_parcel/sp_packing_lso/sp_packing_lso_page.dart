import 'sp_packing_lso.dart';

class SPPackingLsoPage extends StatefulWidget {

  const SPPackingLsoPage({
    super.key,
  });

  @override
  State<SPPackingLsoPage> createState() => _CreateState();
}

class _CreateState extends State<SPPackingLsoPage> {

  final List<Map<String, String>> _detailInfo = [
    {'title': 'Customer Name: ', 'value': 'Walmart.com'},
    {
      'title': 'Ship Address: ',
      'value':
      'Sunghye Cho 2063831494 921 Arthur Street Suite A (happy teriyaki) Caldwell ID 83605 United States'
    },
    {'title': 'PO: ', 'value': '108933689452330'},
    {'title': 'Delivery Instructions: ', 'value': ' '},
    {'title': 'Support Rep: ', 'value': 'E-BIZ WMT'},
    {'title': 'Pack Start By: ', 'value': 'sharon.xie'},
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

  Future<(List<SPPackingLsoModel>, bool)> _getData() async {
    List<SPPackingLsoModel> orderData = [];
    try {
      for (var element in SPPackingLsoColumn.data) {
        final data = SPPackingLsoModel.fromJson(element);
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
      route: '/sp_packing_lso',
      title: 'Small Parcel / SP Packing LSO',
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
                        text: _detailInfo[index]['value'],
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
            child: OperanceDataTable<SPPackingLsoModel>(
              showRowsPerPageOptions: false,
              showFooter: false,
              columns: SPPackingLsoColumn.leftColumns,
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
            child: OperanceDataTable<SPPackingLsoModel>(
              showRowsPerPageOptions: false,
              showFooter: false,
              columns: SPPackingLsoColumn.rightColumns,
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