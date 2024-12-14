import 'package:kp_admin/src/shipping/bpn_pick/bpn_pick.dart';
import 'package:linear_progress_bar/linear_progress_bar.dart';

class BPNPickPage extends StatefulWidget {

  const BPNPickPage({
    super.key,
  });

  @override
  State<BPNPickPage> createState() => _CreateState();
}

class _CreateState extends State<BPNPickPage> with SingleTickerProviderStateMixin {

  TabController? _tabController;
  /// 当前步骤
  int _currentStep = 1;
  /// 步骤标题
  final _titleData = [
    'Step 1:Picking List',
    'History:FulFilled',
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: _titleData.length, vsync: this);
    _tabController?.addListener(() {
      setState(() {
        _currentStep = (_tabController?.index ?? 0) + 1;
      });
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
      route: '/bpn_pick',
      title: 'Shipping / BPN Pick',
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
                          _currentStep = _titleData.indexOf(e) + 1;
                          _tabController?.animateTo(_titleData.indexOf(e));
                        });
                      },
                      child: Container(
                        height: 40.h,
                        padding: EdgeInsets.symmetric(horizontal: 5.w),
                        color: _titleData[_currentStep - 1] == e
                            ? Colors.blue
                            : Colors.transparent,
                        child: Center(
                          child: Text(
                            e,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: _titleData[_currentStep - 1] == e
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
                currentStep: _currentStep,
                progressColor: Colors.blue,
                backgroundColor: Colors.grey,
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            CountDownWidget(),
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: const [
                  BPNPickingListWidget(),
                  BPNHistoryFulFilledWidget(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}