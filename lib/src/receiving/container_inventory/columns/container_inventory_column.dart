import '../container_inventory.dart';

class ContainerInventoryColumn {
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


  static List<OperanceDataColumn<ContainerInventoryModel>> columns = [
    OperanceDataColumn<ContainerInventoryModel>(
      name: 'WH',
      columnHeader: Text(
        'WH',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.warehouse,
        );
      },
    ),
    OperanceDataColumn<ContainerInventoryModel>(
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
    OperanceDataColumn<ContainerInventoryModel>(
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
    OperanceDataColumn<ContainerInventoryModel>(
      name: 'PO#',
      columnHeader: Text(
        'PO#',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.po,
        );
      },
    ),
    OperanceDataColumn<ContainerInventoryModel>(
      name: 'Container#',
      columnHeader: Text(
        'Container#',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.container,
        );
      },
    ),
    OperanceDataColumn<ContainerInventoryModel>(
      name: 'Quantity',
      columnHeader: Text(
        'Quantity',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.quantity,
        );
      },
    ),
    OperanceDataColumn<ContainerInventoryModel>(
      name: 'Total Qty',
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
    OperanceDataColumn<ContainerInventoryModel>(
      name: 'ETA Warehouse',
      columnHeader: Text(
        'ETA Warehouse',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.etaWarehouse,
        );
      },
    ),
    OperanceDataColumn<ContainerInventoryModel>(
      name: 'ETA Port',
      columnHeader: Text(
        'ETA Port',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.etaPort,
        );
      },
    ),
    OperanceDataColumn<ContainerInventoryModel>(
      name: 'Date InYard',
      columnHeader: Text(
        'Date InYard',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.dateInYard,
        );
      },
    ),
    OperanceDataColumn<ContainerInventoryModel>(
      name: 'LFD',
      columnHeader: Text(
        'LFD',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.lfd,
        );
      },
    ),
  ];
}
