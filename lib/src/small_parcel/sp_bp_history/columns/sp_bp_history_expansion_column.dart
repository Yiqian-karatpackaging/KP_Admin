import '../sp_bp_history.dart';

class SPBPHistoryExpansionColumn {
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

  static List<OperanceDataColumn<SPBPHistoryExpansionModel>> columns = [
    OperanceDataColumn<SPBPHistoryExpansionModel>(
      name: 'so',
      columnHeader: Text(
        'SO#',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.so,
        );
      },
    ),
    OperanceDataColumn<SPBPHistoryExpansionModel>(
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
    OperanceDataColumn<SPBPHistoryExpansionModel>(
      name: 'shipDate',
      columnHeader: Text(
        'Ship Date',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.shipDate,
        );
      },
    ),
    OperanceDataColumn<SPBPHistoryExpansionModel>(
      name: 'shipVia',
      //sortable: true,
      columnHeader: Text(
        'Ship Via',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.shipVia,
        );
      },
    ),
    OperanceDataColumn<SPBPHistoryExpansionModel>(
      name: 'shipTo',
      width: OperanceDataColumnWidth(size: 80.w),
      columnHeader: Text(
        'Ship To',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.shipTo,
        );
      },
    ),
    OperanceDataColumn<SPBPHistoryExpansionModel>(
      name: 'pCompletedDate',
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
    OperanceDataColumn<SPBPHistoryExpansionModel>(
      name: 'customerName',
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
    OperanceDataColumn<SPBPHistoryExpansionModel>(
      name: 'status',
      width: OperanceDataColumnWidth(size: 200.w),
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
    OperanceDataColumn<SPBPHistoryExpansionModel>(
      name: 'shipState',
      columnHeader: Text(
        'Ship State',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.shipState,
        );
      },
    ),
    OperanceDataColumn<SPBPHistoryExpansionModel>(
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
  ];
}
