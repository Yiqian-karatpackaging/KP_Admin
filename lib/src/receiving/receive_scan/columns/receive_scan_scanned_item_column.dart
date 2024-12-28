import '../receive_scan.dart';

class ReceiveScanScannedItemColumn {
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


  static List<OperanceDataColumn<ReceiveScanScannedItemModel>> columns = [
    OperanceDataColumn<ReceiveScanScannedItemModel>(
      name: 'ScanId',
      columnHeader: Text(
        'ScanId',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.scanId,
        );
      },
    ),
    OperanceDataColumn<ReceiveScanScannedItemModel>(
      name: 'Item Code',
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
    OperanceDataColumn<ReceiveScanScannedItemModel>(
      name: 'Legacy Item',
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
    OperanceDataColumn<ReceiveScanScannedItemModel>(
      name: 'Description',
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
    OperanceDataColumn<ReceiveScanScannedItemModel>(
      name: 'Received Qty',
      columnHeader: Text(
        'Received Qty',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.receivedQty,
        );
      },
    ),
    OperanceDataColumn<ReceiveScanScannedItemModel>(
      name: 'Bin#',
      columnHeader: Text(
        'Bin#',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.bin,
        );
      },
    ),
    OperanceDataColumn<ReceiveScanScannedItemModel>(
      name: 'Receive By',
      columnHeader: Text(
        'Receive By',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.receiveBy,
        );
      },
    ),
    OperanceDataColumn<ReceiveScanScannedItemModel>(
      name: 'Receive Date',
      columnHeader: Text(
        'Receive Date',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.receiveDate,
        );
      },
    ),
    OperanceDataColumn<ReceiveScanScannedItemModel>(
      name: 'Created By',
      columnHeader: Text(
        'Created By',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.createdBy,
        );
      },
    ),
    OperanceDataColumn<ReceiveScanScannedItemModel>(
      name: 'Create Date',
      columnHeader: Text(
        'Create Date',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.createDate,
        );
      },
    ),
  ];
}
