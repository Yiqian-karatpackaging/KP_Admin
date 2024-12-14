import '../rack_replenishment.dart';

class RackReplenishmentColumn {
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

  static const _width = OperanceDataColumnWidth(factor: 1 / 5);

  static List<OperanceDataColumn<RackReplenishmentModel>> columns = [
    OperanceDataColumn<RackReplenishmentModel>(
      name: 'wareHouse',
      width: _width,
      columnHeader: Text(
        'WareHouse',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.wareHouse,
        );
      },
    ),
    OperanceDataColumn<RackReplenishmentModel>(
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
    OperanceDataColumn<RackReplenishmentModel>(
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
    OperanceDataColumn<RackReplenishmentModel>(
      name: 'rackItemCategories',
      width: _width,
      columnHeader: Text(
        'RackItemCategories',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.rackItemCategories,
        );
      },
    ),
    OperanceDataColumn<RackReplenishmentModel>(
      name: '',
      width: _width,
      columnHeader: const Text(''),
      cellBuilder: (context, item) {
        return SizedBox();
      },
    ),
  ];
}
