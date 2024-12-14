import 'purolator_closeout.dart';

class PurolatorCloseoutPage extends StatefulWidget {

  const PurolatorCloseoutPage({
    super.key,
  });

  @override
  State<PurolatorCloseoutPage> createState() => _CreateState();
}

class _CreateState extends State<PurolatorCloseoutPage> {

  final _filterData = [
    {'id': '', 'title': 'WH:', 'type': 'select', 'value': ''},
    {'id': '', 'title': 'SO:', 'type': 'title', 'value': ''},
    {'id': '', 'title': 'Closeouted:', 'type': 'checkBox', 'value': ''},
  ];

  final _menuButtonData = [
    {'id': 'search', 'title': 'Search'},
    {'id': 'closeout', 'title': 'Closeout'},
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

  Future<(List<PurolatorCloseoutModel>, bool)> _getData() async {
    List<PurolatorCloseoutModel> orderData = [];
    try {
      for (var element in PurolatorCloseoutColumn.data) {
        final data = PurolatorCloseoutModel.fromJson(element);
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
      route: '/purolator_closeout',
      title: 'Small Parcel / Purolator Closeout',
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TableHeadWidget(filterData: _filterData, menuButtonData: _menuButtonData, callBack:(value) {},),
          SizedBox(
            height: MediaQuery.of(context).size.height - 100,
            child: OperanceDataTable<PurolatorCloseoutModel>(
              showRowsPerPageOptions: false,
              columns: PurolatorCloseoutColumn.columns,
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