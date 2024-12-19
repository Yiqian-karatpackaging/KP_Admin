import 'container_inventory.dart';

class ContainerInventoryPage extends StatefulWidget {

  const ContainerInventoryPage({
    super.key,
  });

  @override
  State<ContainerInventoryPage> createState() => _CreateState();
}

class _CreateState extends State<ContainerInventoryPage> {

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
      route: '/container_inventory',
      title: 'Receiving / Container Inventory',
      body: BaseText(text: 'container_inventory'),
    );
  }
}