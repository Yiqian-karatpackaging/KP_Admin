import 'package:kp_admin/src/shipping/dock_loading_zone_less/dock_loading_zone_less.dart';

class DockLoadingZoneLessLoadOverrideWidget extends StatefulWidget {

  const DockLoadingZoneLessLoadOverrideWidget({
    super.key,
  });

  @override
  State<DockLoadingZoneLessLoadOverrideWidget> createState() => _CreateState();
}

class _CreateState extends State<DockLoadingZoneLessLoadOverrideWidget> {

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

  Future<(List<DockLoadingZoneLessLoadOverrideModel>, bool)> _getData() async {
    List<DockLoadingZoneLessLoadOverrideModel> _orderData = [];
    try {
      DockLoadingZoneLessLoadOverrideColumn.data.forEach((element) {
        final data = DockLoadingZoneLessLoadOverrideModel.fromJson(element);
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
      child: OperanceDataTable<DockLoadingZoneLessLoadOverrideModel>(
        showRowsPerPageOptions: false,
        columns: DockLoadingZoneLessLoadOverrideColumn.columns,
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