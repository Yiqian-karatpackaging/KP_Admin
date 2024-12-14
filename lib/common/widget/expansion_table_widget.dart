import 'package:kp_admin/src/shipping/queue/queue.dart';

class ExpansionTableWidget<T> extends StatefulWidget {

  final List<T> data;
  final List<OperanceDataColumn<T>> column;

  const ExpansionTableWidget({
    required this.data,
    required this.column,
    super.key,
  });

  @override
  State<ExpansionTableWidget> createState() => _CreateState<T>();
}

class _CreateState<T> extends State<ExpansionTableWidget> {

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
      height: (widget.data.length + 1) * 56,
      margin: EdgeInsets.only(left: 55),
      child: OperanceDataTable<T>(
        showFooter: false,
        columns: widget.column as List<OperanceDataColumn<T>>,
        emptyStateBuilder: (BuildContext context) => EmptyWidget(),
        onFetch: (limit, sort, {bool isInitial = true}) async {
          return (widget.data as List<T>, false);
        },
      ),
    );
  }
}