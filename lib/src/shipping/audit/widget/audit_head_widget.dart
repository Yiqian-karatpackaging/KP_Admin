import 'dart:async';

import 'package:kp_admin/src/shipping/so_pick/so_pick.dart';

class AuditHeadWidget extends StatefulWidget {
  const AuditHeadWidget({
    super.key,
  });

  @override
  State<AuditHeadWidget> createState() => _CreateState();
}

class _CreateState extends State<AuditHeadWidget> {

  Timer? _timer;
  int _timeCount = 0;
  String _timeCountString = '000.00:00:00';

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _startTimer();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    if (_timer != null) {
      _timer!.cancel();
    }
    super.dispose();
  }

  void _startTimer() {
    const oneSec = Duration(seconds: 1);
    _timer = Timer.periodic(oneSec, (Timer timer) {
      setState(() {
        _timeCount += 1;
        Duration duration = Duration(seconds: _timeCount);
        _timeCountString = '${duration.inDays.toString().padLeft(3, '0')}.'
            '${duration.inHours.remainder(24).toString().padLeft(2, '0')}:'
            '${duration.inMinutes.remainder(60).toString().padLeft(2, '0')}:'
            '${duration.inSeconds.remainder(60).toString().padLeft(2, '0')}';
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 10.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          BaseText(
            text: 'Pick Duration ===>  $_timeCountString',
            textColor: Colors.red,
            fontWeight: FontWeight.w500,
          ),
          SizedBox(
            width: 10.w,
          ),
          BaseText(
            text: 'Pause Duration ===>  000.00:00:00',
            textColor: Colors.red,
            fontWeight: FontWeight.w500,
          ),
        ],
      ),
    );
  }
}
