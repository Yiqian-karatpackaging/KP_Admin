import 'package:kp_admin/src/shipping/so_pick/so_pick.dart';

class HistorySupportDocs extends StatefulWidget {
  const HistorySupportDocs({
    super.key,
  });

  @override
  State<HistorySupportDocs> createState() => _CreateState();
}

class _CreateState extends State<HistorySupportDocs> {
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
    return SizedBox(
      height: MediaQuery.of(context).size.height - 100,
      child: OperanceDataTable<SoPickModel>(
        showHeader: true,
        showRowsPerPageOptions: false,
        showFooter: false,
        columns: HistorySupportDocsColumn.columns,
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
              final result = await selectFile();
              print(result);
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
