import 'package:kp_admin/src/shipping/wh_movement/wh_movement.dart';

class WHMovementPage extends StatefulWidget {
  const WHMovementPage({
    super.key,
  });

  @override
  State<WHMovementPage> createState() => _CreateState();
}

class _CreateState extends State<WHMovementPage> {
  List<Map<String, String>> _data = [
    {'id': '', 'title': 'Current Bin:', 'type': '', 'value': 'INVCSTM-B'},
    {'id': '', 'title': 'Cases/Tier:', 'type': '', 'value': '6'},
    {'id': '', 'title': 'Tiers/Pallet:', 'type': '', 'value': '0'},
    {'id': '', 'title': 'Loose:', 'type': '', 'value': '1'},
    {'id': '', 'title': 'Received Qty:', 'type': '', 'value': '1'},
    {'id': '', 'title': 'Single:', 'type': '', 'value': '1'},
    {'id': '', 'title': 'FulFilled Qty:', 'type': '', 'value': '1'},
    {'id': '', 'title': 'Unit/Case:', 'type': '', 'value': '1'},
    {'id': '', 'title': 'Current Qty:', 'type': '', 'value': '1'},
    {'id': '', 'title': 'Item:', 'type': '', 'value': '81.2922.727'},
    {'id': '', 'title': 'Move Qty:', 'type': '', 'value': '1'},
    {'id': '', 'title': 'Legacy Item:', 'type': '', 'value': 'C51456'},
    {
      'id': '',
      'title': 'Move Start:',
      'type': '',
      'value': '1/7/2023 1:53:19 PM'
    },
    {'id': '', 'title': 'Move By:', 'type': '', 'value': 'fcj'},
    {'id': '', 'title': 'New Bin:', 'type': '', 'value': ''},
    {'id': '', 'title': 'Hold:', 'type': '', 'value': ''},
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

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      route: '/wh_movement',
      title: 'Shipping / WH Movement',
      body: Container(
        alignment: Alignment.topLeft,
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SearchTextFieldWidget(
              title: 'License#',
              textWidth: 100,
              titleWidth: 20,
            ),
            Visibility(
              visible: true,
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 10.w,
                  vertical: 8.h,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Wrap(
                      spacing: 8.w, // 子组件之间的水平间距
                      runSpacing: 4.w,
                      alignment: WrapAlignment.start, // 主轴方向对齐方式
                      children: List.generate(_data.length, (index) {
                        final info = _data[index];
                        return IntrinsicWidth(
                          child: Row(
                            mainAxisSize: MainAxisSize.min, // 确保宽度根据内容适应
                            children: [
                              BaseText(text: info['title']!),
                              const SearchTextFieldWidget(
                                title: '',
                                titleWidth: 0,
                                readOnly: true,
                              ),
                            ],
                          ),
                        );
                      }),
                    ),
                    SizedBox(height: 10.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        BaseText(text: 'Description:'),
                        Expanded(
                            child: BaseText(
                                text:
                                    'Custom PET Cup 16 oz (Lees) 4-color, Offset Print [C51456]Custom PET Cup 16 oz (Lees) 4-color, Offset Print [C51456]Custom PET Cup 16 oz (Lees) 4-color, Offset Print [C51456]Custom PET Cup 16 oz (Lees) 4-color, Offset Print [C51456]Custom PET Cup 16 oz (Lees) 4-color, Offset Print [C51456]')),
                      ],
                    ),
                    SizedBox(height: 10.h),
                    Row(
                      children: [
                        SearchButtonWidget(title: 'Cancel', onTap: () {}),
                        SearchButtonWidget(title: 'Save', onTap: () {}),
                        SearchButtonWidget(title: 'Save & Print', onTap: () {}),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
