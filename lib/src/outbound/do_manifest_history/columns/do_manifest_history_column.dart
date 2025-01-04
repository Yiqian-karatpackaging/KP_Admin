import '../do_manifest_history.dart';

class DoManifestHistoryColumn {
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

  static const _width = OperanceDataColumnWidth(factor:  1 / 7);

  static List<OperanceDataColumn<DoManifestHistoryModel>> columns = [
    OperanceDataColumn<DoManifestHistoryModel>(
      name: 'Ref#',
      width: _width,
      columnHeader: Text(
        'Ref#',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.ref,
        );
      },
    ),
    OperanceDataColumn<DoManifestHistoryModel>(
      name: 'Route#',
      width: _width,
      columnHeader: Text(
        'Route#',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.route,
        );
      },
    ),
    OperanceDataColumn<DoManifestHistoryModel>(
      name: 'Pick Up Date',
      width: _width,
      columnHeader: Text(
        'Pick Up Date',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.pickUpDate,
        );
      },
    ),
    OperanceDataColumn<DoManifestHistoryModel>(
      name: 'Pick Up Driver',
      width: _width,
      columnHeader: Text(
        'Pick Up Driver',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.pickUpDriver,
        );
      },
    ),
    OperanceDataColumn<DoManifestHistoryModel>(
      name: 'Return Date',
      width: _width,
      columnHeader: Text(
        'Return Date',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.returnDate,
        );
      },
    ),
    OperanceDataColumn<DoManifestHistoryModel>(
      name: 'Return Driver',
      width: _width,
      columnHeader: Text(
        'Return Driver',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.returnDriver,
        );
      },
    ),
    OperanceDataColumn<DoManifestHistoryModel>(
      name: 'Address',
      width: _width,
      columnHeader: Text(
        'Address',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.address,
        );
      },
    ),
  ];
}
