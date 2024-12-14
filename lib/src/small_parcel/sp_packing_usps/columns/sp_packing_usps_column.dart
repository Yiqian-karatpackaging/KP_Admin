import '../sp_packing_usps.dart';

class SPPackingUspsColumn {
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

  static List<OperanceDataColumn<SPPackingUspsModel>> leftColumns = [
    OperanceDataColumn<SPPackingUspsModel>(
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
    OperanceDataColumn<SPPackingUspsModel>(
      name: 'legacyItem',
      width: _width,
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
    OperanceDataColumn<SPPackingUspsModel>(
      name: 'location',
      width: _width,
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
    OperanceDataColumn<SPPackingUspsModel>(
      name: 'description',
      width: _width,
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
    OperanceDataColumn<SPPackingUspsModel>(
      name: 'ordQty',
      width: _width,
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
    OperanceDataColumn<SPPackingUspsModel>(
      name: 'pickQty',
      width: _width,
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
    OperanceDataColumn<SPPackingUspsModel>(
      name: 'nsFulfilledQty',
      width: _width,
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
    OperanceDataColumn<SPPackingUspsModel>(
      name: 'putQty',
      width: _width,
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

  static List<OperanceDataColumn<SPPackingUspsModel>> rightColumns = [
    OperanceDataColumn<SPPackingUspsModel>(
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
    OperanceDataColumn<SPPackingUspsModel>(
      name: 'boxNo',
      width: _width,
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
    OperanceDataColumn<SPPackingUspsModel>(
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
    OperanceDataColumn<SPPackingUspsModel>(
      name: 'carrier',
      width: _width,
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
    OperanceDataColumn<SPPackingUspsModel>(
      name: 'trackCode',
      width: _width,
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
    OperanceDataColumn<SPPackingUspsModel>(
      name: 'signature',
      width: _width,
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
    OperanceDataColumn<SPPackingUspsModel>(
      name: 'insuranceAmount',
      width: _width,
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
    OperanceDataColumn<SPPackingUspsModel>(
      name: 'location',
      width: _width,
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
