import '../route_prep.dart';

class RoutePrepListColumn {
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

  static const _width = OperanceDataColumnWidth(factor: 1 / 6);

  static List<OperanceDataColumn<RoutePrepListModel>> columns = [
    OperanceDataColumn<RoutePrepListModel>(
      name: 'Ship Address1',
      width: _width,
      columnHeader: Text(
        'Ship Address1',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.shipAddress1,
        );
      },
    ),
    OperanceDataColumn<RoutePrepListModel>(
      name: 'Ship Address2',
      width: _width,
      columnHeader: Text(
        'Ship Address2',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.shipAddress2,
        );
      },
    ),
    OperanceDataColumn<RoutePrepListModel>(
      name: 'Ship City',
      width: _width,
      columnHeader: Text(
        'Ship City',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.shipCity,
        );
      },
    ),
    OperanceDataColumn<RoutePrepListModel>(
      name: 'Ship State',
      width: _width,
      columnHeader: Text(
        'Ship State',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.shipState,
        );
      },
    ),
    OperanceDataColumn<RoutePrepListModel>(
      name: 'Ship Zip Code',
      width: _width,
      columnHeader: Text(
        'Ship Zip Code',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.shipZipCode,
        );
      },
    ),
    OperanceDataColumn<RoutePrepListModel>(
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
  ];
}
