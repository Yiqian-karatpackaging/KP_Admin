import 'package_receipt.dart';

class PackageReceiptPage extends StatefulWidget {

  const PackageReceiptPage({
    super.key,
  });

  @override
  State<PackageReceiptPage> createState() => _CreateState();
}

class _CreateState extends State<PackageReceiptPage> {

  final _filterData = [
    {'id': '', 'title': 'Date From:', 'type': 'calendar', 'value': ''},
    {'id': '', 'title': 'Date To:', 'type': 'calendar', 'value': ''},
    {'id': '', 'title': 'Left At:', 'type': 'text', 'value': ''},
    {'id': '', 'title': 'Left With:', 'type': 'text', 'value': ''},
  ];

  final _menuButtonData = [{'id': 'search', 'title': 'Search', },{'id': 'addPackageReceipt', 'title': 'Add Package Receipt', },];

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

  Future<(List<PackageReceiptModel>, bool)> _getData() async {
    List<PackageReceiptModel> _orderData = [];
    try {
      PackageReceiptColumn.data.forEach((element) {
        final data = PackageReceiptModel.fromJson(element);
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
      route: '/package_receipt',
      title: 'Inventory / Package Receipt',
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TableHeadWidget(menuButtonData: _menuButtonData, filterData: _filterData, callBack: (value){},),
          SizedBox(
            height: usableHeight(context),
            child: OperanceDataTable<PackageReceiptModel>(
              showRowsPerPageOptions: false,
              columns: PackageReceiptColumn.columns,
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