import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';

class EmptyWidget extends StatelessWidget {

  const EmptyWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 100),
          SvgPicture.asset(
            'assets/empty.svg',
            width: 100,
            height: 100,
          ),
          SizedBox(height: 20),
          Text('No data available in table')
        ],
      ),
    );
  }
}