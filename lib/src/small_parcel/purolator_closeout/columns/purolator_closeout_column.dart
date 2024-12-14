import '../purolator_closeout.dart';

class PurolatorCloseoutColumn {
  static TextStyle columnHeaderStyle = const TextStyle(
    fontWeight: FontWeight.bold,
  );

  static const _width =  OperanceDataColumnWidth(factor:  1 / 8);

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

  static List<OperanceDataColumn<PurolatorCloseoutModel>> columns = [
    OperanceDataColumn<PurolatorCloseoutModel>(
      name: 'salesOrd',
      width: _width,
      columnHeader: Text(
        'Sales Ord#',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.salesOrd,
        );
      },
    ),
    OperanceDataColumn<PurolatorCloseoutModel>(
      name: 'customerName',
      width: _width,
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
    OperanceDataColumn<PurolatorCloseoutModel>(
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
    OperanceDataColumn<PurolatorCloseoutModel>(
      name: 'shipToAddress',
      columnHeader: Text(
        'Ship To Address',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.shipToAddress,
        );
      },
    ),
    OperanceDataColumn<PurolatorCloseoutModel>(
      name: 'carrier',
      columnHeader: Text(
        'Carrier',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.carrier,
        );
      },
    ),
    OperanceDataColumn<PurolatorCloseoutModel>(
      name: 'boxType',
      columnHeader: Text(
        'Box Type',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.boxType,
        );
      },
    ),
    OperanceDataColumn<PurolatorCloseoutModel>(
      name: 'weight',
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
    OperanceDataColumn<PurolatorCloseoutModel>(
      name: 'trackNo',
      columnHeader: Text(
        'Track No',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.trackNo,
        );
      },
    ),
  ];
}
