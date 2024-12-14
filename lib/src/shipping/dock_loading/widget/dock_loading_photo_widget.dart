import 'package:kp_admin/src/shipping/dock_loading/dock_loading.dart';

class DockLoadingPhotoWidget extends StatefulWidget {

  const DockLoadingPhotoWidget({
    super.key,
  });

  @override
  State<DockLoadingPhotoWidget> createState() => _CreateState();
}

class _CreateState extends State<DockLoadingPhotoWidget> {

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

  Future<(List<DockLoadingPhotoModel>, bool)> _getData() async {
    List<DockLoadingPhotoModel> _orderData = [];
    try {
      DockLoadingPhotoColumn.data.forEach((element) {
        final data = DockLoadingPhotoModel.fromJson(element);
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
      child: OperanceDataTable<DockLoadingPhotoModel>(
        showRowsPerPageOptions: false,
        columns: DockLoadingPhotoColumn.columns,
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