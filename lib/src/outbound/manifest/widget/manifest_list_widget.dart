import '../manifest.dart';

class ManifestListWidget extends StatefulWidget {

  const ManifestListWidget({
    super.key,
  });

  @override
  State<ManifestListWidget> createState() => _CreateState();
}

class _CreateState extends State<ManifestListWidget> {

  final _filterData = [
    {'id': '', 'title': 'Date From:', 'type': 'calendar', 'value': ''},
    {'id': '', 'title': 'Date To:', 'type': 'calendar', 'value': ''},
    {'id': '', 'title': 'Appointment Date From:', 'type': 'calendar', 'value': ''},
    {'id': '', 'title': 'Appointment Date To:', 'type': 'calendar', 'value': ''},
    {'id': '', 'title': 'WH:', 'type': 'select', 'value': ''},
    {'id': '', 'title': 'Status:', 'type': 'select', 'value': ''},
  ];

  final _menuButtonData = [
    {'id': 'search', 'title': 'Search', },
    {'id': 'batchAssign', 'title': 'Batch Assign', },
    {'id': 'signIn', 'title': 'Sign In', },
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
  Future<(List<ManifestListModel>, bool)> _getData() async {
    List<ManifestListModel> _orderData = [];
    try {
      ManifestListColumn.data.forEach((element) {
        final data = ManifestListModel.fromJson(element);
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
        TableHeadWidget(filterData: _filterData, menuButtonData: _menuButtonData, callBack: (){}),
        Expanded(
          child: OperanceDataTable<ManifestListModel>(
            selectable: true,
            columns: ManifestListColumn.columns,
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
        )
      ],
    );
  }
}