import 'package:kp_admin/src/shipping/dock_loading_zone_less/dock_loading_zone_less.dart';

class DockLoadingZoneLessPalletIdScanWidget extends StatefulWidget {

  const DockLoadingZoneLessPalletIdScanWidget({
    super.key,
  });

  @override
  State<DockLoadingZoneLessPalletIdScanWidget> createState() => _CreateState();
}

class _CreateState extends State<DockLoadingZoneLessPalletIdScanWidget> {

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

  Future<(List<DockLoadingZoneLessPalletIdScanModel>, bool)> _getData() async {
    List<DockLoadingZoneLessPalletIdScanModel> _orderData = [];
    try {
      DockLoadingZoneLessPalletIdScanColumn.data.forEach((element) {
        final data = DockLoadingZoneLessPalletIdScanModel.fromJson(element);
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
      child: OperanceDataTable<DockLoadingZoneLessPalletIdScanModel>(
        showRowsPerPageOptions: false,
        columns: DockLoadingZoneLessPalletIdScanColumn.columns,
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