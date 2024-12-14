import 'package:kp_admin/src/shipping/queue/queue.dart';

class PalletIdMovementHeadWidget extends StatefulWidget {
  const PalletIdMovementHeadWidget({
    super.key,
  });

  @override
  State<PalletIdMovementHeadWidget> createState() => _CreateState();
}

class _CreateState extends State<PalletIdMovementHeadWidget> {

  bool _showBin = false;

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
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 10.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              SearchTextFieldWidget(
                title: 'PalletID:',
                textWidth: 80,
                titleWidth: 20,
                onFieldSubmitted: (value) {
                  setState(() {
                    _showBin = true;
                  });
                },
              ),
              SizedBox(width: 4.w),
              SearchButtonWidget(title: 'Search', onTap: () {}),
            ],
          ),
          Visibility(
              visible: _showBin,
              child: Container(
                margin: EdgeInsets.only(top: 10.h),
                child: Row(
                  children: [
                    BaseText(text: 'Current Bin: 001-001E '),
                    SearchTextFieldWidget(
                      title: 'New Bin:',
                      textWidth: 80,
                      titleWidth: 20,
                    ),
                    SizedBox(width: 4.w),
                    SearchButtonWidget(title: 'Save', onTap: () {
                      setState(() {
                        _showBin = true;
                      });
                    }),
                  ],
                ),
              ),),
        ],
      ),
    );
  }
}
