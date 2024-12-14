import '../warehouse_usage.dart';

class WarehouseUsageColumn {
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

  static List<OperanceDataColumn<WarehouseUsageModel>> columns = [
    OperanceDataColumn<WarehouseUsageModel>(
      name: 'request',
      columnHeader: Text(
        'Request #',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.bpnBin,
        );
      },
    ),
    OperanceDataColumn<WarehouseUsageModel>(
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
    OperanceDataColumn<WarehouseUsageModel>(
      name: 'assignUser',
      columnHeader: Text(
        'Assign User',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.assignUser,
        );
      },
    ),
    OperanceDataColumn<WarehouseUsageModel>(
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
    OperanceDataColumn<WarehouseUsageModel>(
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
    OperanceDataColumn<WarehouseUsageModel>(
      name: 'onHand',
      columnHeader: Text(
        'onHand',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.onHand,
        );
      },
    ),
    OperanceDataColumn<WarehouseUsageModel>(
      name: 'qty',
      columnHeader: Text(
        'QTY',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.qty,
        );
      },
    ),
    OperanceDataColumn<WarehouseUsageModel>(
      name: 'notes',
      columnHeader: Text(
        'Notes',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.notes,
        );
      },
    ),
    OperanceDataColumn<WarehouseUsageModel>(
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
    OperanceDataColumn<WarehouseUsageModel>(
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
    OperanceDataColumn<WarehouseUsageModel>(
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
    OperanceDataColumn<WarehouseUsageModel>(
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
    OperanceDataColumn<WarehouseUsageModel>(
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
    OperanceDataColumn<WarehouseUsageModel>(
      name: 'newQty',
      columnHeader: Text(
        'New QTY',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.newQty,
        );
      },
    ),
    OperanceDataColumn<WarehouseUsageModel>(
      name: 'avgCost',
      columnHeader: Text(
        'Avg Cost',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.avgCost,
        );
      },
    ),
    OperanceDataColumn<WarehouseUsageModel>(
      name: 'estAmount',
      columnHeader: Text(
        'Est.Amount',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.estAmount,
        );
      },
    ),
    OperanceDataColumn<WarehouseUsageModel>(
      name: 'avgCost',
      columnHeader: Text(
        'Avg',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.avgCost,
        );
      },
    ),
    OperanceDataColumn<WarehouseUsageModel>(
      name: 'class',
      columnHeader: Text(
        'Class',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.classes,
        );
      },
    ),
    OperanceDataColumn<WarehouseUsageModel>(
      name: 'WO',
      columnHeader: Text(
        'WO#',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.wo,
        );
      },
    ),
    OperanceDataColumn<WarehouseUsageModel>(
      name: 'purpose',
      columnHeader: Text(
        'Purpose',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.purpose,
        );
      },
    ),
    OperanceDataColumn<WarehouseUsageModel>(
      name: 'expenseCategory',
      columnHeader: Text(
        'Expense Category',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.expenseCategory,
        );
      },
    ),
    OperanceDataColumn<WarehouseUsageModel>(
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
    OperanceDataColumn<WarehouseUsageModel>(
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
    OperanceDataColumn<WarehouseUsageModel>(
      name: 'requestBy',
      columnHeader: Text(
        'Request By',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.requestBy,
        );
      },
    ),
    OperanceDataColumn<WarehouseUsageModel>(
      name: 'requestDate',
      columnHeader: Text(
        'Request Date',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.requestDate,
        );
      },
    ),
    OperanceDataColumn<WarehouseUsageModel>(
      name: 'requestDepartment',
      columnHeader: Text(
        'Request Department',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.requestDepartment,
        );
      },
    ),
    OperanceDataColumn<WarehouseUsageModel>(
      name: 'nsDepartment',
      columnHeader: Text(
        'NS Department',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.nsDepartment,
        );
      },
    ),
    OperanceDataColumn<WarehouseUsageModel>(
      name: 'approvedBy',
      columnHeader: Text(
        'Approved By',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.approvedBy,
        );
      },
    ),
    OperanceDataColumn<WarehouseUsageModel>(
      name: 'approveDate',
      columnHeader: Text(
        'Approve Date',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.approveDate,
        );
      },
    ),
    OperanceDataColumn<WarehouseUsageModel>(
      name: 'approveDepartment',
      columnHeader: Text(
        'Approve Department',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.approveDepartment,
        );
      },
    ),
  ];
}
