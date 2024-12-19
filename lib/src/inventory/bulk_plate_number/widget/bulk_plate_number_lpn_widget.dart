import '../bulk_plate_number.dart';

class BulkPlateNumberLpnWidget extends StatefulWidget {
  const BulkPlateNumberLpnWidget({
    super.key,
  });

  @override
  State<BulkPlateNumberLpnWidget> createState() => _CreateState();
}

class _CreateState extends State<BulkPlateNumberLpnWidget> {
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
                title: 'BPM#:',
                titleWidth: 20,
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
        Container(
          margin: EdgeInsets.only(top: 20.h),
          child: Row(
            children: [
              SearchTextFieldWidget(
                title: 'Bin:',
                titleWidth: 20,
                textWidth: 50,
              ),
              SizedBox(width: 4.w),
              SearchTextFieldWidget(
                title: 'SO#/TO:',
                titleWidth: 20,
                textWidth: 50,
              ),
              SizedBox(width: 4.w),
              SearchTextFieldWidget(
                title: 'Memo:',
                titleWidth: 20,
                textWidth: 50,
              ),
              SizedBox(width: 4.w),
              SearchCheckBoxWidget(
                title: 'Override:',
                onChanged: () {},
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 20.h),
          child: BaseText(
            text: 'Create BPN',
            bgColor: Colors.blue,
            textColor: Colors.white,
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 8.h),
          child: Row(
            children: [
              SearchTextFieldWidget(
                title: 'LPN:',
                titleWidth: 20,
                textWidth: 50,
              ),
              SizedBox(width: 4.w),
              SearchTextFieldWidget(
                title: 'Qty:',
                titleWidth: 20,
                textWidth: 50,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
