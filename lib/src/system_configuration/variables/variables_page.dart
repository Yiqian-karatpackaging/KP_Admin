import 'variables.dart';

class VariablesPage extends StatefulWidget {

  const VariablesPage({
    super.key,
  });

  @override
  State<VariablesPage> createState() => _CreateState();
}

class _CreateState extends State<VariablesPage> {

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
      route: '/variables',
      title: 'System Configuration / Variables',
      body: BaseText(text: 'variables'),
    );
  }
}