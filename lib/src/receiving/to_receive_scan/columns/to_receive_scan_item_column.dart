import '../to_receive_scan.dart';

class ToReceiveScanItemColumn {
  static TextStyle columnHeaderStyle = const TextStyle(
    fontWeight: FontWeight.bold,
  );

  static List<List<String>> data = [
    [
      "11208",
      "20.2922.032",
      "C-KC16",
      "CA",
      "2330812",
      "STAGE01",
      "1",
      "TO",
      "16964",
      "16 oz Clear PET Cups (Karat, 98mm) C-KC16 [C-KC16]",
      "11/6/2024 4:29 PM",
      "adam.hsia",
      "0",
      "",
      "United States"
    ],
    [
      "11209",
      "10.0000.019",
      "B2059",
      "CA",
      "2295328",
      "003-012A",
      "1",
      "SO",
      "12901697",
      "TeaZone Popping Pearls GOURMET-Series Cherry [B2059]",
      "11/7/2024 2:01 AM",
      "shiso",
      "0",
      "",
      ""
    ]
  ];


  static List<OperanceDataColumn<ToReceiveScanItemModel>> columns = [
    OperanceDataColumn<ToReceiveScanItemModel>(
      name: '',
      columnHeader: Text(
        '',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: '',
        );
      },
    ),
    OperanceDataColumn<ToReceiveScanItemModel>(
      name: 'Item Code',
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
    OperanceDataColumn<ToReceiveScanItemModel>(
      name: 'Legacy Item',
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
    OperanceDataColumn<ToReceiveScanItemModel>(
      name: 'Units',
      columnHeader: Text(
        'Units',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.units,
        );
      },
    ),
    OperanceDataColumn<ToReceiveScanItemModel>(
      name: 'OnHand Qty',
      columnHeader: Text(
        'OnHand Qty',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.onHandQty,
        );
      },
    ),
    OperanceDataColumn<ToReceiveScanItemModel>(
      name: 'Ord Qty',
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
    OperanceDataColumn<ToReceiveScanItemModel>(
      name: 'Rcvd Qty',
      columnHeader: Text(
        'Rcvd Qty',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.rcvdQty,
        );
      },
    ),
    OperanceDataColumn<ToReceiveScanItemModel>(
      name: 'Bal',
      columnHeader: Text(
        'Bal',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.bal,
        );
      },
    ),
    OperanceDataColumn<ToReceiveScanItemModel>(
      name: 'NS Rcvd Qty',
      columnHeader: Text(
        'NS Rcvd Qty',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.nsRcvdQty,
        );
      },
    ),
    OperanceDataColumn<ToReceiveScanItemModel>(
      name: 'Ord Case',
      columnHeader: Text(
        'Ord Case',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.ordCase,
        );
      },
    ),
    OperanceDataColumn<ToReceiveScanItemModel>(
      name: '#Full Pallet',
      columnHeader: Text(
        '#Full Pallet',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.fullPallet,
        );
      },
    ),
    OperanceDataColumn<ToReceiveScanItemModel>(
      name: 'Qty / Pallet',
      columnHeader: Text(
        'Qty / Pallet',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.qtyPallet,
        );
      },
    ),
    OperanceDataColumn<ToReceiveScanItemModel>(
      name: 'Partial Pallet',
      columnHeader: Text(
        'Partial Pallet',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.partialPallet,
        );
      },
    ),
    OperanceDataColumn<ToReceiveScanItemModel>(
      name: 'Description',
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
    OperanceDataColumn<ToReceiveScanItemModel>(
      name: 'UPC Code',
      columnHeader: Text(
        'UPC Code',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.upcCode,
        );
      },
    ),
  ];
}
