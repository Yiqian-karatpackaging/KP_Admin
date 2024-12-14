import '../sp_packing_ups.dart';

class SPPackingUpsColumn {
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

  static List<OperanceDataColumn<SPPackingUpsModel>> leftColumns = [
    OperanceDataColumn<SPPackingUpsModel>(
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
    OperanceDataColumn<SPPackingUpsModel>(
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
    OperanceDataColumn<SPPackingUpsModel>(
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
    OperanceDataColumn<SPPackingUpsModel>(
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
    OperanceDataColumn<SPPackingUpsModel>(
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
    OperanceDataColumn<SPPackingUpsModel>(
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
    OperanceDataColumn<SPPackingUpsModel>(
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
    OperanceDataColumn<SPPackingUpsModel>(
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

  static List<OperanceDataColumn<SPPackingUpsModel>> rightColumns = [
    OperanceDataColumn<SPPackingUpsModel>(
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
    OperanceDataColumn<SPPackingUpsModel>(
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
    OperanceDataColumn<SPPackingUpsModel>(
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
    OperanceDataColumn<SPPackingUpsModel>(
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
    OperanceDataColumn<SPPackingUpsModel>(
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
    OperanceDataColumn<SPPackingUpsModel>(
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
    OperanceDataColumn<SPPackingUpsModel>(
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
    OperanceDataColumn<SPPackingUpsModel>(
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
