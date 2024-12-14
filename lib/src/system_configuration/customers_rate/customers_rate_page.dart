import 'customers_rate.dart';

class CustomersRatePage extends StatefulWidget {

  const CustomersRatePage({
    super.key,
  });

  @override
  State<CustomersRatePage> createState() => _CreateState();
}

class _CreateState extends State<CustomersRatePage> {

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
      route: '/customers_rate',
      title: 'System Configuration / Customers Rate',
      body: Container(
        alignment: Alignment.topLeft,
        padding: const EdgeInsets.all(10),
        child: Text(
          'CustomersRatePage',
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 36,
          ),
        ),
      ),
    );
  }
}