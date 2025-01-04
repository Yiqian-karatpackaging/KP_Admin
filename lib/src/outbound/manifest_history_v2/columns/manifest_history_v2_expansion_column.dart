import '../manifest_history_v2.dart';

class ManifestHistoryV2ExpansionColumn {
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

  static List<OperanceDataColumn<ManifestHistoryV2ExpansionModel>> columns = [
    OperanceDataColumn<ManifestHistoryV2ExpansionModel>(
      name: 'Action',
      width: _width,
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
    OperanceDataColumn<ManifestHistoryV2ExpansionModel>(
      name: 'Item Code',
      width: _width,
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
    OperanceDataColumn<ManifestHistoryV2ExpansionModel>(
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
    OperanceDataColumn<ManifestHistoryV2ExpansionModel>(
      name: 'Order QTY',
      width: _width,
      columnHeader: Text(
        'Order QTY',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.orderQty,
        );
      },
    ),
    OperanceDataColumn<ManifestHistoryV2ExpansionModel>(
      name: 'Description',
      width: _width,
      columnHeader: Text(
        'Description',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.description,
        );
      },
    ),
    OperanceDataColumn<ManifestHistoryV2ExpansionModel>(
      name: 'QTY To Return',
      width: _width,
      columnHeader: Text(
        'QTY To Return',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.qtyToReturn,
        );
      },
    ),
    OperanceDataColumn<ManifestHistoryV2ExpansionModel>(
      name: 'Notes',
      width: _width,
      columnHeader: Text(
        'Notes',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.notes,
        );
      },
    ),
  ];
}
