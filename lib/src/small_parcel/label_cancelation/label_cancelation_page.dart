import 'label_cancelation.dart';

class LabelCancelationPage extends StatefulWidget {

  const LabelCancelationPage({
    super.key,
  });

  @override
  State<LabelCancelationPage> createState() => _CreateState();
}

class _CreateState extends State<LabelCancelationPage> {

  final _filterData = [
    {'id': '', 'title': 'Date From:', 'type': 'calendar', 'value': ''},
    {'id': '', 'title': 'Date To:', 'type': 'calendar', 'value': ''},
    {'id': '', 'title': 'WH:', 'type': 'select', 'value': ''},
    {'id': '', 'title': 'Page:', 'type': 'select', 'value': ''},
    {'id': '', 'title': 'SO#:', 'type': 'title', 'value': ''},
  ];

  final _menuButtonData = [
    {'id': 'search', 'title': 'Search'},
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

  Future<(List<LabelCancelationModel>, bool)> _getData() async {
    List<LabelCancelationModel> orderData = [];
    try {
      for (var element in LabelCancelationColumn.data) {
        final data = LabelCancelationModel.fromJson(element);
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
      route: '/label_cancelation',
      title: 'Small Parcel / Label Cancelation',
      body: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TableHeadWidget(filterData: _filterData, menuButtonData: _menuButtonData, callBack:(value) {},),
            SizedBox(
              height: MediaQuery.of(context).size.height - 100,
              child: OperanceDataTable<LabelCancelationModel>(
                showRowsPerPageOptions: false,
                columns: LabelCancelationColumn.columns,
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
      ),
    );
  }
}