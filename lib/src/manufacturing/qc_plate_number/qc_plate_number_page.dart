import 'qc_plate_number.dart';

class QCPlateNumberPage extends StatefulWidget {

  const QCPlateNumberPage({
    super.key,
  });

  @override
  State<QCPlateNumberPage> createState() => _CreateState();
}

class _CreateState extends State<QCPlateNumberPage> {

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
      route: '/qc_plate_number',
      title: 'Manufacturing / QC Plate Number',
      body: BaseText(text: 'qc_plate_number'),
    );
  }
}