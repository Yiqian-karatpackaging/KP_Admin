import 'package:kp_admin/src/shipping/bpn_audit/bpn_audit.dart';

class BPNAuditListWidget extends StatefulWidget {

  final Function onRowPressed;

  const BPNAuditListWidget(this.onRowPressed, {
    super.key,
  });

  @override
  State<BPNAuditListWidget> createState() => _CreateState();
}

class _CreateState extends State<BPNAuditListWidget> {
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

  Future<(List<BPNAuditModel>, bool)> _getData() async {
    List<BPNAuditModel> _orderData = [];
    try {
      final countryJson =
      await rootBundle.loadString('assets/so_pick_list.json');
      final jsonData = json.decode(countryJson);
      if (jsonData is List) {
        jsonData.forEach((element) {
          final data = BPNAuditModel.fromJson(element);
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
      child: OperanceDataTable<BPNAuditModel>(
        // showHeader: true,
        // showRowsPerPageOptions: false,
        // showFooter: false,
        // decoration: OperanceDataDecoration(sizes: OperanceDataSizes(headerHeight: 0.0)),
        columns: BPNAuditPickColumn.columns((value) async {
          // if (value is String && value == 'refresh') {
          //   EasyLoading.showToast("refresh data");
          // } else if (value is BPNAuditModel) {
          //   await selectFile();
          //   print(value.itemCode);
          // }
        }),
        emptyStateBuilder: (BuildContext context) => EmptyWidget(),
        // header: [PickingListHeaderWidget()],
        onFetch: (limit, sort, {bool isInitial = true}) async {
          return _getData();
        },
        loadingStateBuilder: (BuildContext context) {
          return Center(
            child: CircularProgressIndicator(),
          );
        },
        onRowPressed: (value) => widget.onRowPressed(value),
      ),
    );
  }
}
