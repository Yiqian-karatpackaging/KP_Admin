import '../shipping_quote.dart';

class ShippingQuoteListDetailColumn {
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

  static List<OperanceDataColumn<ShippingQuoteListDetailModel>> columns = [
    OperanceDataColumn<ShippingQuoteListDetailModel>(
      name: 'Quantity',
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
    OperanceDataColumn<ShippingQuoteListDetailModel>(
      name: 'QTY On Hand',
      columnHeader: Text(
        'QTY On Hand',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.qtyOnHand,
        );
      },
    ),
    OperanceDataColumn<ShippingQuoteListDetailModel>(
      name: 'WH',
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
    OperanceDataColumn<ShippingQuoteListDetailModel>(
      name: 'Item Code',
      columnHeader: Text(
        'Item Code',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.itemCode,
        );
      },
    ),
    OperanceDataColumn<ShippingQuoteListDetailModel>(
      name: 'Legacy Item',
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
    OperanceDataColumn<ShippingQuoteListDetailModel>(
      name: 'Description',
      columnHeader: Text(
        'Description#',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.description,
        );
      },
    ),
    OperanceDataColumn<ShippingQuoteListDetailModel>(
      name: 'Total Case Count',
      columnHeader: Text(
        'Total Case Count',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.totalCaseCount,
        );
      },
    ),
    OperanceDataColumn<ShippingQuoteListDetailModel>(
      name: 'TI',
      columnHeader: Text(
        'TI',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.ti,
        );
      },
    ),
    OperanceDataColumn<ShippingQuoteListDetailModel>(
      name: '1 plt Count',
      columnHeader: Text(
        '1 plt Count',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.pltCount,
        );
      },
    ),
    OperanceDataColumn<ShippingQuoteListDetailModel>(
      name: 'Max',
      columnHeader: Text(
        'Max',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.max,
        );
      },
    ),
    OperanceDataColumn<ShippingQuoteListDetailModel>(
      name: 'Qty / Case',
      columnHeader: Text(
        'Qty / Case',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.qtyCase,
        );
      },
    ),
    OperanceDataColumn<ShippingQuoteListDetailModel>(
      name: 'Plt Count',
      columnHeader: Text(
        'Plt Count',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.pltCount,
        );
      },
    ),
    OperanceDataColumn<ShippingQuoteListDetailModel>(
      name: 'Weight / Case',
      columnHeader: Text(
        'Weight / Case',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.weightCase,
        );
      },
    ),
    OperanceDataColumn<ShippingQuoteListDetailModel>(
      name: 'Weight Type',
      columnHeader: Text(
        'Weight Type',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.weightType,
        );
      },
    ),
    OperanceDataColumn<ShippingQuoteListDetailModel>(
      name: 'Total Weight',
      columnHeader: Text(
        'Total Weight',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.totalWeight,
        );
      },
    ),
  ];
}
