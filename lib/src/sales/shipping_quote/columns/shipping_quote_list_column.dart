import '../shipping_quote.dart';

class ShippingQuoteListColumn {
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
  ];

  static List<OperanceDataColumn<ShippingQuoteListModel>> columns = [
    OperanceDataColumn<ShippingQuoteListModel>(
      name: 'Box Count',
      columnHeader: Text(
        'Box Count',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.boxCount,
        );
      },
    ),
    OperanceDataColumn<ShippingQuoteListModel>(
      name: 'Total PalletCount',
      columnHeader: Text(
        'Total PalletCount',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.totalPalletCount,
        );
      },
    ),
    OperanceDataColumn<ShippingQuoteListModel>(
      name: 'PalletCount',
      columnHeader: Text(
        'PalletCount',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.palletCount,
        );
      },
    ),
    OperanceDataColumn<ShippingQuoteListModel>(
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
    OperanceDataColumn<ShippingQuoteListModel>(
      name: 'Class',
      columnHeader: Text(
        'Class',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.classes,
        );
      },
    ),
    OperanceDataColumn<ShippingQuoteListModel>(
      name: 'NMFC',
      columnHeader: Text(
        'NMFC#',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.nmfc,
        );
      },
    ),
    OperanceDataColumn<ShippingQuoteListModel>(
      name: 'OverWeight',
      columnHeader: Text(
        'OverWeight#',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.overWeight,
        );
      },
    ),
    OperanceDataColumn<ShippingQuoteListModel>(
      name: 'TL OverWeight',
      columnHeader: Text(
        'TL OverWeight#',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.tlOverWeight,
        );
      },
    ),
    OperanceDataColumn<ShippingQuoteListModel>(
      name: 'TotalCF',
      columnHeader: Text(
        'TotalCF',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.totalCF,
        );
      },
    ),
    OperanceDataColumn<ShippingQuoteListModel>(
      name: 'PCF',
      columnHeader: Text(
        'PCF',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.pcf,
        );
      },
    ),
  ];
}
