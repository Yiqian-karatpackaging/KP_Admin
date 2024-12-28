import '../receiving_incoming_containers.dart';

class ReceivingIncomingContainersExpansionColumn {
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

  static final OperanceDataColumnWidth _dateWidth = OperanceDataColumnWidth(size: 60.w);

  static List<OperanceDataColumn<ReceivingIncomingContainersExpansionModel>> columns = [
    OperanceDataColumn<ReceivingIncomingContainersExpansionModel>(
      name: 'Line',
      columnHeader: Text(
        'Line#',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.line,
        );
      },
    ),
    OperanceDataColumn<ReceivingIncomingContainersExpansionModel>(
      name: 'ItemCode',
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
    OperanceDataColumn<ReceivingIncomingContainersExpansionModel>(
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
    OperanceDataColumn<ReceivingIncomingContainersExpansionModel>(
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
    OperanceDataColumn<ReceivingIncomingContainersExpansionModel>(
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
    OperanceDataColumn<ReceivingIncomingContainersExpansionModel>(
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
    OperanceDataColumn<ReceivingIncomingContainersExpansionModel>(
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
    OperanceDataColumn<ReceivingIncomingContainersExpansionModel>(
      name: 'UPC Code',
      width: OperanceDataColumnWidth(size: 100.w),
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
    OperanceDataColumn<ReceivingIncomingContainersExpansionModel>(
      name: 'Ord Date',
      //sortable: true,
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
    OperanceDataColumn<ReceivingIncomingContainersExpansionModel>(
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
    OperanceDataColumn<ReceivingIncomingContainersExpansionModel>(
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
