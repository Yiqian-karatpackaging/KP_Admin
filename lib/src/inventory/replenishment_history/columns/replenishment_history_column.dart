import '../replenishment_history.dart';

class ReplenishmentHistoryColumn {
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

  static const _width = OperanceDataColumnWidth(factor: 1 / 9);

  static List<OperanceDataColumn<ReplenishmentHistoryModel>> columns = [
    OperanceDataColumn<ReplenishmentHistoryModel>(
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
    OperanceDataColumn<ReplenishmentHistoryModel>(
      name: 'lpn',
      width: _width,
      columnHeader: Text(
        'LPN#',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(text: item.lpn,);
      },
    ),
    OperanceDataColumn<ReplenishmentHistoryModel>(
      name: 'itemCode',
      width: _width,
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
    OperanceDataColumn<ReplenishmentHistoryModel>(
      name: 'legacy',
      width: _width,
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
    OperanceDataColumn<ReplenishmentHistoryModel>(
      name: 'qty',
      width: _width,
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
    OperanceDataColumn<ReplenishmentHistoryModel>(
      name: 'fromBin',
      width: _width,
      columnHeader: Text(
        'From Bin',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.fromBin,
        );
      },
    ),
    OperanceDataColumn<ReplenishmentHistoryModel>(
      name: 'toBin',
      width: _width,
      columnHeader: Text(
        'To Bin',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.toBin,
        );
      },
    ),
    OperanceDataColumn<ReplenishmentHistoryModel>(
      name: 'Pallet Movement By',
      width: _width,
      columnHeader: Text(
        'Pallet Movement By',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.quantity,
        );
      },
    ),
    OperanceDataColumn<ReplenishmentHistoryModel>(
      name: 'palletMovementDate',
      width: _width,
      columnHeader: Text(
        'Pallet Movement Date',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.palletMovementDate,
        );
      },
    ),
  ];
}
