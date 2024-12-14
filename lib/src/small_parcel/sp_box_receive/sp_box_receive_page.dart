import 'sp_box_receive.dart';

class SPBoxReceivePage extends StatefulWidget {
  const SPBoxReceivePage({
    super.key,
  });

  @override
  State<SPBoxReceivePage> createState() => _CreateState();
}

class _CreateState extends State<SPBoxReceivePage> {
  List<SelectedListItem> _boxItemSelectData = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _boxItemSelectData = ['1PK','2PK','4PK','6PK','8PK','12PK','PP1','PP2','PP4'].map((e) => SelectedListItem(name: e, value: e, isSelected: false)).toList();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      route: '/sp_box_receive',
      title: 'Small Parcel / SP Box Receive',
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 10.h),
          Row(
            children: [
              SearchDropdownWidget(
                title: 'Box Item',
                data: _boxItemSelectData,
                titleWidth: 10.w,
                textFieldWidth: 20.w,
                isSearchVisible: false,
                enableMultipleSelection: false,
                onChanged: (value) {
                  print(value);
                },
              ),
              SizedBox(width: 4.w),
              BaseText(
                text: 'Search',
                textColor: Colors.white,
                bgColor: Colors.blue,
                padding: const EdgeInsets.symmetric(
                  vertical: 5,
                  horizontal: 10,
                ),
                borderRadius: 2,
                onTap: () {},
              ),
              SizedBox(width: 4.w),
              BaseText(
                text: 'C',
                textColor: Colors.white,
                bgColor: Colors.blue,
                padding: const EdgeInsets.symmetric(
                  vertical: 5,
                  horizontal: 10,
                ),
                borderRadius: 2,
                onTap: () {},
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.only(top: 10.h),
            child: Column(
              children: [
                Row(
                  children: [
                    SearchTextFieldWidget(
                      title: 'Length:',
                      titleWidth: 10.w,
                      textWidth: 15.w,
                      readOnly: true,
                    ),
                    SearchTextFieldWidget(
                      title: 'Width:',
                      titleWidth: 10.w,
                      textWidth: 15.w,
                      readOnly: true,
                    ),
                    SearchTextFieldWidget(
                      title: 'Height:',
                      titleWidth: 10.w,
                      textWidth: 15.w,
                      readOnly: true,
                    ),
                  ],
                ),
                SizedBox(height: 10.h),
                Row(
                  children: [
                    SearchTextFieldWidget(
                      title: 'Bin:',
                      titleWidth: 10.w,
                      textWidth: 15.w,
                    ),
                    SearchTextFieldWidget(
                      title: 'Total Qty:',
                      titleWidth: 10.w,
                      textWidth: 15.w,
                    ),
                  ],
                ),
                SizedBox(height: 20.h),
                BaseText(
                  text: 'Create LPN',
                  textColor: Colors.white,
                  bgColor: Colors.blue,
                  padding: const EdgeInsets.symmetric(
                    vertical: 5,
                    horizontal: 10,
                  ),
                  borderRadius: 2,
                  onTap: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
