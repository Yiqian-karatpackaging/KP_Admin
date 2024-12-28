import '../yard_containers.dart';

class YardContainersColumn {
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


  static List<OperanceDataColumn<YardContainersModel>> columns = [
    OperanceDataColumn<YardContainersModel>(
      name: 'loc',
      columnHeader: Text(
        'Loc',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.loc,
        );
      },
    ),
    OperanceDataColumn<YardContainersModel>(
      name: 'Container',
      columnHeader: Text(
        'Container',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.container,
        );
      },
    ),
    OperanceDataColumn<YardContainersModel>(
      name: 'Memo InYard',
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
    OperanceDataColumn<YardContainersModel>(
      name: 'Receive Start',
      columnHeader: Text(
        'Receive Start',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.receiveStart,
        );
      },
    ),
    OperanceDataColumn<YardContainersModel>(
      name: 'Duration',
      columnHeader: Text(
        'Duration',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.duration,
        );
      },
    ),
    OperanceDataColumn<YardContainersModel>(
      name: 'Receive Start By',
      columnHeader: Text(
        'Receive Start By',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.receiveStartBy,
        );
      },
    ),
    OperanceDataColumn<YardContainersModel>(
      name: 'First Label By',
      columnHeader: Text(
        'First Label By',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.firstLabelBy,
        );
      },
    ),
    OperanceDataColumn<YardContainersModel>(
      name: 'Date InYard',
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
    OperanceDataColumn<YardContainersModel>(
      name: 'InYard By',
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
    OperanceDataColumn<YardContainersModel>(
      name: 'InYard Date',
      columnHeader: Text(
        'InYard Date',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.inYardDate,
        );
      },
    ),
    OperanceDataColumn<YardContainersModel>(
      name: 'Vendor',
      columnHeader: Text(
        'Vendor',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.vendor,
        );
      },
    ),
    OperanceDataColumn<YardContainersModel>(
      name: 'PO#',
      columnHeader: Text(
        'PO#',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.po,
        );
      },
    ),
    OperanceDataColumn<YardContainersModel>(
      name: 'Invoice Date',
      columnHeader: Text(
        'Invoice Date',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.invoiceDate,
        );
      },
    ),
    OperanceDataColumn<YardContainersModel>(
      name: 'ETA Warehouse',
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
    OperanceDataColumn<YardContainersModel>(
      name: 'ETA Port',
      columnHeader: Text(
        'ETA Port',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.etaPort,
        );
      },
    ),
    OperanceDataColumn<YardContainersModel>(
      name: 'Inv#',
      columnHeader: Text(
        'Inv#',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.inv,
        );
      },
    ),
  ];
}
