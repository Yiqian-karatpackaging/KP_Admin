import '../to_receive_scan.dart';

class ToReceiveScanItemWidget extends StatefulWidget {

  const ToReceiveScanItemWidget({
    super.key,
  });

  @override
  State<ToReceiveScanItemWidget> createState() => _CreateState();
}

class _CreateState extends State<ToReceiveScanItemWidget> {

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
        SizedBox(height: 10.h),
        Row(
          children: [
            SearchTextFieldWidget(
              title: 'TO:',
              titleWidth: 20,
              textWidth: 80,
              onFieldSubmitted: (value) {
                print('TO: $value');
              },
            ),
            SizedBox(width: 5.w),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/scan');
              },
              child: const Icon(Icons.settings_overscan),
            ),
            SizedBox(width: 5.w),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/scan');
              },
              child: const Icon(Icons.settings_overscan),
            ),
            SizedBox(width: 5.w),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/scan');
              },
              child: const Icon(Icons.settings_overscan),
            ),
          ],
        )
      ],
    );
  }
}