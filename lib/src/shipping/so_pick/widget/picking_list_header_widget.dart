import 'package:kp_admin/src/shipping/so_pick/so_pick.dart';

class PickingListHeaderWidget extends StatefulWidget {
  const PickingListHeaderWidget({
    super.key,
  });

  @override
  State<PickingListHeaderWidget> createState() => _CreateState();
}

class _CreateState extends State<PickingListHeaderWidget> {
  final _infoData = [
    {'title': 'Truck No: ', 'detail': 'Truck No: '},
    {'title': 'Route#: ', 'detail': 'Route# '},
    {'title': 'Stop#: ', 'detail': 'Stop# '},
    {'title': 'WH: ', 'detail': 'WH '},
    {'title': 'Customer: ', 'detail': 'Customer '},
    {'title': 'Category: ', 'detail': 'Category '},
    {'title': 'Sales Rep: ', 'detail': 'Sales Rep '},
    {'title': 'Ship Method: ', 'detail': 'Ship Method '},
    {'title': 'Delivery Instructions: ', 'detail': 'Delivery Instructions '},
    {'title': 'Pick Started By: ', 'detail': 'Pick Started By '}
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
    return Container(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Wrap(
          //     spacing: 4.w,
          //     runSpacing: 4.w,
          //     children: _infoData.map((e) {
          //       return Row(
          //         children: [
          //           BaseText(text: e['title']!),
          //           SizedBox(width: 2.w),
          //           BaseText(text: e['detail']!, textDecoration: TextDecoration.underline,),
          //         ],
          //       );
          //     }).toList()
          //   // children: List.generate(_infoData.length, (index) {
          //   //   return Row(
          //   //     children: [
          //   //       BaseText(text: _infoData[index]['title']!),
          //   //       SizedBox(width: 2.w),
          //   //       BaseText(text: _infoData[index]['detail']!, textDecoration: TextDecoration.underline,),
          //   //     ],
          //   //   );
          //   // }),
          // ),
        ],
      ),
    );
  }
}
