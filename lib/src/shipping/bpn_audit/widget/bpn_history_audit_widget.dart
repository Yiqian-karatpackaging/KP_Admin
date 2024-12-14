import 'package:kp_admin/src/shipping/bpn_audit/bpn_audit.dart';

class BpnHistoryAuditWidget extends StatefulWidget {
  const BpnHistoryAuditWidget({
    super.key,
  });

  @override
  State<BpnHistoryAuditWidget> createState() => _CreateState();
}

class _CreateState extends State<BpnHistoryAuditWidget> {

  List<BPNHistoryAuditModel> _selectData = [];

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

  Future<(List<BPNHistoryAuditModel>, bool)> _getData() async {
    List<BPNHistoryAuditModel> _orderData = [];
    try {
      final countryJson =
      await rootBundle.loadString('assets/so_pick_list.json');
      final jsonData = json.decode(countryJson);
      if (jsonData is List) {
        jsonData.forEach((element) {
          final data = BPNHistoryAuditModel.fromJson(element);
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
    return SizedBox(
      height: MediaQuery.of(context).size.height - 100,
      child: OperanceDataTable<BPNHistoryAuditModel>(
        showHeader: true,
        showRowsPerPageOptions: false,
        showFooter: false,
        // selectable: true,
        columns: BPNAuditHistoryColumn.columns,
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
            // onTap: () => _excel(),
            child: Container(
              margin: EdgeInsets.only(right: 5.w),
              padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(2)),
                color: Colors.blue,
              ),
              child: const BaseText(
                text: 'Delete',
                textColor: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
