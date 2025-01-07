import '../ups_quote_item_only.dart';

class UpsQuoteItemOnlyColumn {
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

  static List<OperanceDataColumn<UpsQuoteItemOnlyModel>> columns = [
    OperanceDataColumn<UpsQuoteItemOnlyModel>(
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
    OperanceDataColumn<UpsQuoteItemOnlyModel>(
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
    OperanceDataColumn<UpsQuoteItemOnlyModel>(
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
    OperanceDataColumn<UpsQuoteItemOnlyModel>(
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
    OperanceDataColumn<UpsQuoteItemOnlyModel>(
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
    OperanceDataColumn<UpsQuoteItemOnlyModel>(
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
    OperanceDataColumn<UpsQuoteItemOnlyModel>(
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
    OperanceDataColumn<UpsQuoteItemOnlyModel>(
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
