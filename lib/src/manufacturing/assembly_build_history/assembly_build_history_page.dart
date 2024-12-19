import 'assembly_build_history.dart';

class AssemblyBuildHistoryPage extends StatefulWidget {

  const AssemblyBuildHistoryPage({
    super.key,
  });

  @override
  State<AssemblyBuildHistoryPage> createState() => _CreateState();
}

class _CreateState extends State<AssemblyBuildHistoryPage> {

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
      route: '/assembly_build_history',
      title: 'Manufacturing / Assembly Build History',
      body: BaseText(text: 'assembly_build_history'),
    );
  }
}