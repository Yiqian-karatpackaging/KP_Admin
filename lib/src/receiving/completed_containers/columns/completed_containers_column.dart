import '../completed_containers.dart';

class CompletedContainersColumn {
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


  static List<OperanceDataColumn<CompletedContainersModel>> columns = [
    OperanceDataColumn<CompletedContainersModel>(
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
    OperanceDataColumn<CompletedContainersModel>(
      name: 'Urgent',
      columnHeader: Text(
        'Urgent',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.urgent,
        );
      },
    ),
    OperanceDataColumn<CompletedContainersModel>(
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
    OperanceDataColumn<CompletedContainersModel>(
      name: 'Container Item Type',
      columnHeader: Text(
        'Container Item Type',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.containerItemType,
        );
      },
    ),
    OperanceDataColumn<CompletedContainersModel>(
      name: 'Dock#',
      columnHeader: Text(
        'Dock#',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.dock,
        );
      },
    ),
    OperanceDataColumn<CompletedContainersModel>(
      name: 'Yard Status',
      columnHeader: Text(
        'Yard Status',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.yardStatus,
        );
      },
    ),
    OperanceDataColumn<CompletedContainersModel>(
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
    OperanceDataColumn<CompletedContainersModel>(
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
    OperanceDataColumn<CompletedContainersModel>(
      name: 'Memo',
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
    OperanceDataColumn<CompletedContainersModel>(
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
    OperanceDataColumn<CompletedContainersModel>(
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
    OperanceDataColumn<CompletedContainersModel>(
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
    OperanceDataColumn<CompletedContainersModel>(
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
    OperanceDataColumn<CompletedContainersModel>(
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
    OperanceDataColumn<CompletedContainersModel>(
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
    OperanceDataColumn<CompletedContainersModel>(
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
    OperanceDataColumn<CompletedContainersModel>(
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
    OperanceDataColumn<CompletedContainersModel>(
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
    OperanceDataColumn<CompletedContainersModel>(
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
    OperanceDataColumn<CompletedContainersModel>(
      name: 'LFD',
      columnHeader: Text(
        'LFD',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.lfd,
        );
      },
    ),
    OperanceDataColumn<CompletedContainersModel>(
      name: 'Scan Completed By',
      columnHeader: Text(
        'Scan Completed By',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.scanCompletedBy,
        );
      },
    ),
    OperanceDataColumn<CompletedContainersModel>(
      name: 'Scan Completed Date',
      columnHeader: Text(
        'Scan Completed Date',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.scanCompletedDate,
        );
      },
    ),
  ];
}
