import 'mp_items_receive.dart';

class MPItemsReceivePage extends StatefulWidget {

  const MPItemsReceivePage({
    super.key,
  });

  @override
  State<MPItemsReceivePage> createState() => _CreateState();
}

class _CreateState extends State<MPItemsReceivePage> {

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
      route: '/mp_items_receive',
      title: 'Inventory / MP Items Receive',
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              SearchDropdownWidget(title: 'MP Item', onChanged: (){}),
              SizedBox(width: 8),
              BaseText(text: 'Search', bgColor: Colors.blue, textColor: Colors.white, padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10), borderRadius: 2,),
              SizedBox(width: 8),
              BaseText(text: 'Clear', bgColor: Colors.blue, textColor: Colors.white, padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10), borderRadius: 2,),
            ],
          ),
          SizedBox(height: 8.w),
          Row(
            children: [
              SearchTextFieldWidget(title: 'Size:', readOnly: true,),
              SearchTextFieldWidget(title: 'Type:', readOnly: true,),
            ],
          ),
          SizedBox(height: 8.w),
          Row(
            children: [
              SearchTextFieldWidget(title: 'Bin:'),
              SearchTextFieldWidget(title: 'Total Qty:'),
            ],
          ),
          SizedBox(height: 8.w),
          Padding(padding: EdgeInsets.only(left: 20.w), child: BaseText(text: 'Create LPN', bgColor: Colors.blue, textColor: Colors.white, padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10), borderRadius: 2,),),
        ],
      ),
    );
  }
}