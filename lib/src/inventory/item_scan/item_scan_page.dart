import 'item_scan.dart';

class ItemScanPage extends StatefulWidget {

  const ItemScanPage({
    super.key,
  });

  @override
  State<ItemScanPage> createState() => _CreateState();
}

class _CreateState extends State<ItemScanPage> {

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
      route: '/item_scan',
      title: 'Inventory / Item Scan',
      body: Column(
        children: [
          Row(
            children: [
              SearchTextFieldWidget(
                title: '',
                textWidth: 20.w,
              ),
              SearchTextFieldWidget(
                title: 'Item#:',
                textWidth: 20.w,
              ),
              Container(
                margin: EdgeInsets.only(left: 8.w),
                child: BaseText(
                  text: 'Search',
                  bgColor: Colors.blue,
                  textColor: Colors.white,
                  padding: EdgeInsets.symmetric(
                    vertical: 5,
                    horizontal: 10,
                  ),
                  borderRadius: 2,
                ),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.only(top: 8.w),
            child: BaseText(text: 'Original Tapioca Pearls (Boba) - CASE [A1000]'),
          ),
          Container(
            margin: EdgeInsets.only(top: 8.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SearchTextFieldWidget(title: 'Case Qty:', readOnly: true,),
                SearchTextFieldWidget(title: 'Unit/Case:', readOnly: true,),
                SearchTextFieldWidget(title: 'Item Code:', readOnly: true,),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 8.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SearchTextFieldWidget(title: 'Legacy Item:', readOnly: true,),
                SearchTextFieldWidget(title: 'PO:', readOnly: true,),
                SearchTextFieldWidget(title: 'Container:', readOnly: true,),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 8.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SearchTextFieldWidget(title: 'Reason:', readOnly: true,),
                SearchTextFieldWidget(title: 'Expiration:', readOnly: true,),
                SearchTextFieldWidget(title: 'Quantity:', readOnly: true,),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 8.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SearchTextFieldWidget(title: 'FulFilled Qty:', readOnly: true,),
                SearchTextFieldWidget(title: 'Current Qty:', readOnly: true,),
                SearchTextFieldWidget(title: 'Verified Qty:', readOnly: true,),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 8.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SearchTextFieldWidget(title: 'Adjustment:', readOnly: true,),
                BaseStepperWidget(title: 'Cases/Tier:', onChanged: (value){}),
                BaseStepperWidget(title: 'Tiers/Pallet:', onChanged: (value){}),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 8.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                BaseStepperWidget(title: 'Cases:', onChanged: (value){}),
                BaseStepperWidget(title: 'Verified Qty:', onChanged: (value){}),
                SearchCheckBoxWidget(title: 'IsPrecount:', onChanged: (){}),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 8.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                BaseText(text: 'Edited By: sharon.xi'),
                SizedBox(width: 40.w),
                BaseText(text: 'Edited Date:'),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 8.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                BaseText(
                  text: 'Save',
                  bgColor: Colors.blue,
                  textColor: Colors.white,
                  padding: EdgeInsets.symmetric(
                    vertical: 5,
                    horizontal: 10,
                  ),
                  borderRadius: 2,
                ),
                SizedBox(
                  width: 8.w,
                ),
                BaseText(
                  text: 'Save & Print',
                  bgColor: Colors.blue,
                  textColor: Colors.white,
                  padding: EdgeInsets.symmetric(
                    vertical: 5,
                    horizontal: 10,
                  ),
                  borderRadius: 2,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}