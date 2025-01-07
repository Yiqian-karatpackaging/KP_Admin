import '../rack_queue.dart';

class RackQueueColumn {
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

  static List<OperanceDataColumn<RackQueueModel>> columns = [
    OperanceDataColumn<RackQueueModel>(
      name: 'Action',
      columnHeader: Text(
        'Action',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.action,
        );
      },
    ),
    OperanceDataColumn<RackQueueModel>(
      name: 'warehouse',
      columnHeader: Text(
        'WH',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.warehouse,
        );
      },
    ),
    OperanceDataColumn<RackQueueModel>(
      name: 'SO#',
      columnHeader: Text(
        'SO#',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.so,
        );
      },
    ),
    OperanceDataColumn<RackQueueModel>(
      name: 'item',
      columnHeader: Text(
        'Item',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.item,
        );
      },
    ),
    OperanceDataColumn<RackQueueModel>(
      name: 'legacy',
      columnHeader: Text(
        'Legacy',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.legacy,
        );
      },
    ),
    OperanceDataColumn<RackQueueModel>(
      name: 'qty',
      columnHeader: Text(
        'QTY',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.qty,
        );
      },
    ),
    OperanceDataColumn<RackQueueModel>(
      name: 'Pallet Movement By',
      columnHeader: Text(
        'Pallet Movement By',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.quantity,
        );
      },
    ),
    OperanceDataColumn<RackQueueModel>(
      name: 'palletMovementDate',
      columnHeader: Text(
        'Pallet Movement Date',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.palletMovementDate,
        );
      },
    ),
  ];
}
