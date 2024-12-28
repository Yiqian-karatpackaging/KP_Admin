import '../to_containers.dart';

class ToContainersColumn {
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

  static const _width = OperanceDataColumnWidth(factor: 1 / 10);

  static List<OperanceDataColumn<ToContainersModel>> columns = [
    OperanceDataColumn<ToContainersModel>(
      name: 'fromWH',
      //width: _width,
      columnHeader: Text(
        'From WH',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.fromWH,
        );
      },
    ),
    OperanceDataColumn<ToContainersModel>(
      name: 'toWH',
      //width: _width,
      columnHeader: Text(
        'To WH',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.toWH,
        );
      },
    ),
    OperanceDataColumn<ToContainersModel>(
      name: 'TO',
      //width: _width,
      columnHeader: Text(
        'TO#',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.to,
        );
      },
    ),
    OperanceDataColumn<ToContainersModel>(
      name: 'Status',
      //width: _width,
      columnHeader: Text(
        'Status',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.status,
        );
      },
    ),
    OperanceDataColumn<ToContainersModel>(
      name: 'Memo',
      //width: _width,
      columnHeader: Text(
        'Memo',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.memo,
        );
      },
    ),
    OperanceDataColumn<ToContainersModel>(
      name: 'Container',
      //width: _width,
      columnHeader: Text(
        'Container#',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.container,
        );
      },
    ),
    OperanceDataColumn<ToContainersModel>(
      name: 'Memo InYard',
      //width: _width,
      columnHeader: Text(
        'Memo InYard',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.memoInYard,
        );
      },
    ),
    OperanceDataColumn<ToContainersModel>(
      name: 'Date InYard',
      //width: _width,
      columnHeader: Text(
        'Date InYard',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.dateInYard,
        );
      },
    ),
    OperanceDataColumn<ToContainersModel>(
      name: 'ETA Warehouse',
      //width: _width,
      columnHeader: Text(
        'ETA Warehouse',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.etaWarehouse,
        );
      },
    ),
    OperanceDataColumn<ToContainersModel>(
      name: 'InYard By',
      //width: _width,
      columnHeader: Text(
        'InYard By',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.inYardBy,
        );
      },
    ),
  ];
}
