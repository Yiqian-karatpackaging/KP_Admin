import 'package:kp_admin/src/shipping/item_pick_average/item_pick_average.dart';

class ItemPickAverageColumn {
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

  static const OperanceDataColumnWidth _dateWidth =
      OperanceDataColumnWidth(factor: 1 / 5);

  static List<OperanceDataColumn<ItemPickAverageModel>> columns = [
    OperanceDataColumn<ItemPickAverageModel>(
      name: '"itemCode',
      width: _dateWidth,
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
    OperanceDataColumn<ItemPickAverageModel>(
      name: 'legacyItem',
      width: _dateWidth,
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
    OperanceDataColumn<ItemPickAverageModel>(
      name: 'itemDescription',
      width: _dateWidth,
      columnHeader: Text(
        'Item Description',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.itemDescription,
        );
      },
    ),
    OperanceDataColumn<ItemPickAverageModel>(
      name: 'unitPerCase',
      width: _dateWidth,
      columnHeader: Text(
        'Unit Per Case',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.unitPerCase,
        );
      },
    ),
    OperanceDataColumn<ItemPickAverageModel>(
      name: 'qtyKPI',
      width: _dateWidth,
      columnHeader: Text(
        'QTY KPI',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.qtyKPI,
        );
      },
    ),
  ];
}
