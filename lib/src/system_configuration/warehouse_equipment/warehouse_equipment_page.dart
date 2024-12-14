import 'warehouse_equipment.dart';

class WarehouseEquipmentPage extends StatefulWidget {

  const WarehouseEquipmentPage({
    super.key,
  });

  @override
  State<WarehouseEquipmentPage> createState() => _CreateState();
}

class _CreateState extends State<WarehouseEquipmentPage> {

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
      route: '/warehouse_equipment',
      title: 'System Configuration / Warehouse Equipment',
      body: Container(
        alignment: Alignment.topLeft,
        padding: const EdgeInsets.all(10),
        child: Text(
          'WarehouseEquipmentPage',
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 36,
          ),
        ),
      ),
    );
  }
}