import '../receive_scan.dart';

class ReceiveScanItemScanWidget extends StatefulWidget {

  const ReceiveScanItemScanWidget({
    super.key,
  });

  @override
  State<ReceiveScanItemScanWidget> createState() => _CreateState();
}

class _CreateState extends State<ReceiveScanItemScanWidget> {

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
                  title: 'UPC|GTIN|Item:',
                  // text: widget.soPickModel?.itemCode ?? '',
                  textWidth: 80,
                  onFieldSubmitted: (value) {
                    print('UPC | GTIN | Item# | Lic#: $value');
                  },
                ),
                SizedBox(width: 5.w),
                BaseText(text: 'C', bgColor: Colors.blue, textColor: Colors.white, padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10), borderRadius: 2,),
                SizedBox(width: 5.w),
                BaseText(text: 'Inventory', bgColor: Colors.blue, textColor: Colors.white, padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10), borderRadius: 2,),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 20.h),
            child: Row(
              children: [
                BaseStepperWidget(title: 'Cases/Tier:', onChanged: (value){}),
                BaseStepperWidget(title: 'Tiers/Pallet:', onChanged: (value){}),
                BaseStepperWidget(title: 'Cases:', onChanged: (value){}),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 20.h),
            child: Row(
              children: [
                BaseStepperWidget(title: 'LPN Qty:', onChanged: (value){}),
                SearchTextFieldWidget(
                  title: 'Received Qty:',
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
                  title: 'Country of Origin:',
                  readOnly: true,
                  text: '0',
                ),
                SearchTextFieldWidget(
                  title: 'LPN Pallet:',
                  readOnly: true,
                  text: '0',
                ),
                SearchTextFieldWidget(
                  title: 'Receive Date:',
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
                  title: 'Balance Qty:',
                  readOnly: true,
                  text: '0',
                ),
                SearchTextFieldWidget(
                  title: 'Bin:',
                  text: '0',
                ),
                SearchTextFieldWidget(
                  title: 'Gross Weight:',
                  text: '0',
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 20.h),
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SearchTextFieldWidget(
                  title: 'Expiration Date:',
                  text: '0',
                ),
                SearchDropdownWidget(
                  title: 'Hold:', onChanged: (value){},
                ),
                SearchDropdownWidget(
                  title: 'LPN Pallet Qty:',
                  onChanged: (value) {
                    print('Audit Qty: $value');
                  },
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 20.h),
            child: const Row(
              children: [
                SearchTextFieldWidget(
                  title: 'Reason:',
                  moreLine: true,
                  textWidth: 100,
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 20.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                BaseText(text: 'Save', bgColor: Colors.blue, textColor: Colors.white, padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10), borderRadius: 2,),
              ],
            ),
          ),
        ],
      ),
    );
  }
}