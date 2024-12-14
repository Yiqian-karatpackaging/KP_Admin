import 'package:kp_admin/src/shipping/dock_loading/dock_loading.dart';

class DockLoadingPalletIdScanWidget extends StatefulWidget {

  const DockLoadingPalletIdScanWidget({
    super.key,
  });

  @override
  State<DockLoadingPalletIdScanWidget> createState() => _CreateState();
}

class _CreateState extends State<DockLoadingPalletIdScanWidget> {

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

  Future<(List<DockLoadingPalletIdScanModel>, bool)> _getData() async {
    List<DockLoadingPalletIdScanModel> _orderData = [];
    try {
      DockLoadingPalletIdScanColumn.data.forEach((element) {
        final data = DockLoadingPalletIdScanModel.fromJson(element);
        _orderData.add(data);
      });
      return (_orderData, false);
    } catch (e) {
      return (_orderData, false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height - 100,
      child: OperanceDataTable<DockLoadingPalletIdScanModel>(
        showRowsPerPageOptions: false,
        columns: DockLoadingPalletIdScanColumn.columns,
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
    );
  }
}