import 'package:kp_admin/src/shipping/bpn_pick/bpn_pick.dart';

class BPNHistoryFulFilledWidget extends StatefulWidget {
  const BPNHistoryFulFilledWidget({
    super.key,
  });

  @override
  State<BPNHistoryFulFilledWidget> createState() => _CreateState();
}

class _CreateState extends State<BPNHistoryFulFilledWidget> {

  final _menuButtonData = [{'id': 'excel', 'title': 'Excel', },{'id': 'cancel', 'title': 'Cancel', },{'id': 'unCancel', 'title': 'UnCancel', },];

  List<BpnPickModel> _selectData = [];

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

  Future<(List<BpnPickModel>, bool)> _getData() async {
    List<BpnPickModel> _orderData = [];
    try {
      final countryJson =
      await rootBundle.loadString('assets/so_pick_list.json');
      final jsonData = json.decode(countryJson);
      if (jsonData is List) {
        jsonData.forEach((element) {
          final data = BpnPickModel.fromJson(element);
          _orderData.add(data);
        });
      }
      return (_orderData, false);
    } catch (e) {
      return (_orderData, false);
    }
  }

  Future<void> _headButtonClick(Map<String, dynamic> info) async {
    switch(info['id']){
      case 'excel':
        if (fxEmpty(_selectData)) {
          EasyLoading.showToast("ERROR: please select at least one record to cancel");
        } else {
          await saveFile();
        }
        break;
      case 'cancel':
        if (fxEmpty(_selectData)) {
          EasyLoading.showToast("ERROR: please select at least one record to cancel");
        } else {

        }
        break;
      case 'unCancel':
        if (fxEmpty(_selectData)) {
          EasyLoading.showToast("ERROR: please select at least one record to cancel");
        } else {

        }
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TableHeadWidget(menuButtonData: _menuButtonData, callBack: (value) => _headButtonClick(value),),
        Expanded(child: SizedBox(
          height: MediaQuery.of(context).size.height - 100,
          child: OperanceDataTable<BpnPickModel>(
            showRowsPerPageOptions: false,
            selectable: true,
            columns: BPNHistoryFulfilledColumn.columns,
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
          ),
        ),),
      ],
    );
  }
}
