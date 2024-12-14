import 'package:kp_admin/src/shipping/queue/queue.dart';

class QueuePageExpansionNameColumn {
  static TextStyle columnHeaderStyle = const TextStyle(
    fontWeight: FontWeight.bold,
  );

  static const width = OperanceDataColumnWidth(factor: 1 / 3);

  static List<List<String>> data = [
    ["CA", "131", "138", "212", "4", "0"],
    ["HI", "50", "50", "0", "0", "0"],
    ["IL", "53", "53", "0", "0", "0"],
    ["NJ", "208", "212", "0", "0", "0"],
    ["SC", "144", "147", "0", "0", "0"],
    ["SL", "199", "199", "0", "0", "0"],
    ["TX", "410", "412", "100", "0", "0"],
    ["WA", "70", "70", "0", "0", "0"]
  ];

  static List<OperanceDataColumn<QueueExpansionNameModel>> columns = [
    OperanceDataColumn<QueueExpansionNameModel>(
      name: 'wareHouse',
      width: width,
      columnHeader: Text(
        'WH',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.wareHouse,
        );
      },
    ),
    OperanceDataColumn<QueueExpansionNameModel>(
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
    OperanceDataColumn<QueueExpansionNameModel>(
      name: 'avl',
      width: width,
      columnHeader: Text(
        'Avl',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.avl,
        );
      },
    ),
    OperanceDataColumn<QueueExpansionNameModel>(
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
    OperanceDataColumn<QueueExpansionNameModel>(
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
    OperanceDataColumn<QueueExpansionNameModel>(
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
