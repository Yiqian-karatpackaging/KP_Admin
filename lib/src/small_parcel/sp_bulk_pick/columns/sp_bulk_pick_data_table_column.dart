import '../sp_bulk_pick.dart';

class SPBulkPickDataTableColumn {
  static TextStyle columnHeaderStyle = const TextStyle(
    fontWeight: FontWeight.bold,
  );

  static List<List<String>> data = [
    [
      "",
      "2258017",
      "10.0000.026",
      "TeaZone Popping Pearls GOURMET-Series Chocolate (7.0lb jar) [B2071]",
      "4",
      "24559",
      "1",
      "Harley",
      "10/24/2024 8:40 PM",
      "4582",
      "24559",
      "003-005A",
      "",
      "",
      "B2071",
      "28",
      "",
      "",
      "CA",
      "",
      "",
      "0",
      "",
      "",
      "",
      "",
      "OOCU7791136:50094",
      "",
      ""
    ]
  ];

  static List<OperanceDataColumn<SPBulkPickDataTableModel>> columns = [
    OperanceDataColumn<SPBulkPickDataTableModel>(
      name: 'itemCode',
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
    OperanceDataColumn<SPBulkPickDataTableModel>(
      name: 'legacyItem',
      width: OperanceDataColumnWidth(size: 200.w),
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
    OperanceDataColumn<SPBulkPickDataTableModel>(
      name: 'description',
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
    OperanceDataColumn<SPBulkPickDataTableModel>(
      name: 'itemIntId',
      columnHeader: Text(
        'Item IntId',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.itemIntId,
        );
      },
    ),
    OperanceDataColumn<SPBulkPickDataTableModel>(
      name: 'ordQty',
      columnHeader: Text(
        'Ord Qty',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.ordQty,
        );
      },
    ),
    OperanceDataColumn<SPBulkPickDataTableModel>(
      name: 'pickQty',
      columnHeader: Text(
        'Pick Qty',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.pickQty,
        );
      },
    ),
    OperanceDataColumn<SPBulkPickDataTableModel>(
      name: 'pickBin',
      columnHeader: Text(
        'Pick Bin',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.pickBin,
        );
      },
    ),
    OperanceDataColumn<SPBulkPickDataTableModel>(
      name: 'scanId',
      //sortable: true,
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
    OperanceDataColumn<SPBulkPickDataTableModel>(
      name: 'bulkPickWareHouse',
      columnHeader: Text(
        'Bulk Pick Warehouse',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.bulkPickWareHouse,
        );
      },
    ),
  ];
}
