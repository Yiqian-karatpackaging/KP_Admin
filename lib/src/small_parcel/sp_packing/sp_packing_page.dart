import 'package:kp_admin/src/small_parcel/small_parcel.dart';

import 'sp_packing.dart';

class SPPackingPage extends StatefulWidget {

  const SPPackingPage({
    super.key,
  });

  @override
  State<SPPackingPage> createState() => _CreateState();
}

class _CreateState extends State<SPPackingPage> {

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
    {'title': 'Saturday Delivery: ', 'value': '108933689452330'},
  ];

  final _menuButtonData = [
    {'id': 'addBox', 'title': 'Add Box'},
    {'id': 'CompleteBox', 'title': 'Complete Box'},
    {'id': 'Pause', 'title': 'Pause'},
    {'id': 'UnPause', 'title': 'UnPause'},
    {'id': 'CreateItemFulfillment', 'title': 'Create Item Fulfillment'},
    {'id': 'CreateShipment', 'title': 'CreateShipment'},
    {'id': 'Complete', 'title': 'Complete'},
    {'id': 'UnComplete', 'title': 'UnComplete'},
    {'id': 'UnpackAll', 'title': 'UnpackAll'},
    {'id': 'ClearNSFulfilledQTY', 'title': 'Clear NS Fulfilled QTY'},
    {'id': 'PackingSlip', 'title': 'Packing Slip'},
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

  Future<(List<SPPackingModel>, bool)> _getData() async {
    List<SPPackingModel> orderData = [];
    try {
      for (var element in SPPackingColumn.data) {
        final data = SPPackingModel.fromJson(element);
        orderData.add(data);
      }
      return (orderData, false);
    } catch (e) {
      return (orderData, false);
    }
  }

  Future<void> _menuButtonClick(Map<String, dynamic> info) async {
    switch (info['id']) {
      case 'addBox':
        AddBox.show(context);
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      route: '/sp_packing',
      title: 'Small Parcel / SP Packing',
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
          TableHeadWidget(menuButtonData: _menuButtonData, callBack: (value) => _menuButtonClick(value)),
          SizedBox(
            height: 200.h,
            child: OperanceDataTable<SPPackingModel>(
              showRowsPerPageOptions: false,
              showFooter: false,
              columns: SPPackingColumn.leftColumns,
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
            child: OperanceDataTable<SPPackingModel>(
              showRowsPerPageOptions: false,
              showFooter: false,
              columns: SPPackingColumn.rightColumns,
              // decoration: OperanceDataDecoration(sizes: OperanceDataSizes(rowHeight: 80.h)),
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