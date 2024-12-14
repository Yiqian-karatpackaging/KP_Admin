import '../precount_list.dart';

class PrecountListColumn {
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

  static List<OperanceDataColumn<PrecountListModel>> columns = [
    OperanceDataColumn<PrecountListModel>(
      name: 'license',
      columnHeader: Text(
        'License#',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(text: item.license,);
      },
    ),
    OperanceDataColumn<PrecountListModel>(
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
    OperanceDataColumn<PrecountListModel>(
      name: 'bin',
      columnHeader: Text(
        'Bin#',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.bin,
        );
      },
    ),
    OperanceDataColumn<PrecountListModel>(
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
    OperanceDataColumn<PrecountListModel>(
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
    OperanceDataColumn<PrecountListModel>(
      name: 'countQTY',
      columnHeader: Text(
        'Count Qty',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.countQTY,
        );
      },
    ),
    OperanceDataColumn<PrecountListModel>(
      name: 'countDate',
      columnHeader: Text(
        'Count Date',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.countDate,
        );
      },
    ),
    OperanceDataColumn<PrecountListModel>(
      name: 'countBy',
      columnHeader: Text(
        'Count By',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.countBy,
        );
      },
    ),
    OperanceDataColumn<PrecountListModel>(
      name: 'futureCountDate',
      columnHeader: Text(
        'Future Count Date',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.futureCountDate,
        );
      },
    ),
    OperanceDataColumn<PrecountListModel>(
      name: 'finishedDate',
      columnHeader: Text(
        'Finished Date',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.finishedDate,
        );
      },
    ),
    OperanceDataColumn<PrecountListModel>(
      name: 'bpn',
      columnHeader: Text(
        'BPN#',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.bpn,
        );
      },
    ),
    OperanceDataColumn<PrecountListModel>(
      name: 'countPage',
      columnHeader: Text(
        'Count Page',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.countPage,
        );
      },
    ),
  ];
}
