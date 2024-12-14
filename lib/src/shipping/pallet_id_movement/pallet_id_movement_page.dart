import 'package:kp_admin/src/shipping/pallet_id_movement/pallet_id_movement.dart';

class PalletIdMovementPage extends StatefulWidget {

  const PalletIdMovementPage({
    super.key,
  });

  @override
  State<PalletIdMovementPage> createState() => _CreateState();
}

class _CreateState extends State<PalletIdMovementPage> {

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

  Future<(List<PalletIdMovementModel>, bool)> _getData() async {
    List<PalletIdMovementModel> _orderData = [];
    try {
      PalletIdMovementColumn.data.forEach((element) {
        final data = PalletIdMovementModel.fromJson(element);
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
      route: '/pallet_id_movement',
        title: 'Shipping / Pallet ID Movement',
      body: Column(
        children: [
          PalletIdMovementHeadWidget(),
          SizedBox(
            height: MediaQuery.of(context).size.height - 100,
            child: OperanceDataTable<PalletIdMovementModel>(
              showHeader: false,
              columns: PalletIdMovementColumn.columns,
              emptyStateBuilder: (BuildContext context) => const EmptyWidget(),
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
      )
    );
  }

}