import '../fulfillment_adjustment_request.dart';

class FulfillmentAdjustmentRequestColumn {
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

  static List<OperanceDataColumn<FulfillmentAdjustmentRequestModel>> columns = [
    OperanceDataColumn<FulfillmentAdjustmentRequestModel>(
      name: 'so',
      columnHeader: Text(
        'SO#',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(text: item.so);
      },
    ),
    OperanceDataColumn<FulfillmentAdjustmentRequestModel>(
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
    OperanceDataColumn<FulfillmentAdjustmentRequestModel>(
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
    OperanceDataColumn<FulfillmentAdjustmentRequestModel>(
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
    OperanceDataColumn<FulfillmentAdjustmentRequestModel>(
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
    OperanceDataColumn<FulfillmentAdjustmentRequestModel>(
      name: 'onHand',
      columnHeader: Text(
        'On Hand',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.onHand,
        );
      },
    ),
    OperanceDataColumn<FulfillmentAdjustmentRequestModel>(
      name: 'diff',
      columnHeader: Text(
        'Diff',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.diff,
        );
      },
    ),
    OperanceDataColumn<FulfillmentAdjustmentRequestModel>(
      name: 'originalDiff',
      columnHeader: Text(
        'Original Diff',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.originalDiff,
        );
      },
    ),
    OperanceDataColumn<FulfillmentAdjustmentRequestModel>(
      name: 'averageCost',
      columnHeader: Text(
        'Average Cost',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.averageCost,
        );
      },
    ),
    OperanceDataColumn<FulfillmentAdjustmentRequestModel>(
      name: 'amount ',
      columnHeader: Text(
        'Amount ',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.amount,
        );
      },
    ),
    OperanceDataColumn<FulfillmentAdjustmentRequestModel>(
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
    OperanceDataColumn<FulfillmentAdjustmentRequestModel>(
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
    OperanceDataColumn<FulfillmentAdjustmentRequestModel>(
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
    OperanceDataColumn<FulfillmentAdjustmentRequestModel>(
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
    OperanceDataColumn<FulfillmentAdjustmentRequestModel>(
      name: 'nsAdjust',
      columnHeader: Text(
        'NS Adjust #',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.nsAdjust,
        );
      },
    ),
    OperanceDataColumn<FulfillmentAdjustmentRequestModel>(
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
    OperanceDataColumn<FulfillmentAdjustmentRequestModel>(
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
    OperanceDataColumn<FulfillmentAdjustmentRequestModel>(
      name: 'action',
      columnHeader: Text(
        'Action',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.action,
        );
      },
    ),
  ];
}
