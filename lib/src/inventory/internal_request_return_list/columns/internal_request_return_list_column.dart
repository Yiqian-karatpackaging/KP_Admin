import '../internal_request_return_list.dart';

class InternalRequestReturnListColumn {
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

  static List<OperanceDataColumn<InternalRequestReturnListModel>> columns = [
    OperanceDataColumn<InternalRequestReturnListModel>(
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
    OperanceDataColumn<InternalRequestReturnListModel>(
      name: 'lpn',
      columnHeader: Text(
        'LPN',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.lpn,
        );
      },
    ),
    OperanceDataColumn<InternalRequestReturnListModel>(
      name: 'bin',
      columnHeader: Text(
        'BPN#',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.bin,
        );
      },
    ),
    OperanceDataColumn<InternalRequestReturnListModel>(
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
    OperanceDataColumn<InternalRequestReturnListModel>(
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
    OperanceDataColumn<InternalRequestReturnListModel>(
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
    OperanceDataColumn<InternalRequestReturnListModel>(
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
    OperanceDataColumn<InternalRequestReturnListModel>(
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
    OperanceDataColumn<InternalRequestReturnListModel>(
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
    OperanceDataColumn<InternalRequestReturnListModel>(
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
    OperanceDataColumn<InternalRequestReturnListModel>(
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
    OperanceDataColumn<InternalRequestReturnListModel>(
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
    OperanceDataColumn<InternalRequestReturnListModel>(
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
    OperanceDataColumn<InternalRequestReturnListModel>(
      name: 'createdDate',
      columnHeader: Text(
        'Created Date',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.createdDate,
        );
      },
    ),
    OperanceDataColumn<InternalRequestReturnListModel>(
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
    OperanceDataColumn<InternalRequestReturnListModel>(
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
    OperanceDataColumn<InternalRequestReturnListModel>(
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
