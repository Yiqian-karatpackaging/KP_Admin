import 'package:kp_admin/src/system_configuration/scan_history/scan_history.dart';

class ScanHistoryExpansionColumn {
  static TextStyle columnHeaderStyle = const TextStyle(
    fontWeight: FontWeight.bold,
  );

  static List<List<String>> data = [
    [
      "001-003C",
      "TEST BIN 2",
      "54",
      "54",
      "",
      "Pallet Movement",
      "shiso",
      "2024/11/09 01:47:15",
      ""
    ],
    [
      "001-003C",
      "001-003C",
      "54",
      "54",
      "",
      "Initial Scan",
      "vance",
      "2024/11/08 18:45:05",
      ""
    ],
    [
      "TEST BIN 2",
      "002-009B",
      "54",
      "54",
      "",
      "Pallet Movement",
      "shiso",
      "2024/11/09 01:47:47",
      ""
    ]
  ];

  static List<OperanceDataColumn<ScanHistoryExpansionModel>> columns = [
    OperanceDataColumn<ScanHistoryExpansionModel>(
      name: 'bin',
      columnHeader: Text(
        'Bin',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(text: item.bin,);
      },
    ),
    OperanceDataColumn<ScanHistoryExpansionModel>(
      name: 'quantityChange',
      columnHeader: Text(
        'QUANTITY CHANGE',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(text: item.quantityChange,);
      },
    ),
    OperanceDataColumn<ScanHistoryExpansionModel>(
      name: 'oldQty',
      columnHeader: Text(
        'Old Qty',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(text: item.oldQty,);
      },
    ),
    OperanceDataColumn<ScanHistoryExpansionModel>(
      name: 'memo',
      columnHeader: Text(
        'Memo',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.memo,
        );
      },
    ),
    OperanceDataColumn<ScanHistoryExpansionModel>(
      name: 'reason',
      columnHeader: Text(
        'Reason',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.reason,
        );
      },
    ),
    OperanceDataColumn<ScanHistoryExpansionModel>(
      name: 'updateBy',
      columnHeader: Text(
        'Update By',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.updateBy,
        );
      },
    ),
    OperanceDataColumn<ScanHistoryExpansionModel>(
      name: 'updateDate',
      columnHeader: Text(
        'Update Date',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.updateDate,
        );
      },
    ),
  ];
}
