import 'raw_material_movement.dart';

class RawMaterialMovementPage extends StatefulWidget {

  const RawMaterialMovementPage({
    super.key,
  });

  @override
  State<RawMaterialMovementPage> createState() => _CreateState();
}

class _CreateState extends State<RawMaterialMovementPage> {

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
      route: '/raw_material_movement',
      title: 'Manufacturing / Raw Material Movement',
      body: BaseText(text: 'raw_material_movement'),
    );
  }
}