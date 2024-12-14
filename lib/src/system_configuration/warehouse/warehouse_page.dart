import 'warehouse.dart';

class WarehousePage extends StatefulWidget {

  const WarehousePage({
    super.key,
  });

  @override
  State<WarehousePage> createState() => _CreateState();
}

class _CreateState extends State<WarehousePage> {

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
      route: '/warehouse',
      title: 'System Configuration / Warehouse',
      body: Container(
        alignment: Alignment.topLeft,
        padding: const EdgeInsets.all(10),
        child: Text(
          'WarehousePage',
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 36,
          ),
        ),
      ),
    );
  }
}