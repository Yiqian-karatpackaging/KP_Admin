import '../sp_packing_gls.dart';

class SPPackingGlsColumn {
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

  static const _Width = OperanceDataColumnWidth(factor: 1 / 8);

  static List<OperanceDataColumn<SPPackingGlsModel>> leftColumns = [
    OperanceDataColumn<SPPackingGlsModel>(
      name: 'itemCode',
      width: _Width,
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
    OperanceDataColumn<SPPackingGlsModel>(
      name: 'legacyItem',
      width: _Width,
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
    OperanceDataColumn<SPPackingGlsModel>(
      name: 'location',
      width: _Width,
      columnHeader: Text(
        'Location',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.location,
        );
      },
    ),
    OperanceDataColumn<SPPackingGlsModel>(
      name: 'description',
      width: _Width,
      columnHeader: Text(
        'Description',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.description,
        );
      },
    ),
    OperanceDataColumn<SPPackingGlsModel>(
      name: 'ordQty',
      width: _Width,
      columnHeader: Text(
        'Ord Qty',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.ordQty,
        );
      },
    ),
    OperanceDataColumn<SPPackingGlsModel>(
      name: 'pickQty',
      width: _Width,
      columnHeader: Text(
        'Pick Qty',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.pickQty,
        );
      },
    ),
    OperanceDataColumn<SPPackingGlsModel>(
      name: 'nsFulfilledQty',
      width: _Width,
      columnHeader: Text(
        'NS Fulfilled Qty',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.nsFulfilledQty,
        );
      },
    ),
    OperanceDataColumn<SPPackingGlsModel>(
      name: 'putQty',
      width: _Width,
      columnHeader: Text(
        'Put Qty',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.putQty,
        );
      },
    ),
  ];

  static List<OperanceDataColumn<SPPackingGlsModel>> rightColumns = [
    OperanceDataColumn<SPPackingGlsModel>(
      name: 'type',
      width: _Width,
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
    OperanceDataColumn<SPPackingGlsModel>(
      name: 'boxNo',
      width: _Width,
      columnHeader: Text(
        'Box No',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.boxNo,
        );
      },
    ),
    OperanceDataColumn<SPPackingGlsModel>(
      name: 'weight',
      width: _Width,
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
    OperanceDataColumn<SPPackingGlsModel>(
      name: 'carrier',
      width: _Width,
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
    OperanceDataColumn<SPPackingGlsModel>(
      name: 'trackCode',
      width: _Width,
      columnHeader: Text(
        'Track Code',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.trackCode,
        );
      },
    ),
    OperanceDataColumn<SPPackingGlsModel>(
      name: 'signature',
      width: _Width,
      columnHeader: Text(
        'Signature',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.signature,
        );
      },
    ),
    OperanceDataColumn<SPPackingGlsModel>(
      name: 'insuranceAmount',
      width: _Width,
      columnHeader: Text(
        'Insurance Amount',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.insuranceAmount,
        );
      },
    ),
    OperanceDataColumn<SPPackingGlsModel>(
      name: 'location',
      width: _Width,
      columnHeader: Text(
        'Location',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.location,
        );
      },
    ),
  ];
}
