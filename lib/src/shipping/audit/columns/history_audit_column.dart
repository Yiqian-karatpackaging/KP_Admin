import 'package:kp_admin/src/shipping/audit/audit.dart';

class HistoryAuditColumn {
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

  static List<OperanceDataColumn<HistoryAuditModel>> columns = [
    OperanceDataColumn<HistoryAuditModel>(
      name: 'action',
      columnHeader: Text(
        'Action',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return Row(
          children: [
            GestureDetector(
              onTap: () {
                CustomAlertDialog.centerDialog(
                  context,
                  // title: 'Delete Account',
                  body: 'Are you sure to delete?',
                  // okCallback: () => _onDeleteAccount(),
                );
              },
              child: const Icon(
                Icons.delete_forever,
                color: Colors.blue,
                size: 20,
              ),
            ),
            Container(
              width: 0.5.w,
              height: 10.h,
              margin: EdgeInsets.only(right: 1.w),
              color: Colors.black12,
            ),
            const BaseText(
              text: 'Change Pallet',
              textColor: Colors.blue,
            ),
          ],
        );
      },
    ),
    OperanceDataColumn<HistoryAuditModel>(
      name: 'lot',
      //sortable: true,
      columnHeader: Text(
        'Lot#',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.lot,
        );
      },
    ),
    OperanceDataColumn<HistoryAuditModel>(
      name: 'containerDate:',
      width: OperanceDataColumnWidth(size: 80.w),
      columnHeader: Text(
        'Container#/MFG Date',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.containerDate,
        );
      },
    ),
    OperanceDataColumn<HistoryAuditModel>(
      name: '"itemCode',
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
    OperanceDataColumn<HistoryAuditModel>(
      name: '"legacy',
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
    OperanceDataColumn<HistoryAuditModel>(
      name: 'description',
      width: OperanceDataColumnWidth(size: 200.w),
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
    OperanceDataColumn<HistoryAuditModel>(
      name: 'location',
      columnHeader: Text(
        'Location',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.location,
        );
      },
    ),
    OperanceDataColumn<HistoryAuditModel>(
      name: 'fulFilledQty',
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
    OperanceDataColumn<HistoryAuditModel>(
      name: 'palletID',
      columnHeader: Text(
        'Pallet ID',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.palletID,
        );
      },
    ),
    OperanceDataColumn<HistoryAuditModel>(
      name: 'znoe',
      columnHeader: Text(
        'Znoe',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.znoe,
        );
      },
    ),
    OperanceDataColumn<HistoryAuditModel>(
      name: 'weight',
      //sortable: true,
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
    OperanceDataColumn<HistoryAuditModel>(
      name: 'boxID',
      //sortable: true,
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
    OperanceDataColumn<HistoryAuditModel>(
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
    OperanceDataColumn<HistoryAuditModel>(
      name: 'createDate',
      width: OperanceDataColumnWidth(size: 60.w),
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
