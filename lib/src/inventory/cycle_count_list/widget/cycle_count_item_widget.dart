import '../cycle_count_list.dart';

class CycleCountItemWidget extends StatefulWidget {

  const CycleCountItemWidget({
    super.key,
  });

  @override
  State<CycleCountItemWidget> createState() => _CreateState();
}

class _CreateState extends State<CycleCountItemWidget> {

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
      margin: EdgeInsets.only(top: 8.w),
      child: Column(
        children: [
          Row(
            children: [
              SearchTextFieldWidget(title: 'Item Code'),
              SizedBox(width: 4.w),
              BaseText(text: 'Search', bgColor: Colors.blue, textColor: Colors.white, padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10), borderRadius: 2,)
            ],
          ),
          SizedBox(height: 4.w),
          Row(
            children: [
              SearchDropdownWidget(title: '', onChanged: (){}),
              SizedBox(width: 4.w),
              BaseText(text: 'Item Category', bgColor: Colors.blue, textColor: Colors.white, padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10), borderRadius: 2,)
            ],
          )
        ],
      ),
    );
  }
}