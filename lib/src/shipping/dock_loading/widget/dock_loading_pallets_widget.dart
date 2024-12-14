import 'package:kp_admin/src/shipping/dock_loading/dock_loading.dart';

class DockLoadingPalletsWidget extends StatefulWidget {

  const DockLoadingPalletsWidget({
    super.key,
  });

  @override
  State<DockLoadingPalletsWidget> createState() => _CreateState();
}

class _CreateState extends State<DockLoadingPalletsWidget> {

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

  Future<(List<DockLoadingPalletsModel>, bool)> _getData() async {
    List<DockLoadingPalletsModel> _orderData = [];
    try {
      DockLoadingPalletsColumn.data.forEach((element) {
        final data = DockLoadingPalletsModel.fromJson(element);
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
      child: OperanceDataTable<DockLoadingPalletsModel>(
        showRowsPerPageOptions: false,
        columns: DockLoadingPalletsColumn.columns,
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