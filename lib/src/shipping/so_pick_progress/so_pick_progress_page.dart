import 'package:kp_admin/src/shipping/so_pick_progress/so_pick_progress.dart';

class SOPickProgressPage extends StatefulWidget {

  const SOPickProgressPage({
    super.key,
  });

  @override
  State<SOPickProgressPage> createState() => _CreateState();
}

class _CreateState extends State<SOPickProgressPage> {

  final _filterData = [
    {'id': '', 'title': 'WH:', 'type': 'select', 'value': ''},
  ];

  final _menuButtonData = [{'id': 'search', 'title': 'Search', },{'id': 'forceComplete', 'title': 'Force Complete', },];

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

  Future<(List<SOPickProgressModel>, bool)> _getData() async {
    List<SOPickProgressModel> _orderData = [];
    try {
      SOPickProgressColumn.data.forEach((element) {
        final data = SOPickProgressModel.fromJson(element);
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
      route: '/so_pick_progress',
        title: 'Shipping / SO Pick Progress',
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TableHeadWidget(filterData: _filterData, menuButtonData: _menuButtonData, callBack: (value) {
              print(value);
            },),
            SizedBox(
              height: MediaQuery.of(context).size.height - 100,
              child: OperanceDataTable<SOPickProgressModel>(
                selectable: true,
                columns: SOPickProgressColumn.columns,
                emptyStateBuilder: (BuildContext context) => const EmptyWidget(),
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
        )
    );
  }
}