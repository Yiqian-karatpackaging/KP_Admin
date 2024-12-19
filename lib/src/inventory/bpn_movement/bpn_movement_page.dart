import 'bpn_movement.dart';

class BPNMovementPage extends StatefulWidget {

  const BPNMovementPage({
    super.key,
  });

  @override
  State<BPNMovementPage> createState() => _CreateState();
}

class _CreateState extends State<BPNMovementPage> {

  final _filterData = [
    {'id': '', 'title': 'BPN:', 'type': 'text', 'value': ''},
  ];

  final _menuButtonData = [
    {'id': 'search', 'title': 'Search'},
    {'id': 'move', 'title': 'Move'},
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

  Future<(List<BPNMovementModel>, bool)> _getData() async {
    List<BPNMovementModel> _orderData = [];
    try {
      BPNMovementColumn.data.forEach((element) {
        final data = BPNMovementModel.fromJson(element);
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
      route: '/bpn_movement',
      title: 'Inventory / BPN Movement',
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
            child: OperanceDataTable<BPNMovementModel>(
              showRowsPerPageOptions: false,
              selectable: true,
              columns: BPNMovementColumn.columns,
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