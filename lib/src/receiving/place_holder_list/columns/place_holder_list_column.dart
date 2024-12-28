import '../place_holder_list.dart';

class PlaceHolderListColumn {
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


  static List<OperanceDataColumn<PlaceHolderListModel>> columns = [
    OperanceDataColumn<PlaceHolderListModel>(
      name: 'PHP#',
      columnHeader: Text(
        'PHP#',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.php,
        );
      },
    ),
    OperanceDataColumn<PlaceHolderListModel>(
      name: 'Bin',
      columnHeader: Text(
        'Bin',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.bin,
        );
      },
    ),
    OperanceDataColumn<PlaceHolderListModel>(
      name: 'PO',
      columnHeader: Text(
        'PO',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.po,
        );
      },
    ),
    OperanceDataColumn<PlaceHolderListModel>(
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
    OperanceDataColumn<PlaceHolderListModel>(
      name: 'Create Date',
      columnHeader: Text(
        'Create Date',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.createData,
        );
      },
    ),
    OperanceDataColumn<PlaceHolderListModel>(
      name: 'Created By',
      columnHeader: Text(
        'Created By',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.createBy,
        );
      },
    ),
    OperanceDataColumn<PlaceHolderListModel>(
      name: 'Ship Date',
      columnHeader: Text(
        'Ship Date',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.shipDate,
        );
      },
    ),
    OperanceDataColumn<PlaceHolderListModel>(
      name: 'Ship By',
      columnHeader: Text(
        'Ship By',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.shipBy,
        );
      },
    ),
    OperanceDataColumn<PlaceHolderListModel>(
      name: 'Action',
      columnHeader: Text(
        'Action',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: 'Ready to Ship',
          textColor: Colors.blue,
        );
      },
    ),
  ];
}
