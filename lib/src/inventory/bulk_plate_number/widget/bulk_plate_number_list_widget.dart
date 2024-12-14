import '../bulk_plate_number.dart';

class BulkPlateNumberListWidget extends StatefulWidget {

  const BulkPlateNumberListWidget({
    super.key,
  });

  @override
  State<BulkPlateNumberListWidget> createState() => _CreateState();
}

class _CreateState extends State<BulkPlateNumberListWidget> {

  final _filterData = [
    {'id': '', 'title': 'LPN#:', 'type': 'textFile', 'value': ''},
    {'id': '', 'title': 'QTY:', 'type': 'textFile', 'value': ''},
    {'id': '', 'title': 'SO#/TO#:', 'type': 'textFile', 'value': ''},
  ];

  final _menuButtonData = [
    {'id': 'addLpn', 'title': 'Add LPN', },
    {'id': 'update', 'title': 'Update', },
    {'id': 'separate', 'title': 'Separate', },
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

  Future<(List<BulkPlateNumberListModel>, bool)> _getData() async {
    List<BulkPlateNumberListModel> _orderData = [];
    try {
      BulkPlateNumberListColumn.data.forEach((element) {
        final data = BulkPlateNumberListModel.fromJson(element);
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
        Expanded(child: OperanceDataTable<BulkPlateNumberListModel>(
          columns: BulkPlateNumberListColumn.columns,
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