import 'package:linear_progress_bar/linear_progress_bar.dart';
import 'to_receive_scan.dart';

class ToReceiveScanPage extends StatefulWidget {

  const ToReceiveScanPage({
    super.key,
  });

  @override
  State<ToReceiveScanPage> createState() => _CreateState();
}

class _CreateState extends State<ToReceiveScanPage> with SingleTickerProviderStateMixin {
  TabController? _tabController;
  /// 当前步骤
  int _currentStepIndex = 1;
  /// 步骤标题
  final _titleData = [
    'Step 1:TO Items',
    'Step 2:Item Scan',
    'Step 3:Scanned Item',
    'Step 4:Support Docs',
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: _titleData.length, vsync: this);
    _tabController?.addListener(() {
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      route: '/to_receive_scan',
      title: 'Receiving / TO Receive Scan',
      body: SizedBox(
        height: MediaQuery.of(context).size.height - 100,
        child: Column(
          children: [
            SizedBox(
              height: 44,
              child: Row(
                children: _titleData.map((e) {
                  return Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          _currentStepIndex = _titleData.indexOf(e) + 1;
                          _tabController?.animateTo(_titleData.indexOf(e));
                        });
                      },
                      child: Container(
                        height: 40,
                        color: _titleData[_currentStepIndex - 1] == e
                            ? Colors.blue
                            : Colors.transparent,
                        child: Center(
                          child: Text(
                            e,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: _titleData[_currentStepIndex - 1] == e
                                  ? Colors.white
                                  : Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
                }).toList(),
              ),
            ),
            SizedBox(
              height: 10,
              child: LinearProgressBar(
                maxSteps: _titleData.length,
                progressType: LinearProgressBar.progressTypeLinear,
                currentStep: _currentStepIndex,
                progressColor: Colors.blue,
                backgroundColor: Colors.grey,
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            Expanded(
              child: TabBarView(
                controller: _tabController,
                physics: const NeverScrollableScrollPhysics(),
                children: [
                  ToReceiveScanItemWidget(),
                  ToReceiveScanItemScanWidget(),
                  ToReceiveScanScannedItemWidget(),
                  ToReceiveScanSupportDocsWidget(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}