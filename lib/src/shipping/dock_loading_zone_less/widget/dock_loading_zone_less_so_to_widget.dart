import 'package:kp_admin/src/shipping/dock_loading/dock_loading.dart';

class DockLoadingZoneLessSoToWidget extends StatefulWidget {

  const DockLoadingZoneLessSoToWidget({
    super.key,
  });

  @override
  State<DockLoadingZoneLessSoToWidget> createState() => _CreateState();
}

class _CreateState extends State<DockLoadingZoneLessSoToWidget> {

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

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 20,),
        Row(
          children: [
            SearchTextFieldWidget(title: 'SO#/TO#', textWidth: 100,),
            SizedBox(width: 8,),
            SearchButtonWidget(title: 'Search', onTap: (){}),
            SearchButtonWidget(title: 'Scan', onTap: (){}),
          ],
        )
      ],
    );
  }
}