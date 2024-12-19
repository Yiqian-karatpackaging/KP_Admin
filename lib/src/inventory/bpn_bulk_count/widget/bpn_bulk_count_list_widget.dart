import '../bpn_bulk_count.dart';

class BPNBulkCountListWidget extends StatefulWidget {

  const BPNBulkCountListWidget({
    super.key,
  });

  @override
  State<BPNBulkCountListWidget> createState() => _CreateState();
}

class _CreateState extends State<BPNBulkCountListWidget> {

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

  Future<(List<BPNBulkCountListModel>, bool)> _getData() async {
    List<BPNBulkCountListModel> _orderData = [];
    try {
      BPNBulkCountListColumn.data.forEach((element) {
        final data = BPNBulkCountListModel.fromJson(element);
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
        Expanded(child: OperanceDataTable<BPNBulkCountListModel>(
          columns: BPNBulkCountListColumn.columns,
          selectable: true,
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