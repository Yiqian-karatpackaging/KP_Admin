import 'area_count_list.dart';

class AreaCountListPage extends StatefulWidget {

  const AreaCountListPage({
    super.key,
  });

  @override
  State<AreaCountListPage> createState() => _CreateState();
}

class _CreateState extends State<AreaCountListPage> {

  final _filterData = [
    {'id': '', 'title': 'Bin#:', 'type': 'text', 'value': ''},
    {'id': '', 'title': 'Level:', 'type': 'text', 'value': ''},
    {'id': '', 'title': 'WH:', 'type': 'select', 'value': ''},
    {'id': '', 'title': 'Type:', 'type': 'select', 'value': ''},
    {'id': '', 'title': 'Area:', 'type': 'select', 'value': ''},
    {'id': '', 'title': 'Odd/Even:', 'type': 'select', 'value': ''},
    {'id': '', 'title': 'Exclude Precount Bins:', 'type': 'checkBox', 'value': ''},
    {'id': '', 'title': 'Empty Bins:', 'type': 'checkBox', 'value': ''},
  ];

  final _menuButtonData = [
    {'id': 'search', 'title': 'Search'},
    {'id': 'createID', 'title': 'Create Cycle Count ID'},
    {'id': 'addLPN', 'title': 'Add LPN'},
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

  Future<(List<AreaCountListModel>, bool)> _getData() async {
    List<AreaCountListModel> _orderData = [];
    try {
      AreaCountListColumn.data.forEach((element) {
        final data = AreaCountListModel.fromJson(element);
        _orderData.add(data);
      });
      return (_orderData, false);
    } catch (e) {
      return (_orderData, false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      route: '/area_count_list',
      title: 'Inventory / Area Count List',
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TableHeadWidget(
            menuButtonData: _menuButtonData,
            filterData: _filterData,
            callBack: (value) {},
          ),
          SizedBox(
            height: usableHeight(context),
            child: OperanceDataTable<AreaCountListModel>(
              showRowsPerPageOptions: false,
              selectable: true,
              columns: AreaCountListColumn.columns,
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