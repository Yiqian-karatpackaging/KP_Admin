import 'package:kp_admin/src/shipping/cross_inventory_lookup/cross_inventory_lookup.dart';

class CrossInventoryLookupColumn {
  static TextStyle columnHeaderStyle = const TextStyle(
    fontWeight: FontWeight.bold,
  );

  static List<List<dynamic>> data = [
    [
      "040a9b48-24dd-4ab4-be5a-3256f6c5fe67",
      "10.1813.138",
      "G-Strawberry",
      "0",
      "0",
      "1588",
      "671",
      "107",
      "0",
      "0",
      "0",
      true,
      true,
      true,
      true,
      true,
      true,
      "0",
      true,
      "0",
      true,
      "0",
      true
    ],
    [
      "04383bf1-b545-46ea-aaeb-0b701f5e5bf7",
      "20.2932.052",
      "U2008W",
      "0",
      "0",
      "670",
      "994",
      "309",
      "250",
      "400",
      "0",
      true,
      true,
      true,
      true,
      true,
      true,
      "0",
      true,
      "0",
      true,
      "0",
      true
    ],
    [
      "046d0e9a-497e-4d84-9d7a-3180afcdbb74",
      "10.0014.015",
      "T2011",
      "0",
      "0",
      "0",
      "0",
      "0",
      "1",
      "50",
      "0",
      true,
      true,
      true,
      true,
      true,
      true,
      "0",
      true,
      "0",
      true,
      "0",
      true
    ]
  ];

  static List<OperanceDataColumn<CrossInventoryLookupModel>> columns = [
    OperanceDataColumn<CrossInventoryLookupModel>(
      name: '"itemCode',
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
    OperanceDataColumn<CrossInventoryLookupModel>(
      name: 'legacyItem',
      columnHeader: Text(
        'Legacy Item:',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.legacyItem,
        );
      },
    ),
    OperanceDataColumn<CrossInventoryLookupModel>(
      name: 'soQty',
      columnHeader: Text(
        'SO Qty',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.soQty,
        );
      },
    ),
    OperanceDataColumn<CrossInventoryLookupModel>(
      name: 'totalQty',
      columnHeader: Text(
        'Total Qty',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.totalQty,
        );
      },
    ),
    OperanceDataColumn<CrossInventoryLookupModel>(
      name: 'caQty',
      columnHeader: Text(
        'CA Qty',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.caQty,
        );
      },
    ),
    OperanceDataColumn<CrossInventoryLookupModel>(
      name: 'txQty',
      columnHeader: Text(
        'TX Qty',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(text: item.txQty);
      },
    ),
    OperanceDataColumn<CrossInventoryLookupModel>(
      name: 'njQty',
      columnHeader: Text(
        'NJ Qty',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.njQty,
        );
      },
    ),
    OperanceDataColumn<CrossInventoryLookupModel>(
      name: 'waQty',
      columnHeader: Text(
        'WA Qty',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.waQty,
        );
      },
    ),
    OperanceDataColumn<CrossInventoryLookupModel>(
      name: 'scQty',
      columnHeader: Text(
        'SC Qty',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.scQty,
        );
      },
    ),
    OperanceDataColumn<CrossInventoryLookupModel>(
      name: 'hiQty',
      columnHeader: Text(
        'HI Qty',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.hiQty,
        );
      },
    ),
    OperanceDataColumn<CrossInventoryLookupModel>(
      name: 'ilQty',
      columnHeader: Text(
        'IL Qty',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.ilQty,
        );
      },
    ),
    OperanceDataColumn<CrossInventoryLookupModel>(
      name: 'slQty',
      columnHeader: Text(
        'SL Qty',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.slQty,
        );
      },
    ),
    OperanceDataColumn<CrossInventoryLookupModel>(
      name: 'azQty',
      columnHeader: Text(
        'AZ Qty',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.azQty,
        );
      },
    ),
  ];
}
