import 'sales_order_shortage_review.dart';

class SalesOrderShortageReviewPage extends StatefulWidget {

  const SalesOrderShortageReviewPage({
    super.key,
  });

  @override
  State<SalesOrderShortageReviewPage> createState() => _CreateState();
}

class _CreateState extends State<SalesOrderShortageReviewPage> {

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
      route: '/sales_order_shortage_review',
      title: 'Purchasing / Sales Order Shortage Review',
      body: BaseText(text: 'sales_order_shortage_review'),
    );
  }
}