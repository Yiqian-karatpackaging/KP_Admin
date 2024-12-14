import '../ns_adjustment_review.dart';

class NSAdjustmentReviewColumn {
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

  static List<OperanceDataColumn<NSAdjustmentReviewModel>> columns = [
    OperanceDataColumn<NSAdjustmentReviewModel>(
      name: 'adjustmentID',
      columnHeader: Text(
        'Adjustment ID',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(text: item.adjustmentID);
      },
    ),
    OperanceDataColumn<NSAdjustmentReviewModel>(
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
    OperanceDataColumn<NSAdjustmentReviewModel>(
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
    OperanceDataColumn<NSAdjustmentReviewModel>(
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
    OperanceDataColumn<NSAdjustmentReviewModel>(
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
    OperanceDataColumn<NSAdjustmentReviewModel>(
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
    OperanceDataColumn<NSAdjustmentReviewModel>(
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
    OperanceDataColumn<NSAdjustmentReviewModel>(
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
    OperanceDataColumn<NSAdjustmentReviewModel>(
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
    OperanceDataColumn<NSAdjustmentReviewModel>(
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
    OperanceDataColumn<NSAdjustmentReviewModel>(
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
    OperanceDataColumn<NSAdjustmentReviewModel>(
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
    OperanceDataColumn<NSAdjustmentReviewModel>(
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
    OperanceDataColumn<NSAdjustmentReviewModel>(
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
    OperanceDataColumn<NSAdjustmentReviewModel>(
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
    OperanceDataColumn<NSAdjustmentReviewModel>(
      name: 'mainMemo',
      columnHeader: Text(
        'Main Memo',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.mainMemo,
        );
      },
    ),
    OperanceDataColumn<NSAdjustmentReviewModel>(
      name: 'lineMemo',
      columnHeader: Text(
        'Line Memo',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.lineMemo,
        );
      },
    ),
    OperanceDataColumn<NSAdjustmentReviewModel>(
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
    OperanceDataColumn<NSAdjustmentReviewModel>(
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
  ];
}
