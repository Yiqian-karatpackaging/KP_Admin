import 'package:kp_admin/src/shipping/so_pick/so_pick.dart';

class LicenseScanPage extends StatefulWidget {

  /// 选择的Pick
  final SoPickModel? soPickModel;

  const LicenseScanPage({
    super.key,
    this.soPickModel,
  });

  @override
  State<LicenseScanPage> createState() => _CreateState();
}

class _CreateState extends State<LicenseScanPage> {
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
    return SizedBox(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 20.h, left: 20.w),
            child: Row(
              children: [
                SearchTextFieldWidget(
                  title: 'UPC | GTIN | Item# | Lic#:',
                  text: widget.soPickModel?.itemCode ?? '',
                  textWidth: 80,
                  onFieldSubmitted: (value) {
                    print('UPC | GTIN | Item# | Lic#: $value');
                  },
                ),
                SizedBox(width: 5.w),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/scan');
                  },
                  child: const Icon(Icons.settings_overscan),
                ),
                GestureDetector(
                  onTap: () {
                    EasyLoading.showToast("Clear");
                  },
                  child: Container(
                    margin: EdgeInsets.only(left: 5.w),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(4)),
                      border: Border.all(
                        color: Colors.black12,
                      ),
                      color: Colors.white10,
                    ),
                    padding:
                        EdgeInsets.symmetric(vertical: 2.w, horizontal: 5.w),
                    child: BaseText(text: 'C'),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 20.h),
            child: const Row(
              // mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SearchTextFieldWidget(
                  title: 'Item Code:',
                  readOnly: true,
                  text: '0',
                ),
                SearchTextFieldWidget(
                  title: 'Picked Qty:',
                  readOnly: true,
                  text: '0',
                ),
                SearchTextFieldWidget(
                  title: 'Pre Scan:',
                  readOnly: true,
                  text: '0',
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 20.h),
            child: const Row(
              // mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SearchTextFieldWidget(
                  title: 'LicenseId:',
                  readOnly: true,
                  text: '0',
                ),
                SearchTextFieldWidget(
                  title: 'Each Qty:',
                  readOnly: true,
                  text: '0',
                ),
                SearchTextFieldWidget(
                  title: 'Case Qty:',
                  readOnly: true,
                  text: '0',
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 20.h),
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SearchTextFieldWidget(
                  title: 'FulFill Qty:',
                  text: '1',
                  onChanged: (value) {
                    print('FulFill Qty: $value');
                  },
                ),
                const SearchTextFieldWidget(
                  title: 'Ord Qty:',
                  readOnly: true,
                  text: '0',
                ),
                const SearchTextFieldWidget(
                  title: 'Balance Scan:',
                  readOnly: true,
                  text: '0',
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 20.h),
            child: const Row(
              // mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SearchTextFieldWidget(
                  title: 'Lic Qty:',
                  readOnly: true,
                  text: '0',
                ),
                SearchTextFieldWidget(
                  title: 'Lot#:',
                  readOnly: true,
                  text: '0',
                ),
                SearchTextFieldWidget(
                  title: 'Unit/Case:',
                  readOnly: true,
                  text: '0',
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 20.h),
            child: const Row(
              // mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SearchTextFieldWidget(
                  title: 'Pallet:',
                  readOnly: true,
                  text: '0',
                ),
                SearchTextFieldWidget(
                  title: 'TI:',
                  readOnly: true,
                  text: '0',
                ),
                SearchTextFieldWidget(
                  title: 'Pallet Qty:',
                  readOnly: true,
                  text: '0',
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 20.h),
            child: SearchCheckBoxWidget(title: 'Pick Palle:', onChanged: (value) {
              print('Pick Palle: $value');
            },),
          ),
          Padding(
            padding: EdgeInsets.only(top: 40.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      vertical: 2.w,
                      horizontal: 5.w,
                    ),
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(2)),
                      color: Colors.blue,
                    ),
                    child: BaseText(
                        text: 'Save & Continue', textColor: Colors.white),
                  ),
                ),
                SizedBox(width: 10.w),
                GestureDetector(
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      vertical: 2.w,
                      horizontal: 5.w,
                    ),
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(2)),
                      color: Colors.blue,
                    ),
                    child: BaseText(
                      text: 'End Pallet',
                      textColor: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
