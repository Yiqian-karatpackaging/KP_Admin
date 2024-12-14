import 'package:kp_admin/src/shipping/so_pick_duration/so_pick_duration.dart';

class SOPickDurationPage extends StatefulWidget {

  const SOPickDurationPage({
    super.key,
  });

  @override
  State<SOPickDurationPage> createState() => _CreateState();
}

class _CreateState extends State<SOPickDurationPage> {

  final _filterData = [
    {'id': '', 'title': 'Date From:', 'type': 'calendar', 'value': ''},
    {'id': '', 'title': 'Date To:', 'type': 'calendar', 'value': ''},
    {'id': '', 'title': 'WH:', 'type': 'select', 'value': ''},
    {'id': '', 'title': 'User Name:', 'type': 'select', 'value': ''},
  ];

  final _menuButtonData = [{'id': 'search', 'title': 'Search', },];

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

  Future<(List<SOPickDurationModel>, bool)> _getData() async {
    List<SOPickDurationModel> _orderData = [];
    try {
      SOPickDurationColumn.data.forEach((element) {
        final data = SOPickDurationModel.fromJson(element);
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
      route: '/so_pick_duration',
      title: 'Shipping / SO Pick Duration',
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TableHeadWidget(filterData: _filterData, menuButtonData: _menuButtonData, callBack: (value) {
              print(value);
            },),
            SizedBox(
              height: MediaQuery.of(context).size.height - 100,
              child: OperanceDataTable<SOPickDurationModel>(
                columns: SOPickDurationColumn.columns,
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
        ),
    );
  }
}