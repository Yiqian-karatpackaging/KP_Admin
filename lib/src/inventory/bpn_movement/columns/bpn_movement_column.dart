import '../bpn_movement.dart';

class BPNMovementColumn {
  static TextStyle columnHeaderStyle = const TextStyle(
    fontWeight: FontWeight.bold,
  );

  static List<List<String>> data = [
    [
      "",
      "2258017",
      "10.0000.026",
      "TeaZone Popping Pearls GOURMET-Series Chocolate (7.0lb jar) [B2071]",
      "4",
      "24559",
      "1",
      "Harley",
      "10/24/2024 8:40 PM",
      "4582",
      "24559",
      "003-005A",
      "",
      "",
      "B2071",
      "28",
      "",
      "",
      "CA",
      "",
      "",
      "0",
      "",
      "",
      "",
      "",
      "OOCU7791136:50094",
      "",
      ""
    ]
  ];

  static const _width = OperanceDataColumnWidth(factor: 1 / 4);

  static List<OperanceDataColumn<BPNMovementModel>> columns = [
    OperanceDataColumn<BPNMovementModel>(
      name: 'scanId',
      width: _width,
      columnHeader: Text(
        'ScanId',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.scanId,
        );
      },
    ),
    OperanceDataColumn<BPNMovementModel>(
      name: 'itemName',
      width: _width,
      columnHeader: Text(
        'Item Name',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.itemName,
        );
      },
    ),
    OperanceDataColumn<BPNMovementModel>(
      name: 'legacyItem',
      width: _width,
      columnHeader: Text(
        'Legacy Item',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.legacyItem,
        );
      },
    ),
    OperanceDataColumn<BPNMovementModel>(
      name: 'quantity',
      width: _width,
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
