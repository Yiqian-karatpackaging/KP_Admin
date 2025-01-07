import '../so_cubic_feet.dart';

class SoCubicFeetListColumn {
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

  static List<OperanceDataColumn<SoCubicFeetListModel>> columns = [
    OperanceDataColumn<SoCubicFeetListModel>(
      name: 'Qty',
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
    OperanceDataColumn<SoCubicFeetListModel>(
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
    OperanceDataColumn<SoCubicFeetListModel>(
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
    OperanceDataColumn<SoCubicFeetListModel>(
      name: 'Total Cubic Feet',
      columnHeader: Text(
        'Total Cubic Feet',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.totalCubicFeet,
        );
      },
    ),
    OperanceDataColumn<SoCubicFeetListModel>(
      name: 'Total Weight',
      columnHeader: Text(
        'Total Weight',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.totalWeight,
        );
      },
    ),
    OperanceDataColumn<SoCubicFeetListModel>(
      name: 'Cubic Feet',
      columnHeader: Text(
        'Cubic Feet',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.cubicFeet,
        );
      },
    ),
    OperanceDataColumn<SoCubicFeetListModel>(
      name: 'Item Cubic Feet',
      columnHeader: Text(
        'Item Cubic Feet',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.itemCubicFeet,
        );
      },
    ),
    OperanceDataColumn<SoCubicFeetListModel>(
      name: 'Gross Weight',
      columnHeader: Text(
        'Gross Weight',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.grossWeight,
        );
      },
    ),
    OperanceDataColumn<SoCubicFeetListModel>(
      name: 'Item Weight',
      columnHeader: Text(
        'Item Weight',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.itemWeight,
        );
      },
    ),
    OperanceDataColumn<SoCubicFeetListModel>(
      name: 'Description',
      columnHeader: Text(
        'Description#',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.description,
        );
      },
    ),
  ];
}
