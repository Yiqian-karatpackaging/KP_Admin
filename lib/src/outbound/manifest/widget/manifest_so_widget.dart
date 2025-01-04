import '../manifest.dart';

class ManifestSoWidget extends StatefulWidget {

  const ManifestSoWidget({
    super.key,
  });

  @override
  State<ManifestSoWidget> createState() => _CreateState();
}

class _CreateState extends State<ManifestSoWidget> {

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
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              BaseText(
                text: 'Enter Manifest',
                bgColor: Colors.blue,
                textColor: Colors.white,
                padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                borderRadius: 2,
                onTap: () => EnterManifest.show(context, (){}),
              ),
              const SizedBox(width: 10),
              BaseText(
                text: 'Assign To SO',
                bgColor: Colors.blue,
                textColor: Colors.white,
                padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                borderRadius: 2,
                onTap: (){},
              ),
            ],
          ),
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}