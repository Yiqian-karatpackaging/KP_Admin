import '../sp_packing.dart';

class SPPackingColumn {
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

  static List<OperanceDataColumn<SPPackingModel>> leftColumns = [
    OperanceDataColumn<SPPackingModel>(
      name: '',
      width: _width,
      columnHeader: Text(
        '',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return SizedBox();
      },
    ),
    OperanceDataColumn<SPPackingModel>(
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
    OperanceDataColumn<SPPackingModel>(
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
    OperanceDataColumn<SPPackingModel>(
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
    OperanceDataColumn<SPPackingModel>(
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
    OperanceDataColumn<SPPackingModel>(
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
    OperanceDataColumn<SPPackingModel>(
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
    OperanceDataColumn<SPPackingModel>(
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
    OperanceDataColumn<SPPackingModel>(
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

  static List<OperanceDataColumn<SPPackingModel>> rightColumns = [
    OperanceDataColumn<SPPackingModel>(
      name: '',
      width: _width,
      columnHeader: Text(
        '',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return SizedBox();
        return Column(
          children: [
            BaseText(text: 'Signature & Insurance'),
            BaseText(text: 'Select'),
            BaseText(text: 'PrintBox'),
            Row(
              children: [
                Icon(Icons.camera_alt),
                Icon(Icons.search),
              ],
            )
          ],
        );
      },
    ),
    OperanceDataColumn<SPPackingModel>(
      name: 'boxType',
      width: _width,
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
    OperanceDataColumn<SPPackingModel>(
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
    OperanceDataColumn<SPPackingModel>(
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
    OperanceDataColumn<SPPackingModel>(
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
    OperanceDataColumn<SPPackingModel>(
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
    OperanceDataColumn<SPPackingModel>(
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
    OperanceDataColumn<SPPackingModel>(
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
    OperanceDataColumn<SPPackingModel>(
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
