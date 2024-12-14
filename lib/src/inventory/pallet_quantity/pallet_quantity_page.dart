import 'pallet_quantity.dart';

class PalletQuantityPage extends StatefulWidget {

  const PalletQuantityPage({
    super.key,
  });

  @override
  State<PalletQuantityPage> createState() => _CreateState();
}

class _CreateState extends State<PalletQuantityPage> {

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

  Future<(List<PalletQuantityModel>, bool)> _getData() async {
    List<PalletQuantityModel> _orderData = [];
    try {
      PalletQuantityColumn.data.forEach((element) {
        final data = PalletQuantityModel.fromJson(element);
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
      route: '/pallet_quantity',
      title: 'Inventory / Pallet Quantity',
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: usableHeight(context),
            child: OperanceDataTable<PalletQuantityModel>(
              showRowsPerPageOptions: false,
              columns: PalletQuantityColumn.columns,
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