import 'package:kp_admin/src/shipping/so_pick/so_pick.dart';

class HistoryPersonalBinOverride extends StatefulWidget {
  const HistoryPersonalBinOverride({
    super.key,
  });

  @override
  State<HistoryPersonalBinOverride> createState() => _CreateState();
}

class _CreateState extends State<HistoryPersonalBinOverride> {
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

  Future<(List<SoPickModel>, bool)> _getData() async {
    List<SoPickModel> _orderData = [];
    try {
      final countryJson =
      await rootBundle.loadString('assets/so_pick_list.json');
      final jsonData = json.decode(countryJson);
      if (jsonData is List) {
        jsonData.forEach((element) {
          final data = SoPickModel.fromJson(element);
          _orderData.add(data);
        });
      }
      return (_orderData, false);
    } catch (e) {
      return (_orderData, false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height - 100,
      child: OperanceDataTable<SoPickModel>(
        showRowsPerPageOptions: false,
        showFooter: false,
        columns: HistoryPersonalBinOverrideColumn.columns,
        emptyStateBuilder: (BuildContext context) => EmptyWidget(),
        onFetch: (limit, sort, {bool isInitial = true}) async {
          return _getData();
        },
        loadingStateBuilder: (BuildContext context) {
          return Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}
