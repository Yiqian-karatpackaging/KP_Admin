import '../inter_dept_item_transfer.dart';

class InterDeptItemTransferAddUnits {
  static void show<T>(
    BuildContext context,
  ) {
    showDialog(
      context: context,
      builder: (ctx) {
        return Dialog(
          backgroundColor: Colors.transparent,
          insetPadding: EdgeInsets.symmetric(
            horizontal: 48.h,
          ),
          child: Container(
            clipBehavior: Clip.antiAliasWithSaveLayer,
            padding: EdgeInsets.symmetric(vertical: 5.w, horizontal: 5.w),
            decoration: BoxDecoration(
              color: const Color(0xFFFFFFFF),
              borderRadius: BorderRadius.circular(4.w),
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const BaseText(
                      text: 'Item Units Type Manage',
                      textAlign: TextAlign.center,
                      // fontSize: 15.sp,
                      fontWeight: FontWeight.w700,
                      textColor: Color(0xFF323232),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(ctx).pop();
                      },
                      child: const Icon(
                        Icons.close_outlined,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 18.h),
                Expanded(child: InterDeptItemTransferAddUnitsWidget(),),
              ],
            ),
          ),
        );
      },
    );
  }
  
  static Widget _addWidget(BuildContext context,) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SearchTextFieldWidget(title: 'Memo:', moreLine: true, textWidth: 100,),
        BaseText(text: 'Item / Units Type (NetSuite) / Units Type (Karat Portal) / QTY', padding: EdgeInsets.symmetric(vertical: 10, horizontal: 50.w),),
        SearchTextFieldWidget(title: 'Item:', textWidth: 100,),
        SearchTextFieldWidget(title: 'QTY:', textWidth: 100,),
        Row(
          children: [
            BaseText(text: 'Save', bgColor: Colors.blue, textColor: Colors.white, padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10), borderRadius: 2,),
            SizedBox(width: 4.w),
            BaseText(text: 'Cancel', bgColor: Colors.blue, textColor: Colors.white, padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10), borderRadius: 2, onTap: () {
              Navigator.of(context).pop();
            },),
          ],
        )
      ],
    );
  }
}

class InterDeptItemTransferAddUnitsWidget extends StatefulWidget {

  const InterDeptItemTransferAddUnitsWidget({
    super.key,
  });

  @override
  State<InterDeptItemTransferAddUnitsWidget> createState() => _CreateState();
}

class _CreateState extends State<InterDeptItemTransferAddUnitsWidget> {

  final _menuButtonData = [
    {'id': 'add', 'title': 'Add Units Type'},
    {'id': 'download', 'title': 'Download Sample Excel'},
    {'id': 'import', 'title': 'Import Units Type'},
  ];

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

  Future<(List<InterDeptItemTransferAddUnitsModel>, bool)> _getData() async {
    List<InterDeptItemTransferAddUnitsModel> _orderData = [];
    try {
      InterDeptItemTransferAddUnitsColumn.data.forEach((element) {
        final data = InterDeptItemTransferAddUnitsModel.fromJson(element);
        _orderData.add(data);
      });
      return (_orderData, false);
    } catch (e) {
      return (_orderData, false);
    }
  }

  void _headMenuClick(Map<String, dynamic> info) {
    switch(info['id']) {
      case 'addItem':
        InterDeptItemTransferAddItem.show(context);
        break;
      case 'addUnits':
        InterDeptItemTransferAddUnits.show(context);
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TableHeadWidget(
          menuButtonData: _menuButtonData,
          callBack: (value) => _headMenuClick(value),
        ),
        Expanded(
          child: OperanceDataTable<InterDeptItemTransferAddUnitsModel>(
            showRowsPerPageOptions: false,
            columns: InterDeptItemTransferAddUnitsColumn.columns,
            emptyStateBuilder: (BuildContext context) => EmptyWidget(),
            onFetch: (limit, sort, {bool isInitial = true}) async {
              return _getData();
            },
            loadingStateBuilder: (BuildContext context) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            },
          ),
        ),
      ],
    );
  }
}