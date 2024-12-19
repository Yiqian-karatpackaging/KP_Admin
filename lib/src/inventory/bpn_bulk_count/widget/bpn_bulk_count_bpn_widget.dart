import '../bpn_bulk_count.dart';

class BPNBulkCountBpnWidget extends StatefulWidget {
  const BPNBulkCountBpnWidget({
    super.key,
  });

  @override
  State<BPNBulkCountBpnWidget> createState() => _CreateState();
}

class _CreateState extends State<BPNBulkCountBpnWidget> {
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
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(top: 20.h),
          child: Row(
            children: [
              SearchTextFieldWidget(
                title: 'BPN:',
                textWidth: 80,
              ),
              SizedBox(width: 4.w),
              BaseText(
                text: 'Search',
                bgColor: Colors.blue,
                textColor: Colors.white,
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
