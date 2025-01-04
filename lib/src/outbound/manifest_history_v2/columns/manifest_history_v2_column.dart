import '../manifest_history_v2.dart';

class ManifestHistoryV2Column {
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


  static List<OperanceDataColumn<ManifestHistoryV2Model>> columns = [
    OperanceDataColumn<ManifestHistoryV2Model>(
      name: 'Action',
      columnHeader: Text(
        'Action',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return GestureDetector(
          child: Icon(Icons.edit, color: Colors.blue,),
        );
      },
    ),
    OperanceDataColumn<ManifestHistoryV2Model>(
      name: 'Priority',
      columnHeader: Text(
        'Priority',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.priority,
        );
      },
    ),
    OperanceDataColumn<ManifestHistoryV2Model>(
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
    OperanceDataColumn<ManifestHistoryV2Model>(
      name: 'Route#',
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
    OperanceDataColumn<ManifestHistoryV2Model>(
      name: 'Truck#',
      columnHeader: Text(
        'Truck#',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.truck,
        );
      },
    ),
    OperanceDataColumn<ManifestHistoryV2Model>(
      name: 'Truck Type',
      columnHeader: Text(
        'Truck Type',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.truckType,
        );
      },
    ),
    OperanceDataColumn<ManifestHistoryV2Model>(
      name: 'Trailer#',
      columnHeader: Text(
        'Trailer#',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.trailer,
        );
      },
    ),
    OperanceDataColumn<ManifestHistoryV2Model>(
      name: 'Driver',
      columnHeader: Text(
        'Driver',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.driver,
        );
      },
    ),
    OperanceDataColumn<ManifestHistoryV2Model>(
      name: 'Total Route Timer',
      columnHeader: Text(
        'Total Route Timer',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.totalRouteTimer,
        );
      },
    ),
    OperanceDataColumn<ManifestHistoryV2Model>(
      name: 'Loader',
      columnHeader: Text(
        'Loader',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.loader,
        );
      },
    ),
    OperanceDataColumn<ManifestHistoryV2Model>(
      name: 'Departure Schedule',
      columnHeader: Text(
        'Departure Schedule',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.departureSchedule,
        );
      },
    ),
    OperanceDataColumn<ManifestHistoryV2Model>(
      name: 'Stops',
      columnHeader: Text(
        'Stops',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.stops,
        );
      },
    ),
    OperanceDataColumn<ManifestHistoryV2Model>(
      name: 'Pallets',
      columnHeader: Text(
        'Pallets',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.pallets,
        );
      },
    ),
    OperanceDataColumn<ManifestHistoryV2Model>(
      name: 'Weight',
      columnHeader: Text(
        'Weight',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.weight,
        );
      },
    ),
  ];
}
