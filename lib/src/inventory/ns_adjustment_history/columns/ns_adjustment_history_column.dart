import '../ns_adjustment_history.dart';

class NSAdjustmentHistoryColumn {
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

  static List<OperanceDataColumn<NSAdjustmentHistoryModel>> columns = [
    OperanceDataColumn<NSAdjustmentHistoryModel>(
      name: '',
      width: OperanceDataColumnWidth(size: 30),
      columnHeader: Text(
        '',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return Icon(Icons.delete, color: Colors.blue,);
      },
    ),
    OperanceDataColumn<NSAdjustmentHistoryModel>(
      name: 'adjustmentID',
      columnHeader: Text(
        'Adjustment ID',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(text: item.adjustmentID);
      },
    ),
    OperanceDataColumn<NSAdjustmentHistoryModel>(
      name: 'warehouse',
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
    OperanceDataColumn<NSAdjustmentHistoryModel>(
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
    OperanceDataColumn<NSAdjustmentHistoryModel>(
      name: 'legacyItem',
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
    OperanceDataColumn<NSAdjustmentHistoryModel>(
      name: 'internalID',
      columnHeader: Text(
        'InternalID',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.internalID,
        );
      },
    ),
    OperanceDataColumn<NSAdjustmentHistoryModel>(
      name: 'itemType',
      columnHeader: Text(
        'Item Type',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.itemType,
        );
      },
    ),
    OperanceDataColumn<NSAdjustmentHistoryModel>(
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
    OperanceDataColumn<NSAdjustmentHistoryModel>(
      name: 'nsQTY',
      columnHeader: Text(
        'NS On QTY',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.nsQTY,
        );
      },
    ),
    OperanceDataColumn<NSAdjustmentHistoryModel>(
      name: 'kpQty',
      columnHeader: Text(
        'KP Qty',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.kpQTY,
        );
      },
    ),
    OperanceDataColumn<NSAdjustmentHistoryModel>(
      name: 'countQTY',
      columnHeader: Text(
        'Count QTY',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.countQTY,
        );
      },
    ),
    OperanceDataColumn<NSAdjustmentHistoryModel>(
      name: 'pickQTY',
      columnHeader: Text(
        'Pick QTY ',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.pickQTY,
        );
      },
    ),
    OperanceDataColumn<NSAdjustmentHistoryModel>(
      name: 'qtyDiff',
      columnHeader: Text(
        'QTY Diff',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.qtyDiff,
        );
      },
    ),
    OperanceDataColumn<NSAdjustmentHistoryModel>(
      name: 'qtyDiff2',
      columnHeader: Text(
        'QTY % Diff',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.qtyDiff2,
        );
      },
    ),
    OperanceDataColumn<NSAdjustmentHistoryModel>(
      name: 'avgCost',
      columnHeader: Text(
        'AvgCost',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.avgCost,
        );
      },
    ),
    OperanceDataColumn<NSAdjustmentHistoryModel>(
      name: 'amtDiff',
      columnHeader: Text(
        'Amt Diff',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.amtDiff,
        );
      },
    ),
    OperanceDataColumn<NSAdjustmentHistoryModel>(
      name: 'createDate',
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
    OperanceDataColumn<NSAdjustmentHistoryModel>(
      name: 'createdBy',
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
    OperanceDataColumn<NSAdjustmentHistoryModel>(
      name: 'nsIA',
      columnHeader: Text(
        'NS IA#',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.nsIA,
        );
      },
    ),
    OperanceDataColumn<NSAdjustmentHistoryModel>(
      name: 'adjustmentDate',
      columnHeader: Text(
        'Adjustment Date',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.adjustmentDate,
        );
      },
    ),
    OperanceDataColumn<NSAdjustmentHistoryModel>(
      name: 'adjustmentBy',
      columnHeader: Text(
        'Adjustment By',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.adjustmentBy,
        );
      },
    ),
  ];
}
