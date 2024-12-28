import '../transfer_inventory.dart';

class TransferInventoryColumn {
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

  static List<OperanceDataColumn<TransferInventoryModel>> columns = [
    OperanceDataColumn<TransferInventoryModel>(
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
    OperanceDataColumn<TransferInventoryModel>(
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
    OperanceDataColumn<TransferInventoryModel>(
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
    OperanceDataColumn<TransferInventoryModel>(
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
    OperanceDataColumn<TransferInventoryModel>(
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
    OperanceDataColumn<TransferInventoryModel>(
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
    OperanceDataColumn<TransferInventoryModel>(
      name: 'quantity',
      columnHeader: Text(
        'Quantity',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.quantity,
        );
      },
    ),
    OperanceDataColumn<TransferInventoryModel>(
      name: 'totalQty',
      columnHeader: Text(
        'Total Qty',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.totalQty,
        );
      },
    ),
    OperanceDataColumn<TransferInventoryModel>(
      name: 'NS OnHand',
      columnHeader: Text(
        'NS OnHand',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.nsOnHand,
        );
      },
    ),
    OperanceDataColumn<TransferInventoryModel>(
      name: 'Audit Completed Date',
      columnHeader: Text(
        'Audit Completed Date',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.auditCompletedDate,
        );
      },
    ),
    OperanceDataColumn<TransferInventoryModel>(
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
  ];
}
