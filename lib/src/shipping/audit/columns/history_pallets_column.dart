import 'package:kp_admin/src/shipping/audit/audit.dart';

class HistoryPalletsColumn {
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

  static List<OperanceDataColumn<HistoryPalletsModel>> columns = [
    OperanceDataColumn<HistoryPalletsModel>(
      name: 'action',
      columnHeader: Text(
        'Action',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: 'C',
          textColor: Colors.blue,
          onTap: () {
            CustomAlertDialog.centerDialog(
              context,
              // title: 'Delete Account',
              body: 'Are you sure to delete?',
              // okCallback: () => _onDeleteAccount(),
            );
          },
        );
      },
    ),
    OperanceDataColumn<HistoryPalletsModel>(
      name: 'packId',
      //sortable: true,
      columnHeader: Text(
        'PackId',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.packId,
        );
      },
    ),
    OperanceDataColumn<HistoryPalletsModel>(
      name: 'pickBy:',
      columnHeader: Text(
        'Pick By',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.pickBy,
        );
      },
    ),
    OperanceDataColumn<HistoryPalletsModel>(
      name: 'pickDate',
      width: OperanceDataColumnWidth(size: 80.w),
      columnHeader: Text(
        'Pick Date',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.pickDate,
        );
      },
    ),
    OperanceDataColumn<HistoryPalletsModel>(
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
    OperanceDataColumn<HistoryPalletsModel>(
      name: 'boxCNT',
      columnHeader: Text(
        'Box CNT',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.boxCNT,
        );
      },
    ),
    OperanceDataColumn<HistoryPalletsModel>(
      name: 'weight',
      columnHeader: Text(
        'Weight',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.weight,
        );
      },
    ),
  ];

  static List<OperanceDataColumn<HistoryPalletsExpansionModel>>
      expansionColumns = [
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
