import '../sp_order_groups.dart';

class SPOrderGroupsSoWidget extends StatefulWidget {
  final Function callBack;

  const SPOrderGroupsSoWidget({
    required this.callBack,
    super.key,
  });

  @override
  State<SPOrderGroupsSoWidget> createState() => _CreateState();
}

class _CreateState extends State<SPOrderGroupsSoWidget> {
  final _filterData = [
    {'id': '', 'title': 'Store:', 'type': 'select', 'value': ''},
    {'id': '', 'title': 'CA:', 'type': 'select', 'value': ''},
    {'id': '', 'title': 'Item Code:', 'type': 'text', 'value': ''},
    {'id': '', 'title': 'Zip Code:', 'type': 'text', 'value': ''},
    {'id': '', 'title': 'UPS', 'type': 'select', 'value': ''},
    {'id': '', 'title': 'Ship Date From:', 'type': 'calendar', 'value': ''},
    {'id': '', 'title': 'Ship Date To:', 'type': 'calendar', 'value': ''},
  ];

  final _menuButtonData = [
    {'id': 'search', 'title': 'Search'},
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

  Future<(List<SPOrderGroupsSOModel>, bool)> _getData() async {
    List<SPOrderGroupsSOModel> orderData = [];
    try {
      for (var element in SPOrderGroupsSOColumn.data) {
        final data = SPOrderGroupsSOModel.fromJson(element);
        orderData.add(data);
      }
      return (orderData, false);
    } catch (e) {
      return (orderData, false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        TableHeadWidget(
          filterData: _filterData,
          menuButtonData: _menuButtonData,
          callBack: (value) {},
        ),
        Expanded(child: Row(
          children: [
            Expanded(
              child: OperanceDataTable<SPOrderGroupsSOModel>(
                selectable: true,
                columns: SPOrderGroupsSOColumn.columns,
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
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  BaseText(
                    text: 'Bulk Pick',
                    bgColor: Colors.blue,
                    textColor: Colors.white,
                    padding:
                    EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                    borderRadius: 2,
                  ),
                  SizedBox(height: 5.h),
                  BaseText(text: 'Total SOs: 0'),
                  SizedBox(height: 5.h),
                  BaseText(text: 'Total Qty: 0'),
                  SizedBox(height: 5.h),
                  BaseText(text: 'Total Weight: 0'),
                ],
              ),
            )
          ],
        ),),
      ],
    );
  }
}
