import '../receive_scan.dart';

class ReceiveScanWorkerAllocationColumn {
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

  static const _width = OperanceDataColumnWidth(factor:  1 / 6);

  static List<OperanceDataColumn<ReceiveScanWorkerAllocationModel>> columns = [
    OperanceDataColumn<ReceiveScanWorkerAllocationModel>(
      name: 'User Name',
      width: _width,
      columnHeader: Text(
        'User Name',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.userName,
        );
      },
    ),
    OperanceDataColumn<ReceiveScanWorkerAllocationModel>(
      name: 'DateTime In',
      width: _width,
      columnHeader: Text(
        'DateTime In',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.dateTimeIn,
        );
      },
    ),
    OperanceDataColumn<ReceiveScanWorkerAllocationModel>(
      name: 'DateTime Out',
      width: _width,
      columnHeader: Text(
        'DateTime Out',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.dateTimeOut,
        );
      },
    ),
    OperanceDataColumn<ReceiveScanWorkerAllocationModel>(
      name: 'Added By',
      width: _width,
      columnHeader: Text(
        'Added By',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.addedBy,
        );
      },
    ),
    OperanceDataColumn<ReceiveScanWorkerAllocationModel>(
      name: 'Added Date',
      width: _width,
      columnHeader: Text(
        'Added Date',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.addedDate,
        );
      },
    ),
    OperanceDataColumn<ReceiveScanWorkerAllocationModel>(
      name: '',
      width: _width,
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
  ];
}
