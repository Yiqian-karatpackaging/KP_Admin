import '../cycle_count_v2.dart';

class CycleCountV2ItemWidget extends StatefulWidget {

  const CycleCountV2ItemWidget({
    super.key,
  });

  @override
  State<CycleCountV2ItemWidget> createState() => _CreateState();
}

class _CreateState extends State<CycleCountV2ItemWidget> {

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
              SearchTextFieldWidget(title: 'Cycle Count ID'),
              SizedBox(width: 4.w),
              BaseText(text: 'Search', bgColor: Colors.blue, textColor: Colors.white, padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10), borderRadius: 2,)
            ],
          ),
        ],
      ),
    );
  }
}