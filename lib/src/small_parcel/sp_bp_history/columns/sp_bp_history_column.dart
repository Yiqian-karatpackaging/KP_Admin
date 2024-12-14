import '../sp_bp_history.dart';

class SPBPHistoryColumn {
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

  static List<OperanceDataColumn<SPBPHistoryModel>> columns = [
    OperanceDataColumn<SPBPHistoryModel>(
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
    OperanceDataColumn<SPBPHistoryModel>(
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
    OperanceDataColumn<SPBPHistoryModel>(
      name: 'priority',
      columnHeader: Text(
        'Priority',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.priority,
        );
      },
    ),
    OperanceDataColumn<SPBPHistoryModel>(
      name: 'bulkId',
      //sortable: true,
      columnHeader: Text(
        'Bulk Id',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.bulkId,
        );
      },
    ),
    OperanceDataColumn<SPBPHistoryModel>(
      name: 'loc',
      columnHeader: Text(
        'Loc',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.loc,
        );
      },
    ),
    OperanceDataColumn<SPBPHistoryModel>(
      name: 'bpStatus',
      width: OperanceDataColumnWidth(size: 80.w),
      columnHeader: Text(
        'BP Status',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.bpStatus,
        );
      },
    ),
    OperanceDataColumn<SPBPHistoryModel>(
      name: 'assignCarrier',
      columnHeader: Text(
        'Assign Carrier',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.assignCarrier,
        );
      },
    ),
    OperanceDataColumn<SPBPHistoryModel>(
      name: 'so',
      columnHeader: Text(
        '#SO',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.so,
        );
      },
    ),
    OperanceDataColumn<SPBPHistoryModel>(
      name: 'itemCount',
      width: OperanceDataColumnWidth(size: 200.w),
      columnHeader: Text(
        'Item Count',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.itemCount,
        );
      },
    ),
    OperanceDataColumn<SPBPHistoryModel>(
      name: 'soFF',
      columnHeader: Text(
        '#SO FF',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.soFF,
        );
      },
    ),
    OperanceDataColumn<SPBPHistoryModel>(
      name: 'addedBy',
      columnHeader: Text(
        'Added By',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.addedBy,
        );
      },
    ),
    OperanceDataColumn<SPBPHistoryModel>(
      name: 'addedDate',
      columnHeader: Text(
        'Added Date',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.addedDate,
        );
      },
    ),
    OperanceDataColumn<SPBPHistoryModel>(
      name: 'pickStarted',
      columnHeader: Text(
        'Pick Started',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.pickStarted,
        );
      },
    ),
    OperanceDataColumn<SPBPHistoryModel>(
      name: 'pickStartedBy',
      //sortable: true,
      columnHeader: Text(
        'Pick Started By',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.pickStartedBy,
        );
      },
    ),
    OperanceDataColumn<SPBPHistoryModel>(
      name: 'pCompletedDate',
      //sortable: true,
      columnHeader: Text(
        'PCompleted Date',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.pCompletedDate,
        );
      },
    ),
    OperanceDataColumn<SPBPHistoryModel>(
      name: 'pCompletedBy',
      columnHeader: Text(
        'PCompleted By',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.pCompletedBy,
        );
      },
    ),
    OperanceDataColumn<SPBPHistoryModel>(
      name: 'duration',
      width: OperanceDataColumnWidth(size: 60.w),
      columnHeader: Text(
        'Duration',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.duration,
        );
      },
    ),
    OperanceDataColumn<SPBPHistoryModel>(
      name: 'pickerAssignedTo',
      width: OperanceDataColumnWidth(size: 60.w),
      columnHeader: Text(
        'Picker Assigned To',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.pickerAssignedTo,
        );
      },
    ),
  ];
}
