import 'driver_sign_in.dart';

class DriverSignInPage extends StatefulWidget {

  const DriverSignInPage({
    super.key,
  });

  @override
  State<DriverSignInPage> createState() => _CreateState();
}

class _CreateState extends State<DriverSignInPage> {

  final _filterData = [
    {'id': '', 'title': 'WH:', 'type': 'select', 'value': ''},
  ];

  final _menuButtonData = [
    {'id': 'search', 'title': 'Search'},
    {'id': 'addSignIn', 'title': '+ Sign In'},
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

  Future<(List<DriverSignInModel>, bool)> _getData() async {
    List<DriverSignInModel> _orderData = [];
    try {
      DriverSignInColumn.data.forEach((element) {
        final data = DriverSignInModel.fromJson(element);
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
      route: '/driver_sign_in',
      title: 'Outbound / Driver Sign In',
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TableHeadWidget(
            menuButtonData: _menuButtonData,
            filterData: _filterData,
            callBack: (value) {},
          ),
          SizedBox(
            height: usableHeight(context),
            child: OperanceDataTable<DriverSignInModel>(
              columns: DriverSignInColumn.columns,
              emptyStateBuilder: (BuildContext context) => EmptyWidget(),
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