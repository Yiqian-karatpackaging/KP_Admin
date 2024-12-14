import 'package:kp_admin/src/shipping/audit/audit.dart';

class HistoryPalletsExpansionColumn {
  static TextStyle columnHeaderStyle = const TextStyle(
    fontWeight: FontWeight.bold,
  );

  static List<List<String>> data = [
    ["", "24559", "Harley", "10/24/2024 8:39 PM", "", "", "1", "65", "CA"]
  ];
  static List<List<String>> expansionData = [
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
      "B2071",
      "CA"
    ]
  ];

  static List<OperanceDataColumn<HistoryPalletsExpansionModel>>
      columns = [
    OperanceDataColumn<HistoryPalletsExpansionModel>(
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
    OperanceDataColumn<HistoryPalletsExpansionModel>(
      name: 'legacy',
      //sortable: true,
      columnHeader: Text(
        'Legacy',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.legacy,
        );
      },
    ),
    OperanceDataColumn<HistoryPalletsExpansionModel>(
      name: 'description:',
      width: OperanceDataColumnWidth(size: 100.w),
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
    OperanceDataColumn<HistoryPalletsExpansionModel>(
      name: 'fulFilledQty:',
      width: OperanceDataColumnWidth(size: 100.w),
      columnHeader: Text(
        'FulFilled Qty',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.fulFilledQty,
        );
      },
    ),
    OperanceDataColumn<HistoryPalletsExpansionModel>(
      name: 'detaPalletIDil:',
      width: OperanceDataColumnWidth(size: 100.w),
      columnHeader: Text(
        'DetaPalletIDil',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.detaPalletIDil,
        );
      },
    ),
    OperanceDataColumn<HistoryPalletsExpansionModel>(
      name: 'boxID',
      columnHeader: Text(
        'BoxID',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.boxID,
        );
      },
    ),
    OperanceDataColumn<HistoryPalletsExpansionModel>(
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
    OperanceDataColumn<HistoryPalletsExpansionModel>(
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
    OperanceDataColumn<HistoryPalletsExpansionModel>(
      name: 'createDate',
      width: OperanceDataColumnWidth(size: 80.w),
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
