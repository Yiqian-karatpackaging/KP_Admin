import 'sp_bp_batch_delete.dart';

class SPBPBatchDeletePage extends StatefulWidget {

  const SPBPBatchDeletePage({
    super.key,
  });

  @override
  State<SPBPBatchDeletePage> createState() => _CreateState();
}

class _CreateState extends State<SPBPBatchDeletePage> {

  final _filterData = [
    {'id': '', 'title': 'WH:', 'type': 'select', 'value': ''},
    {'id': '', 'title': 'SO#:', 'type': 'title', 'value': ''},
    {'id': '', 'title': 'BP#:', 'type': 'title', 'value': ''},
  ];

  final _menuButtonData = [
    {'id': 'search', 'title': 'Search'},
    {'id': 'delete', 'title': 'Delete'},
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

  Future<(List<SPBPBatchDeleteModel>, bool)> _getData() async {
    List<SPBPBatchDeleteModel> orderData = [];
    try {
      for (var element in SPBPBatchDeleteColum.data) {
        final data = SPBPBatchDeleteModel.fromJson(element);
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
      route: '/sp_bp_batch_delete',
      title: 'Small Parcel / SP BP Batch Delete',
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TableHeadWidget(filterData: _filterData, menuButtonData: _menuButtonData, callBack:(value) {},),
          SizedBox(
            height: MediaQuery.of(context).size.height - 100,
            child: OperanceDataTable<SPBPBatchDeleteModel>(
              showRowsPerPageOptions: false,
              selectable: true,
              columns: SPBPBatchDeleteColum.columns,
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