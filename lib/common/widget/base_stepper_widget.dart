import 'package:cart_stepper/cart_stepper.dart';
import 'package:kp_admin/src/system_configuration/resin_vendor_table/resin_vendor_table.dart';

class BaseStepperWidget extends StatefulWidget {
  final Function onChanged;
  final String title;
  final double titleWidth;

  const BaseStepperWidget({
    required this.title,
    required this.onChanged,
    this.titleWidth = 30,
    super.key,
  });

  @override
  State<BaseStepperWidget> createState() => _CreateState();
}

class _CreateState extends State<BaseStepperWidget> {
  int _counter = 1;

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
    return Row(
      children: [
        Container(
          width: widget.titleWidth.w,
          margin: EdgeInsets.only(right: 5.w),
          child: BaseText(
            text: widget.title,
            textAlign: TextAlign.end,
          ),
        ),
        CartStepperInt(
          count: _counter,
          size: 35,
          numberSize: 6,
          alwaysExpanded: true,
          editKeyboardType: TextInputType.number,
          style: const CartStepperStyle(
            radius: Radius.circular(4),
            activeForegroundColor: Colors.black,
            activeBackgroundColor: Colors.white,
          ),
          didChangeCount: (count) {
            setState(() {
              _counter = count;
            });
          },
        ),
      ],
    );
  }
}
