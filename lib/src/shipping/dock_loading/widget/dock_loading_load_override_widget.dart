import 'package:kp_admin/src/shipping/dock_loading/dock_loading.dart';

class DockLoadingLoadOverrideWidget extends StatefulWidget {

  const DockLoadingLoadOverrideWidget({
    super.key,
  });

  @override
  State<DockLoadingLoadOverrideWidget> createState() => _CreateState();
}

class _CreateState extends State<DockLoadingLoadOverrideWidget> {

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

  Future<(List<DockLoadingLoadOverrideModel>, bool)> _getData() async {
    List<DockLoadingLoadOverrideModel> _orderData = [];
    try {
      DockLoadingLoadOverrideColumn.data.forEach((element) {
        final data = DockLoadingLoadOverrideModel.fromJson(element);
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
      child: OperanceDataTable<DockLoadingLoadOverrideModel>(
        showRowsPerPageOptions: false,
        columns: DockLoadingLoadOverrideColumn.columns,
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