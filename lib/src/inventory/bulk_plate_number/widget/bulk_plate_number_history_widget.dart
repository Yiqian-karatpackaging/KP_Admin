import '../bulk_plate_number.dart';

class BulkPlateNumberHistoryWidget extends StatefulWidget {

  const BulkPlateNumberHistoryWidget({
    super.key,
  });

  @override
  State<BulkPlateNumberHistoryWidget> createState() => _CreateState();
}

class _CreateState extends State<BulkPlateNumberHistoryWidget> {

  final _filterData = [
    {'id': '', 'title': 'BPN#:', 'type': 'textFile', 'value': ''},
  ];

  final _menuButtonData = [
    {'id': 'search', 'title': 'Search', },
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

  Future<(List<BulkPlateNumberHistoryModel>, bool)> _getData() async {
    List<BulkPlateNumberHistoryModel> _orderData = [];
    try {
      BulkPlateNumberHistoryColumn.data.forEach((element) {
        final data = BulkPlateNumberHistoryModel.fromJson(element);
        _orderData.add(data);
      });
      return (_orderData, false);
    } catch (e) {
      return (_orderData, false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TableHeadWidget(filterData: _filterData, menuButtonData: _menuButtonData,),
        Expanded(child: OperanceDataTable<BulkPlateNumberHistoryModel>(
          columns: BulkPlateNumberHistoryColumn.columns,
          emptyStateBuilder: (BuildContext context) => const EmptyWidget(),
          onFetch: (limit, sort, {bool isInitial = true}) async {
            return _getData();
          },
          loadingStateBuilder: (BuildContext context) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          },
        ),),
      ],
    );
  }
}