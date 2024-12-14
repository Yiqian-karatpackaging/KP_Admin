import '../pallet_movement.dart';

class PalletMovementCurrentBinColumn {
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

  static const _width = OperanceDataColumnWidth(factor: 1 / 7);

  static List<OperanceDataColumn<PalletMovementCurrentBinModel>> columns = [
    OperanceDataColumn<PalletMovementCurrentBinModel>(
      name: 'lpn',
      width: _width,
      columnHeader: Text(
        'LPN#',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(text: item.lpn);
      },
    ),
    OperanceDataColumn<PalletMovementCurrentBinModel>(
      name: 'BPN#',
      width: _width,
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
    OperanceDataColumn<PalletMovementCurrentBinModel>(
      name: 'quantity',
      width: _width,
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
    OperanceDataColumn<PalletMovementCurrentBinModel>(
      name: 'holdReason',
      width: _width,
      columnHeader: Text(
        'Hold Reason',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.holdReason,
        );
      },
    ),
    OperanceDataColumn<PalletMovementCurrentBinModel>(
      name: 'bin',
      width: _width,
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
    OperanceDataColumn<PalletMovementCurrentBinModel>(
      name: 'type',
      width: _width,
      columnHeader: Text(
        'Type',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.type,
        );
      },
    ),
    OperanceDataColumn<PalletMovementCurrentBinModel>(
      name: 'expirationDate',
      width: _width,
      columnHeader: Text(
        'Expiration Date',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.expirationDate,
        );
      },
    ),
  ];
}
