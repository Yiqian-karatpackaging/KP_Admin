import '../to_queue.dart';

class ToQueueColumn {
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


  static List<OperanceDataColumn<ToQueueModel>> columns = [
    OperanceDataColumn<ToQueueModel>(
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
    OperanceDataColumn<ToQueueModel>(
      name: 'Case QTY',
      columnHeader: Text(
        'Case QTY',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.caseQty,
        );
      },
    ),
    OperanceDataColumn<ToQueueModel>(
      name: 'LTL Pallet Qty',
      columnHeader: Text(
        'LTL Pallet Qty',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.ltlPalletQty,
        );
      },
    ),
    OperanceDataColumn<ToQueueModel>(
      name: 'TL Pallet Qty',
      columnHeader: Text(
        'TL Pallet Qty',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.tlPalletQty,
        );
      },
    ),
    OperanceDataColumn<ToQueueModel>(
      name: 'WH From',
      columnHeader: Text(
        'WH From',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.warehouseFrom,
        );
      },
    ),
    OperanceDataColumn<ToQueueModel>(
      name: 'WH To',
      columnHeader: Text(
        'WH To',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.warehouseTo,
        );
      },
    ),
    OperanceDataColumn<ToQueueModel>(
      name: 'Container',
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
    OperanceDataColumn<ToQueueModel>(
      name: 'Tran Date',
      columnHeader: Text(
        'Tran Date',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.tranDate,
        );
      },
    ),
    OperanceDataColumn<ToQueueModel>(
      name: 'Ship Date',
      columnHeader: Text(
        'Ship Date',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.shipDate,
        );
      },
    ),
    OperanceDataColumn<ToQueueModel>(
      name: 'Pick Started',
      columnHeader: Text(
        'Pick Started',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.pickStarted,
        );
      },
    ),
    OperanceDataColumn<ToQueueModel>(
      name: 'Pick Started By',
      columnHeader: Text(
        'Pick Started By',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.pickStartedBy,
        );
      },
    ),
    OperanceDataColumn<ToQueueModel>(
      name: 'PCompleted Date',
      columnHeader: Text(
        'PCompleted Date',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.pCompletedDate,
        );
      },
    ),
    OperanceDataColumn<ToQueueModel>(
      name: 'PCompleted by',
      columnHeader: Text(
        'PCompleted By',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.pCompletedBy,
        );
      },
    ),
    OperanceDataColumn<ToQueueModel>(
      name: 'Pick Time',
      columnHeader: Text(
        'Pick Time',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.pickTime,
        );
      },
    ),
    OperanceDataColumn<ToQueueModel>(
      name: 'Expected Pick Time',
      columnHeader: Text(
        'Expected Pick Time',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.expectedPickTime,
        );
      },
    ),
    OperanceDataColumn<ToQueueModel>(
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
    OperanceDataColumn<ToQueueModel>(
      name: 'Audit Started By',
      columnHeader: Text(
        'Audit Started By',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.auditStartedBy,
        );
      },
    ),
    OperanceDataColumn<ToQueueModel>(
      name: 'Audit Start Date',
      columnHeader: Text(
        'Audit Start Date',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.auditStartDate,
        );
      },
    ),
    OperanceDataColumn<ToQueueModel>(
      name: 'Transfer Memo',
      columnHeader: Text(
        'Transfer Memo',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.transferMemo,
        );
      },
    ),
    OperanceDataColumn<ToQueueModel>(
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
