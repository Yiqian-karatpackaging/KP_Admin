import '../bpn_history.dart';

class BPNHistoryColumn {
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

  static const _width = OperanceDataColumnWidth(factor: 1 / 8);

  static List<OperanceDataColumn<BPNHistoryModel>> columns = [
    OperanceDataColumn<BPNHistoryModel>(
      name: 'bin',
      width: _width,
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
    OperanceDataColumn<BPNHistoryModel>(
      name: 'warehouse',
      width: _width,
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
    OperanceDataColumn<BPNHistoryModel>(
      name: 'bpnBin',
      width: _width,
      columnHeader: Text(
        'BPN Bin#',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.bpnBin,
        );
      },
    ),
    OperanceDataColumn<BPNHistoryModel>(
      name: 'totalQTY',
      width: _width,
      columnHeader: Text(
        'Total QTY',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.totalQTY,
        );
      },
    ),
    OperanceDataColumn<BPNHistoryModel>(
      name: 'createdBy',
      width: _width,
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
    OperanceDataColumn<BPNHistoryModel>(
      name: 'createdDate',
      width: _width,
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
    OperanceDataColumn<BPNHistoryModel>(
      name: 'SOTO',
      width: _width,
      columnHeader: Text(
        'SO#/TO#',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.soTo,
        );
      },
    ),
    OperanceDataColumn<BPNHistoryModel>(
      name: 'memo',
      width: _width,
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
  ];
}
