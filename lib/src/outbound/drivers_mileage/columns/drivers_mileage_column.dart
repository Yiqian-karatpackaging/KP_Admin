import '../drivers_mileage.dart';

class DriversMileageColumn {
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

  static const _width = OperanceDataColumnWidth(factor: 1 / 5);

  static List<OperanceDataColumn<DriversMileageModel>> columns = [
    OperanceDataColumn<DriversMileageModel>(
      name: 'WH',
      width: _width,
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
    OperanceDataColumn<DriversMileageModel>(
      name: 'User',
      width: _width,
      columnHeader: Text(
        'User',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.user,
        );
      },
    ),
    OperanceDataColumn<DriversMileageModel>(
      name: 'Total Routes',
      width: _width,
      columnHeader: Text(
        'Total Routes',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.totalRoutes,
        );
      },
    ),
    OperanceDataColumn<DriversMileageModel>(
      name: 'Total Stops',
      width: _width,
      columnHeader: Text(
        'Total Stops',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.totalStops,
        );
      },
    ),
    OperanceDataColumn<DriversMileageModel>(
      name: 'Total Mileage',
      width: _width,
      columnHeader: Text(
        'Total Mileage',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.totalMileage,
        );
      },
    ),
  ];
}
