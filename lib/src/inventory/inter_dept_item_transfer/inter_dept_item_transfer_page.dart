import 'inter_dept_item_transfer.dart';

class InterDeptItemTransferPage extends StatefulWidget {

  const InterDeptItemTransferPage({
    super.key,
  });

  @override
  State<InterDeptItemTransferPage> createState() => _CreateState();
}

class _CreateState extends State<InterDeptItemTransferPage> {

  final _filterData = [
    {'id': '', 'title': 'Date From:', 'type': 'calendar', 'value': ''},
    {'id': '', 'title': 'Date To:', 'type': 'calendar', 'value': ''},
    {'id': '', 'title': 'WH:', 'type': 'select', 'value': ''},
    {'id': '', 'title': 'Request ID:', 'type': 'text', 'value': ''},
    {'id': '', 'title': 'Item/Legacy:', 'type': 'text', 'value': ''},
  ];

  final _menuButtonData = [
    {'id': 'search', 'title': 'Search'},
    {'id': 'addItem', 'title': 'Add Item'},
    {'id': 'addLPN', 'title': 'Add LPN'},
    {'id': 'delete', 'title': 'Delete'},
    {'id': 'signOff', 'title': 'Sign Off'},
    {'id': 'addUnits', 'title': 'Add Units'},
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

  Future<(List<InterDeptItemTransferModel>, bool)> _getData() async {
    List<InterDeptItemTransferModel> _orderData = [];
    try {
      InterDeptItemTransferColumn.data.forEach((element) {
        final data = InterDeptItemTransferModel.fromJson(element);
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
    return CustomScaffold(
      route: '/interdept_item_transfer',
      title: 'Inventory / InterDept Item Transfer',
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TableHeadWidget(
            menuButtonData: _menuButtonData,
            filterData: _filterData,
            callBack: (value) => _headMenuClick(value),
          ),
          SizedBox(
            height: usableHeight(context),
            child: OperanceDataTable<InterDeptItemTransferModel>(
              showRowsPerPageOptions: false,
              columns: InterDeptItemTransferColumn.columns,
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
      ),
    );
  }
}