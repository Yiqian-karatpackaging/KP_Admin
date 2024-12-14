import '../sp_bp_batch_delete.dart';

class SPBPBatchDeleteColum {
  static TextStyle columnHeaderStyle = const TextStyle(
    fontWeight: FontWeight.bold,
  );

  static const _width = OperanceDataColumnWidth(factor:  1/ 4);

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

  static List<OperanceDataColumn<SPBPBatchDeleteModel>> columns = [
    OperanceDataColumn<SPBPBatchDeleteModel>(
      name: 'so',
      width: _width,
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
    OperanceDataColumn<SPBPBatchDeleteModel>(
      name: 'bp',
      width: _width,
      columnHeader: Text(
        'BP#',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.bp,
        );
      },
    ),
    OperanceDataColumn<SPBPBatchDeleteModel>(
      name: 'bpWh',
      width: _width,
      columnHeader: Text(
        'BP WH',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.bpWh,
        );
      },
    ),
    OperanceDataColumn<SPBPBatchDeleteModel>(
      name: 'bpDate',
      width: _width,
      columnHeader: Text(
        'BP Date',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.bpDate,
        );
      },
    ),
  ];
}
