import '../bin_count_history.dart';

class BinCountHistoryColumn {
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

  static List<OperanceDataColumn<BinCountHistoryModel>> columns = [
    OperanceDataColumn<BinCountHistoryModel>(
      name: 'id',
      columnHeader: Text(
        'ID',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(text: item.id);
      },
    ),
    OperanceDataColumn<BinCountHistoryModel>(
      name: 'license',
      columnHeader: Text(
        'License#',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.license,
        );
      },
    ),
    OperanceDataColumn<BinCountHistoryModel>(
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
    OperanceDataColumn<BinCountHistoryModel>(
      name: '"legacyItem',
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
    OperanceDataColumn<BinCountHistoryModel>(
      name: 'bin',
      //sortable: true,
      columnHeader: Text(
        'Bin',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.bin,
        );
      },
    ),
    OperanceDataColumn<BinCountHistoryModel>(
      name: 'quantity',
      columnHeader: Text(
        'Quantity',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.quantity,
        );
      },
    ),
    OperanceDataColumn<BinCountHistoryModel>(
      name: 'hi:',
      width: OperanceDataColumnWidth(size: 80.w),
      columnHeader: Text(
        'HI',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.hi,
        );
      },
    ),
    OperanceDataColumn<BinCountHistoryModel>(
      name: 'ti',
      width: OperanceDataColumnWidth(size: 200.w),
      columnHeader: Text(
        'TI',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.ti,
        );
      },
    ),
    OperanceDataColumn<BinCountHistoryModel>(
      name: 'loose',
      columnHeader: Text(
        'Loose',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.loose,
        );
      },
    ),
    OperanceDataColumn<BinCountHistoryModel>(
      name: 'single',
      columnHeader: Text(
        'Single',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.single,
        );
      },
    ),
    OperanceDataColumn<BinCountHistoryModel>(
      name: 'bagCase',
      columnHeader: Text(
        'BagCase',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.bagCase,
        );
      },
    ),
    OperanceDataColumn<BinCountHistoryModel>(
      name: 'source',
      columnHeader: Text(
        'Source',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.source,
        );
      },
    ),
    OperanceDataColumn<BinCountHistoryModel>(
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
    OperanceDataColumn<BinCountHistoryModel>(
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
    OperanceDataColumn<BinCountHistoryModel>(
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
  ];
}
