import 'receive_pallet_movement.dart';

class ReceivePalletMovementPage extends StatefulWidget {

  const ReceivePalletMovementPage({
    super.key,
  });

  @override
  State<ReceivePalletMovementPage> createState() => _CreateState();
}

class _CreateState extends State<ReceivePalletMovementPage> {

  final List<Map<String, dynamic>> _detailData = [
    {'id': '', 'text': 'Item:',  'value': '10.0008.018', 'type': 'text', 'readOnly': '1'},
    {'id': '', 'text': 'Legacy Item:',  'value': '', 'type': 'text', 'readOnly': '1'},
    {'id': '', 'text': 'Pallet Move By:', 'value': '', 'type': 'text', 'readOnly': '1'},
    {'id': '', 'text': 'New Bin Type:', 'value': '', 'type': 'text', 'readOnly': '1'},
    {'id': '', 'text': 'Description:', 'value': '', 'type': 'text', 'readOnly': '1'},
    {'id': '', 'text': 'Pallet Move Start:', 'value': '', 'type': 'text', 'readOnly': '1'},
    {'id': '', 'text': 'Cases/Tier:', 'value': '', 'type': 'text', 'readOnly': '1'},
    {'id': '', 'text': 'Tiers/Pallet:', 'value': '', 'type': 'text', 'readOnly': '1'},
    {'id': '', 'text': 'Loose:', 'value': '', 'type': 'text', 'readOnly': '1'},
    {'id': '', 'text': 'Single:', 'value': '', 'type': 'text', 'readOnly': '1'},
    {'id': '', 'text': 'Unit/Case:', 'value': '', 'type': 'text', 'readOnly': '1'},
    {'id': '', 'text': 'Received Qty:', 'value': '', 'type': 'text', 'readOnly': '1'},
    {'id': '', 'text': 'FulFilled Qty:', 'value': '', 'type': 'text', 'readOnly': '1'},
    {'id': '', 'text': 'Current Qty:', 'value': '', 'type': 'text', 'readOnly': '1'},
    {'id': '', 'text': 'Pick Bins:', 'value': '', 'type': 'text', 'readOnly': '1'},
    {'id': '', 'text': 'Hold Requester:', 'value': '', 'type': 'text', 'readOnly': '1'},
    {'id': '', 'text': 'Reason:', 'value': '', 'type': 'text', 'readOnly': '0'},
    {'id': '', 'text': 'New Bin:', 'value': '', 'type': 'text', 'readOnly': '0'},
    {'id': '', 'text': 'Move Qty:', 'value': '', 'type': 'text', 'readOnly': '0'},
    {'id': '', 'text': 'Hold:', 'value': '', 'type': 'select', 'readOnly': ''},
    {'id': '', 'text': 'Bypass Bin Spec:', 'value': '', 'type': 'checkBox', 'readOnly': ''},
  ];

  final List<ReceivePalletMovementCurrentBinModel> _currentBinData = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    ReceivePalletMovementCurrentBinColumn.data.forEach((e) {
      _currentBinData.add(ReceivePalletMovementCurrentBinModel.fromJson(e));
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      route: '/receive_pallet_movement',
      title: 'Receiving / Pallet Movement',
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                SearchTextFieldWidget(title: 'License#', titleWidth: 20, textWidth: 80,),
                SizedBox(width: 8.w),
                BaseText(text: 'Search', bgColor: Colors.blue, textColor: Colors.white, padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10), borderRadius: 2,),
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 10.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  BaseText(text: 'Current Bin', bgColor: Colors.blue, textColor: Colors.white, padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10), borderRadius: 2, onTap: () {
                    PopTable.show(context, 'Current Bin', _currentBinData, ReceivePalletMovementCurrentBinColumn.columns);
                  },),
                  Padding(padding: EdgeInsets.all(10), child: Wrap(
                    spacing: 8.w,
                    runSpacing: 8.h,
                    alignment: WrapAlignment.start,
                    children: List.generate(_detailData.length, (index) {
                      final filter = _detailData[index];
                      Widget? widget;
                      if (filter['type'] == 'select') {
                        widget = SearchDropdownWidget(
                          title: filter['text']!,
                          titleWidth: 30,
                          onChanged: (value) {},);
                      } else if (filter['type'] == 'checkBox') {
                        widget = SearchCheckBoxWidget(
                          title: filter['text']!,
                          titleWidth: 30,
                          onChanged: (value) {},);
                      } else {
                        widget = SearchTextFieldWidget(
                          title: filter['text']!,
                          titleWidth: 30,
                        );
                      }
                      return SizedBox(
                        width: 80.w,
                        child: widget,
                      );
                    }),
                  ),),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      BaseText(text: 'Cancel', bgColor: Colors.blue, textColor: Colors.white, padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10), borderRadius: 2,),
                      SizedBox(width: 8.w),
                      BaseText(text: 'Save', bgColor: Colors.blue, textColor: Colors.white, padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10), borderRadius: 2,),
                      SizedBox(width: 8.w),
                      BaseText(text: 'Save & Print', bgColor: Colors.blue, textColor: Colors.white, padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10), borderRadius: 2,),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}