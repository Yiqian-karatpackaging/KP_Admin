import '../so_cubic_feet.dart';

class SoCubicFeetListWidget extends StatefulWidget {

  const SoCubicFeetListWidget({
    super.key,
  });

  @override
  State<SoCubicFeetListWidget> createState() => _CreateState();
}

class _CreateState extends State<SoCubicFeetListWidget> {

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

  Future<(List<SoCubicFeetListModel>, bool)> _getData() async {
    List<SoCubicFeetListModel> _orderData = [];
    try {
      SoCubicFeetListColumn.data.forEach((element) {
        final data = SoCubicFeetListModel.fromJson(element);
        _orderData.add(data);
      });
      return (_orderData, false);
    } catch (e) {
      return (_orderData, false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return OperanceDataTable<SoCubicFeetListModel>(
      columns: SoCubicFeetListColumn.columns,
      emptyStateBuilder: (BuildContext context) => EmptyWidget(),
      onFetch: (limit, sort, {bool isInitial = true}) async {
        return _getData();
      },
      loadingStateBuilder: (BuildContext context) {
        return Center(
          child: CircularProgressIndicator(),
        );
      },
    );
  }
}