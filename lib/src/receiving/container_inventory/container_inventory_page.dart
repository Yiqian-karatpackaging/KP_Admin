import 'container_inventory.dart';

class ContainerInventoryPage extends StatefulWidget {

  const ContainerInventoryPage({
    super.key,
  });

  @override
  State<ContainerInventoryPage> createState() => _CreateState();
}

class _CreateState extends State<ContainerInventoryPage> {

  final _filterData = [
    {'id': '', 'title': 'DateInYard From:', 'type': 'calendar', 'value': ''},
    {'id': '', 'title': 'DateInYard To:', 'type': 'calendar', 'value': ''},
    {'id': '', 'title': 'Item Code:', 'type': 'textField', 'value': ''},
    {'id': '', 'title': 'Legacy Item:', 'type': 'textField', 'value': ''},
    {'id': '', 'title': 'Container#:', 'type': 'textField', 'value': ''},
    {'id': '', 'title': 'ETA Warehouse:', 'type': 'textField', 'value': ''},
    {'id': '', 'title': 'ETA Port:', 'type': 'textField', 'value': ''},
    {'id': '', 'title': 'LFD:', 'type': 'textField', 'value': ''},
    {'id': '', 'title': 'PO#:', 'type': 'textField', 'value': ''},
    {'id': '', 'title': 'WH:', 'type': 'select', 'value': ''},
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

  Future<(List<ContainerInventoryModel>, bool)> _getData() async {
    List<ContainerInventoryModel> _orderData = [];
    try {
      ContainerInventoryColumn.data.forEach((element) {
        final data = ContainerInventoryModel.fromJson(element);
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
      route: '/container_inventory',
      title: 'Receiving / Container Inventory',
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
            child: OperanceDataTable<ContainerInventoryModel>(
              columns: ContainerInventoryColumn.columns,
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