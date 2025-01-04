import 'vehicle_utilization.dart';

class VehicleUtilizationPage extends StatefulWidget {

  const VehicleUtilizationPage({
    super.key,
  });

  @override
  State<VehicleUtilizationPage> createState() => _CreateState();
}

class _CreateState extends State<VehicleUtilizationPage> {

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
      route: '/vehicle_utilization',
      title: 'System Configuration / Vehicle Utilization',
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              SearchCalendarTextFieldWidget(title: 'Date From:', titleWidth: 30, onChanged: (){}),
              SearchCalendarTextFieldWidget(title: 'Date To:', titleWidth: 30, onChanged: (){}),
              const SizedBox(width: 8),
              const BaseText(text: 'Search', bgColor: Colors.blue, textColor: Colors.white, padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10), borderRadius: 2,),
            ],
          ),
          SizedBox(height: 10),
          BaseText(text: 'Vehicles Used:'),
          SizedBox(height: 10),
          BaseText(text: 'Utilization:'),
          SizedBox(height: 10),
          BaseText(text: 'Average Hours Used (per day):')
        ],
      ),
      ),
    );
  }
}