import 'package:kp_admin/src/shipping/update_shipped_status/update_shipped_status.dart';

class UpdateShippedStatusPage extends StatefulWidget {
  const UpdateShippedStatusPage({
    super.key,
  });

  @override
  State<UpdateShippedStatusPage> createState() => _CreateState();
}

class _CreateState extends State<UpdateShippedStatusPage>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;
  /// 当前步骤
  int _currentStepIndex = 1;
  /// 步骤标题
  final _titleData = [
    'Non Shipped',
    'Mark Shipped',
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: _titleData.length, vsync: this);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      route: '/update_shipped_status',
      title: 'Shipping / Update Shipped Status',
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
            Expanded(
              child: TabBarView(
                controller: _tabController,
                physics: const NeverScrollableScrollPhysics(),
                children: [
                  NonShippedWidget(),
                  MarkShippedWidget(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
