import 'package:kp_admin/src/shipping/queue/queue.dart';

class QueuePageExpansionBinColumn {
  static TextStyle columnHeaderStyle = const TextStyle(
    fontWeight: FontWeight.bold,
  );

  static const width = OperanceDataColumnWidth(factor: 1 / 3);

  static List<List<dynamic>> data = [
    [
      "013-005A",
      "1949732",
      "3",
      "PICK",
      "",
      "",
      "",
      "20.2922.022",
      "",
      "1",
      "0",
      "",
      false
    ],
    ["013-048B", "2216482", "24", "BULK", "", "", "", "", "", "5", "0", "", ""],
    ["013-050B", "1949636", "28", "BULK", "", "", "", "", "", "2", "0", "", ""],
    [
      "013-052B",
      "2216536",
      "24",
      "BULK",
      "",
      "",
      "",
      "",
      "",
      "11",
      "0",
      "",
      ""
    ],
    [
      "014-004B",
      "2216489",
      "24",
      "BULK",
      "",
      "",
      "",
      "",
      "",
      "10",
      "0",
      "",
      ""
    ],
    ["014-016B", "2216480", "24", "BULK", "", "", "", "", "", "4", "0", "", ""],
    ["014-032B", "2216485", "24", "BULK", "", "", "", "", "", "7", "0", "", ""],
    ["014-043B", "1949637", "28", "BULK", "", "", "", "", "", "3", "0", "", ""],
    ["014-070D", "2216488", "24", "BULK", "", "", "", "", "", "9", "0", "", ""],
    ["015-031B", "2216486", "24", "BULK", "", "", "", "", "", "8", "0", "", ""],
    ["017-017B", "2216483", "24", "BULK", "", "", "", "", "", "6", "0", "", ""],
    [
      "30C-014C",
      "2100081",
      "19",
      "OVERSTOCK",
      "",
      "",
      "",
      "",
      "",
      "12",
      "0",
      "",
      ""
    ],
    [
      "Stage08",
      "2216540",
      "8",
      "STAGING",
      "",
      "",
      "",
      "",
      "",
      "13",
      "0",
      "",
      ""
    ]
  ];

  static List<OperanceDataColumn<QueueExpansionBinModel>> columns = [
    OperanceDataColumn<QueueExpansionBinModel>(
      name: 'bin',
      width: width,
      columnHeader: Text(
        'Bin',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.bin,
        );
      },
    ),
    OperanceDataColumn<QueueExpansionBinModel>(
      name: 'license',
      width: width,
      columnHeader: Text(
        'License#',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.license,
        );
      },
    ),
    OperanceDataColumn<QueueExpansionBinModel>(
      name: 'quantity',
      width: width,
      columnHeader: Text(
        'Quantity',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.quantity,
        );
      },
    ),
  ];
}
