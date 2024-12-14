import 'package:kp_admin/src/shipping/so_fulfill_history/so_fulfill_history.dart';

class SOFulfillHistoryExpansionNameColumn {
  static TextStyle columnHeaderStyle = const TextStyle(
    fontWeight: FontWeight.bold,
  );

  static const width = OperanceDataColumnWidth(factor: 1 / 6);

  static List<List<dynamic>> data = [
    ["BR", "0", "0", "0", "0", "0"],
    ["CA", "6371", "6698", "1896", "347", "0"],
    ["FBA", "0", "0", "56", "74", "0"],
    ["HI", "0", "0", "300", "0", "0"],
    ["IL", "173", "173", "0", "0", "0"],
    ["NJ", "2386", "2734", "430", "8", "0"],
    ["ONT", "0", "0", "0", "0", "0"],
    ["SC", "947", "1188", "0", "0", "0"],
    ["SL", "853", "857", "0", "0", "0"],
    ["TX", "1752", "2171", "0", "420", "0"],
    ["WA", "455", "501", "0", "0", "0"],
    ["WFS", "0", "100", "510", "448", "0"]
  ];

  static List<OperanceDataColumn<SOFulfillHistoryExpansionNameModel>> columns =
      [
    OperanceDataColumn<SOFulfillHistoryExpansionNameModel>(
      name: 'wh',
      width: width,
      columnHeader: Text(
        'WH',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.wh,
        );
      },
    ),
    OperanceDataColumn<SOFulfillHistoryExpansionNameModel>(
      name: 'oh',
      width: width,
      columnHeader: Text(
        'OH',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.oh,
        );
      },
    ),
    OperanceDataColumn<SOFulfillHistoryExpansionNameModel>(
      name: 'avl',
      width: width,
      columnHeader: Text(
        'Avl',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(text: item.avl,);
      },
    ),
    OperanceDataColumn<SOFulfillHistoryExpansionNameModel>(
      name: 'ord',
      width: width,
      columnHeader: Text(
        'Ord',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.ord,
        );
      },
    ),
    OperanceDataColumn<SOFulfillHistoryExpansionNameModel>(
      name: 'backOrd',
      width: width,
      columnHeader: Text(
        'Back Ord',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.backOrd,
        );
      },
    ),
    OperanceDataColumn<SOFulfillHistoryExpansionNameModel>(
      name: 'commitedOrd',
      width: width,
      columnHeader: Text(
        'Commited Ord',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.commitedOrd,
        );
      },
    ),
  ];
}
