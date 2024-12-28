import '../to_completed_containers.dart';

class ToCompletedContainersColumn {
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

  static List<OperanceDataColumn<ToCompletedContainersModel>> columns = [
    OperanceDataColumn<ToCompletedContainersModel>(
      name: 'fromWH',
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
    OperanceDataColumn<ToCompletedContainersModel>(
      name: 'toWH',
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
    OperanceDataColumn<ToCompletedContainersModel>(
      name: 'TO',
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
    OperanceDataColumn<ToCompletedContainersModel>(
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
    OperanceDataColumn<ToCompletedContainersModel>(
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
    OperanceDataColumn<ToCompletedContainersModel>(
      name: 'Status',
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
    OperanceDataColumn<ToCompletedContainersModel>(
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
    OperanceDataColumn<ToCompletedContainersModel>(
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
    OperanceDataColumn<ToCompletedContainersModel>(
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
    OperanceDataColumn<ToCompletedContainersModel>(
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
    OperanceDataColumn<ToCompletedContainersModel>(
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
    OperanceDataColumn<ToCompletedContainersModel>(
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
    OperanceDataColumn<ToCompletedContainersModel>(
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
    OperanceDataColumn<ToCompletedContainersModel>(
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
    OperanceDataColumn<ToCompletedContainersModel>(
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
    OperanceDataColumn<ToCompletedContainersModel>(
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
    OperanceDataColumn<ToCompletedContainersModel>(
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
    OperanceDataColumn<ToCompletedContainersModel>(
      name: 'Users Assigned',
      columnHeader: Text(
        'Users Assigned',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.usersAssigned,
        );
      },
    ),
  ];
}
