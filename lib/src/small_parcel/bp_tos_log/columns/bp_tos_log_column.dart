import '../bp_tos_log.dart';

class BPTOSLogColumn {
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

  static List<OperanceDataColumn<BPTOSLogModel>> columns = [
    OperanceDataColumn<BPTOSLogModel>(
      name: 'bp',
      columnHeader: Text(
        'BP#',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.bp,
        );
      },
    ),
    OperanceDataColumn<BPTOSLogModel>(
      name: 'soCode',
      columnHeader: Text(
        'SO Code',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.soCode,
        );
      },
    ),
    OperanceDataColumn<BPTOSLogModel>(
      name: 'status',
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
    OperanceDataColumn<BPTOSLogModel>(
      name: 'po',
      //sortable: true,
      columnHeader: Text(
        'PO',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.po,
        );
      },
    ),
    OperanceDataColumn<BPTOSLogModel>(
      name: 'warehouse',
      columnHeader: Text(
        'Warehouse',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.warehouse,
        );
      },
    ),
    OperanceDataColumn<BPTOSLogModel>(
      name: 'customerName',
      width: OperanceDataColumnWidth(size: 80.w),
      columnHeader: Text(
        'Customer Name',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.customerName,
        );
      },
    ),
    OperanceDataColumn<BPTOSLogModel>(
      name: 'salesRep',
      columnHeader: Text(
        'Sales Rep',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.salesRep,
        );
      },
    ),
    OperanceDataColumn<BPTOSLogModel>(
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
    OperanceDataColumn<BPTOSLogModel>(
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
    OperanceDataColumn<BPTOSLogModel>(
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
    OperanceDataColumn<BPTOSLogModel>(
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
    OperanceDataColumn<BPTOSLogModel>(
      name: 'tosQty',
      columnHeader: Text(
        'TOS Qty',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.tosQty,
        );
      },
    ),
    OperanceDataColumn<BPTOSLogModel>(
      name: 'onHandQty',
      columnHeader: Text(
        'OnHand Qty',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.onHandQty,
        );
      },
    ),
    OperanceDataColumn<BPTOSLogModel>(
      name: 'etaWarehouse',
      //sortable: true,
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
    OperanceDataColumn<BPTOSLogModel>(
      name: 'bpAddDate',
      columnHeader: Text(
        'BP AddDate',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.bpAddDate,
        );
      },
    ),
  ];
}
