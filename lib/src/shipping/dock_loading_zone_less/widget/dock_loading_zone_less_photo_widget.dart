import 'package:kp_admin/src/shipping/dock_loading_zone_less/dock_loading_zone_less.dart';

class DockLoadingZoneLessPhotoWidget extends StatefulWidget {

  const DockLoadingZoneLessPhotoWidget({
    super.key,
  });

  @override
  State<DockLoadingZoneLessPhotoWidget> createState() => _CreateState();
}

class _CreateState extends State<DockLoadingZoneLessPhotoWidget> {

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

  Future<(List<DockLoadingZoneLessPhotoModel>, bool)> _getData() async {
    List<DockLoadingZoneLessPhotoModel> _orderData = [];
    try {
      DockLoadingZoneLessPhotoColumn.data.forEach((element) {
        final data = DockLoadingZoneLessPhotoModel.fromJson(element);
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
      child: OperanceDataTable<DockLoadingZoneLessPhotoModel>(
        showRowsPerPageOptions: false,
        columns: DockLoadingZoneLessPhotoColumn.columns,
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