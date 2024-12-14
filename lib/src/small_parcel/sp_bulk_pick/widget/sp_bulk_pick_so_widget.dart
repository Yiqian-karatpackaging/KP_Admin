import '../sp_bulk_pick.dart';

class SPBulkPickSoWidget extends StatefulWidget {

  final Function callBack;

  const SPBulkPickSoWidget({
    required this.callBack,
    super.key,
  });

  @override
  State<SPBulkPickSoWidget> createState() => _CreateState();
}

class _CreateState extends State<SPBulkPickSoWidget> {
  final List<String> _soCodeData = [''];

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
    return Container(
      padding: EdgeInsets.only(top: 10.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: [
              SearchDropdownWidget(title: 'Pick', titleWidth: 10, onChanged: () {}),
              SizedBox(width: 5.w),
              BaseText(
                text: 'Bulk Pick',
                textColor: Colors.white,
                bgColor: Colors.blue,
                borderRadius: 2.w,
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 5,
                ),
                onTap: () => widget.callBack(),
              ),
            ],
          ),
          SizedBox(height: 10.w),
          Expanded(
            child: ListView.separated(
              itemBuilder: (context, index) {
                return SearchTextFieldWidget(
                  title: '${index + 1}',
                  titleWidth: 10,
                  onChanged: (value) {
                    setState(() {
                      _soCodeData[index] = value;
                    });
                  },
                  onFieldSubmitted: (value) {
                    setState(() {
                      _soCodeData.add('');
                    });
                  },
                );
              },
              separatorBuilder: (context, index) {
                return const SizedBox(height: 4);
              },
              itemCount: _soCodeData.length,
            ),
          ),
        ],
      ),
    );
  }
}
