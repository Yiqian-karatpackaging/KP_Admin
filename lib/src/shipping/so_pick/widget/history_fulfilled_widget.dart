import 'package:kp_admin/src/shipping/so_pick/so_pick.dart';

class HistoryFulFilledWidget extends StatefulWidget {
  const HistoryFulFilledWidget({
    super.key,
  });

  @override
  State<HistoryFulFilledWidget> createState() => _CreateState();
}

class _CreateState extends State<HistoryFulFilledWidget> {

  List<SoPickModel> _selectData = [];

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

  Future<void> _cancel() async {
    if (fxEmpty(_selectData)) {
      EasyLoading.showToast("ERROR: please select at least one record to cancel");
    } else {
      await saveFile();
    }
  }

  Future<void> _excel() async {
    if (fxEmpty(_selectData)) {
      EasyLoading.showToast("ERROR: please select at least one record to cancel");
    }
    await saveFile();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height - 100,
      child: OperanceDataTable<SoPickModel>(
        showHeader: true,
        showRowsPerPageOptions: false,
        showFooter: false,
        selectable: true,
        columns: HistoryFulfilledColumn.columns,
        emptyStateBuilder: (BuildContext context) => const EmptyWidget(),
        onSelectionChanged: (value) {
          _selectData = value;
        },
        onFetch: (limit, sort, {bool isInitial = true}) async {
          return _getData();
        },
        loadingStateBuilder: (BuildContext context) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        },
        header: [
          GestureDetector(
            onTap: () => _excel(),
            child: Container(
              margin: EdgeInsets.only(right: 5.w),
              padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(2)),
                color: Colors.blue,
              ),
              child: const BaseText(
                text: 'Excel',
                textColor: Colors.white,
              ),
            ),
          ),
          GestureDetector(
            onTap: () => _cancel(),
            child: Container(
              margin: EdgeInsets.only(right: 5.w),
              padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(2)),
                color: Colors.blue,
              ),
              child: const BaseText(
                text: 'Cancel',
                textColor: Colors.white,
              ),
            ),
          ),
          GestureDetector(
            onTap: () => _cancel(),
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(2)),
                color: Colors.blue,
              ),
              child: const BaseText(
                text: 'UnCancel',
                textColor: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
