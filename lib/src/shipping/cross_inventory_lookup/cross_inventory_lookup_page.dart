import 'package:kp_admin/src/shipping/cross_inventory_lookup/cross_inventory_lookup.dart';
import 'package:linear_progress_bar/linear_progress_bar.dart';

class CrossInventoryLookupPage extends StatefulWidget {

  const CrossInventoryLookupPage({
    super.key,
  });

  @override
  State<CrossInventoryLookupPage> createState() => _CreateState();
}

class _CreateState extends State<CrossInventoryLookupPage> with SingleTickerProviderStateMixin {
  TabController? _tabController;
  /// 当前步骤
  int _currentStepIndex = 1;
  /// 步骤标题
  final _titleData = [
    'Step 1:SO#/TO#/Item',
    'Step 2:List',
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: _titleData.length, vsync: this);
    _tabController?.addListener(() {
      // if (_soPickModel == null && _tabController?.index == 1) {
      //   _tabController?.animateTo(0);
      // } else {
      //   setState(() {
      //     _currentStepIndex = (_tabController?.index ?? 0) + 1;
      //   });
      // }
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
      route: '/cross_inventory_lookup',
      title: 'Shipping / Cross Inventory Lookup',
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
                  CrossInventoryLookupSoToWidget(),
                  CrossInventoryLookupWidget(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
