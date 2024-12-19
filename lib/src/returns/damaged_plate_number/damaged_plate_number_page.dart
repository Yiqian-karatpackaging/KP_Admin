import 'damaged_plate_number.dart';

class DamagedPlateNumberPage extends StatefulWidget {

  const DamagedPlateNumberPage({
    super.key,
  });

  @override
  State<DamagedPlateNumberPage> createState() => _CreateState();
}

class _CreateState extends State<DamagedPlateNumberPage> {

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
    return CustomScaffold(
      route: '/damaged_plate_number',
      title: 'Returns / Damaged Plate Number',
      body: BaseText(text: 'damaged_plate_number'),
    );
  }
}