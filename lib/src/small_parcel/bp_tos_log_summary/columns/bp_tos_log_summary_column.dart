import '../bp_tos_log_summary.dart';

class BPTOSLogSummaryColumn {
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

  static List<OperanceDataColumn<BPTOSLogSummaryModel>> columns = [
    OperanceDataColumn<BPTOSLogSummaryModel>(
      name: 'detail',
      columnHeader: Text(
        'Detail',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.detail,
        );
      },
    ),
    OperanceDataColumn<BPTOSLogSummaryModel>(
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
    OperanceDataColumn<BPTOSLogSummaryModel>(
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
    OperanceDataColumn<BPTOSLogSummaryModel>(
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
    OperanceDataColumn<BPTOSLogSummaryModel>(
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
    OperanceDataColumn<BPTOSLogSummaryModel>(
      name: 'totalTOS',
      columnHeader: Text(
        'Total TOS',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.totalTOS,
        );
      },
    ),
    OperanceDataColumn<BPTOSLogSummaryModel>(
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
    OperanceDataColumn<BPTOSLogSummaryModel>(
      name: 'availableQuantity',
      columnHeader: Text(
        'Available Quantity',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.availableQuantity,
        );
      },
    ),
    OperanceDataColumn<BPTOSLogSummaryModel>(
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
  ];
}
