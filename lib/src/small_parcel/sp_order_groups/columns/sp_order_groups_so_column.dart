import '../sp_order_groups.dart';

class SPOrderGroupsSOColumn {
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

  static const _width = OperanceDataColumnWidth(factor: 1 / 6);

  static List<OperanceDataColumn<SPOrderGroupsSOModel>> columns = [
    OperanceDataColumn<SPOrderGroupsSOModel>(
      name: 'soCode',
      width: _width,
      columnHeader: Text(
        'SO Code',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.soCode,
        );
      },
    ),
    OperanceDataColumn<SPOrderGroupsSOModel>(
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
    OperanceDataColumn<SPOrderGroupsSOModel>(
      name: 'qty',
      width: _width,
      columnHeader: Text(
        'Qty',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.qty,
        );
      },
    ),
    OperanceDataColumn<SPOrderGroupsSOModel>(
      name: 'weight',
      width: _width,
      columnHeader: Text(
        'Weight',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.weight,
        );
      },
    ),
    OperanceDataColumn<SPOrderGroupsSOModel>(
      name: 'shipDate',
      width: _width,
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
    OperanceDataColumn<SPOrderGroupsSOModel>(
      name: 'customer',
      width: _width,
      columnHeader: Text(
        'Customer',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.customer,
        );
      },
    ),
  ];
}
