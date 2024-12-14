import 'sp_bulk_pick.dart';

class SPBulkPickPage extends StatefulWidget {
  const SPBulkPickPage({
    super.key,
  });

  @override
  State<SPBulkPickPage> createState() => _CreateState();
}

class _CreateState extends State<SPBulkPickPage> with SingleTickerProviderStateMixin {
  TabController? _tabController;

  /// 当前步骤
  int _currentStepIndex = 1;

  /// 步骤标题
  final _titleData = [
    'Step 1:Enter SO#',
    'Step 2:SO BulkPick DataTable',
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: _titleData.length, vsync: this);
    _tabController?.addListener(() {
      setState(() {
        _currentStepIndex = (_tabController?.index ?? 0) + 1;
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
      route: '/sp_bulk_pick',
      title: 'Small Parcel / SP Bulk Pick',
      body: SizedBox(
        height: usableHeight(context),
        child: Column(
          mainAxisSize: MainAxisSize.min,
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
            Expanded(
              child: TabBarView(
                controller: _tabController,
                physics: const NeverScrollableScrollPhysics(),
                children: [
                  SPBulkPickSoWidget(callBack: () {
                    setState(() {
                      _tabController?.animateTo(1);
                    });
                  },),
                  SPBulkPickDataTableWidget(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
