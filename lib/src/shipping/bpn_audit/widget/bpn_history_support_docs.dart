import 'package:kp_admin/src/shipping/bpn_audit/bpn_audit.dart';

class BpnHistorySupportDocs extends StatefulWidget {
  const BpnHistorySupportDocs({
    super.key,
  });

  @override
  State<BpnHistorySupportDocs> createState() => _CreateState();
}

class _CreateState extends State<BpnHistorySupportDocs> {
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

  Future<(List<BPNAuditSupportDocsModel>, bool)> _getData() async {
    List<BPNAuditSupportDocsModel> _orderData = [];
    try {
      final countryJson =
      await rootBundle.loadString('assets/so_pick_list.json');
      final jsonData = json.decode(countryJson);
      if (jsonData is List) {
        jsonData.forEach((element) {
          final data = BPNAuditSupportDocsModel.fromJson(element);
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
      child: OperanceDataTable<BPNAuditSupportDocsModel>(
        showHeader: true,
        showRowsPerPageOptions: false,
        showFooter: false,
        columns: BPNAuditSupportDocsColumn.columns,
        emptyStateBuilder: (BuildContext context) => const EmptyWidget(),
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
            onTap: () async {
              // final result = await selectFile();
              // print(result);
            },
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(2)),
                color: Colors.blue,
              ),
              child: const BaseText(
                text: 'Upload',
                textColor: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
