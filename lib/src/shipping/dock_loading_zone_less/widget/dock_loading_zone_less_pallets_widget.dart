import 'package:kp_admin/src/shipping/dock_loading_zone_less/dock_loading_zone_less.dart';

class DockLoadingZoneLessPalletsWidget extends StatefulWidget {

  const DockLoadingZoneLessPalletsWidget({
    super.key,
  });

  @override
  State<DockLoadingZoneLessPalletsWidget> createState() => _CreateState();
}

class _CreateState extends State<DockLoadingZoneLessPalletsWidget> {

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

  Future<(List<DockLoadingZoneLessPalletsModel>, bool)> _getData() async {
    List<DockLoadingZoneLessPalletsModel> _orderData = [];
    try {
      DockLoadingZoneLessPalletsColumn.data.forEach((element) {
        final data = DockLoadingZoneLessPalletsModel.fromJson(element);
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
      child: OperanceDataTable<DockLoadingZoneLessPalletsModel>(
        showRowsPerPageOptions: false,
        columns: DockLoadingZoneLessPalletsColumn.columns,
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