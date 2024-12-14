import 'sp_packing_queue.dart';

class SPPackingQueuePage extends StatefulWidget {

  const SPPackingQueuePage({
    super.key,
  });

  @override
  State<SPPackingQueuePage> createState() => _CreateState();
}

class _CreateState extends State<SPPackingQueuePage> {

  final _filterData = [
    {'id': '', 'title': 'PComplete From:', 'type': 'calendar', 'value': ''},
    {'id': '', 'title': 'PComplete To:', 'type': 'calendar', 'value': ''},
    {'id': '', 'title': 'CA:', 'type': 'select', 'value': ''},
    {'id': '', 'title': 'SO:', 'type': 'title', 'value': ''},
    {'id': '', 'title': 'BP:', 'type': 'title', 'value': ''},
    {'id': '', 'title': 'PO:', 'type': 'title', 'value': ''},
    {'id': '', 'title': 'Customer Name:', 'type': 'title', 'value': ''},
  ];

  final _menuButtonData = [
    {'id': 'search', 'title': 'Search'},
    {'id': 'excel', 'title': 'Excel'},
    {'id': 'csv', 'title': 'CSV'},
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

  Future<(List<SPPackingQueueModel>, bool)> _getData() async {
    List<SPPackingQueueModel> orderData = [];
    try {
      for (var element in SPPackingQueueColumn.data) {
        final data = SPPackingQueueModel.fromJson(element);
        orderData.add(data);
      }
      return (orderData, false);
    } catch (e) {
      return (orderData, false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      route: '/sp_packing_queue',
      title: 'Small Parcel / SP Packing Queue',
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TableHeadWidget(filterData: _filterData, menuButtonData: _menuButtonData, callBack:(value) {},),
          SizedBox(
            height: MediaQuery.of(context).size.height - 100,
            child: OperanceDataTable<SPPackingQueueModel>(
              showRowsPerPageOptions: false,
              columns: SPPackingQueueColumn.columns,
              emptyStateBuilder: (BuildContext context) => EmptyWidget(),
              onFetch: (limit, sort, {bool isInitial = true}) async {
                return _getData();
              },
              loadingStateBuilder: (BuildContext context) {
                return Center(
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