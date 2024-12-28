import '../to_queue.dart';

class ToQueueExpansionColumn {
  static TextStyle columnHeaderStyle = const TextStyle(
    fontWeight: FontWeight.bold,
  );

  static List<List<String>> data = [
    [
      "11208",
      "20.2922.032",
      "C-KC16",
      "CA",
      "2330812",
      "STAGE01",
      "1",
      "TO",
      "16964",
      "16 oz Clear PET Cups (Karat, 98mm) C-KC16 [C-KC16]",
      "11/6/2024 4:29 PM",
      "adam.hsia",
      "0",
      "",
      "United States"
    ],
    [
      "11209",
      "10.0000.019",
      "B2059",
      "CA",
      "2295328",
      "003-012A",
      "1",
      "SO",
      "12901697",
      "TeaZone Popping Pearls GOURMET-Series Cherry [B2059]",
      "11/7/2024 2:01 AM",
      "shiso",
      "0",
      "",
      ""
    ]
  ];

  static const _width = OperanceDataColumnWidth(factor: 1 / 7);

  static List<OperanceDataColumn<ToQueueExpansionModel>> columns = [
    OperanceDataColumn<ToQueueExpansionModel>(
      name: 'Item Name',
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
    OperanceDataColumn<ToQueueExpansionModel>(
      name: 'Legacy Item',
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
    OperanceDataColumn<ToQueueExpansionModel>(
      name: 'Quantity',
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
    OperanceDataColumn<ToQueueExpansionModel>(
      name: 'Qty Fulfilled',
      width: _width,
      columnHeader: Text(
        'Qty Fulfilled',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.qtyFulfilled,
        );
      },
    ),
    OperanceDataColumn<ToQueueExpansionModel>(
      name: 'Qty Received',
      width: _width,
      columnHeader: Text(
        'Qty Received',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.qtyReceived,
        );
      },
    ),
    OperanceDataColumn<ToQueueExpansionModel>(
      name: 'Rate',
      width: _width,
      columnHeader: Text(
        'Rate',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.rate,
        );
      },
    ),
    OperanceDataColumn<ToQueueExpansionModel>(
      name: 'Amount',
      width: _width,
      columnHeader: Text(
        'Amount',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.amount,
        );
      },
    ),
  ];
}
