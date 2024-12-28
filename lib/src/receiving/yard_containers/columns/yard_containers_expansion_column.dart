import '../yard_containers.dart';

class YardContainersExpansionColumn {
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

  static List<OperanceDataColumn<YardContainersExpansionModel>> columns = [
    OperanceDataColumn<YardContainersExpansionModel>(
      name: 'Item Code',
      columnHeader: Text(
        'ItemCode',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.itemCode,
        );
      },
    ),
    OperanceDataColumn<YardContainersExpansionModel>(
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
    OperanceDataColumn<YardContainersExpansionModel>(
      name: 'Ord Qty',
      columnHeader: Text(
        'Ord Qty',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.qrdQty,
        );
      },
    ),
    OperanceDataColumn<YardContainersExpansionModel>(
      name: 'Scanned Qty',
      columnHeader: Text(
        'Scanned Qty',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.scannedQty,
        );
      },
    ),
    OperanceDataColumn<YardContainersExpansionModel>(
      name: 'Balance',
      columnHeader: Text(
        'Balance',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.balance,
        );
      },
    ),
    OperanceDataColumn<YardContainersExpansionModel>(
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
    OperanceDataColumn<YardContainersExpansionModel>(
      name: 'On Hand',
      columnHeader: Text(
        'On Hand',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.onHand,
        );
      },
    ),
    OperanceDataColumn<YardContainersExpansionModel>(
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
    OperanceDataColumn<YardContainersExpansionModel>(
      name: 'Ord Date',
      columnHeader: Text(
        'Ord Date',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.ordDate,
        );
      },
    ),
    OperanceDataColumn<YardContainersExpansionModel>(
      name: 'Cubic',
      columnHeader: Text(
        'Cubic',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.cubic,
        );
      },
    ),
    OperanceDataColumn<YardContainersExpansionModel>(
      name: 'Weight',
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
  ];
}
