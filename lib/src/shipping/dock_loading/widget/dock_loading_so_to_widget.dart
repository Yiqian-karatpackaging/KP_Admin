import 'package:kp_admin/src/shipping/dock_loading/dock_loading.dart';

class DockLoadingSoToWidget extends StatefulWidget {

  const DockLoadingSoToWidget({
    super.key,
  });

  @override
  State<DockLoadingSoToWidget> createState() => _CreateState();
}

class _CreateState extends State<DockLoadingSoToWidget> {

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