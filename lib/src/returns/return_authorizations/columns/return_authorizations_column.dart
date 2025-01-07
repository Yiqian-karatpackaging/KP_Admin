import '../return_authorizations.dart';

class ReturnAuthorizationsColumn {
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


  static List<OperanceDataColumn<ReturnAuthorizationsModel>> columns = [
    OperanceDataColumn<ReturnAuthorizationsModel>(
      name: 'Priority',
      columnHeader: Text(
        'Priority',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.priority,
        );
      },
    ),
    OperanceDataColumn<ReturnAuthorizationsModel>(
      name: 'RA#',
      columnHeader: Text(
        'RA#',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.ra,
        );
      },
    ),
    OperanceDataColumn<ReturnAuthorizationsModel>(
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
    OperanceDataColumn<ReturnAuthorizationsModel>(
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
    OperanceDataColumn<ReturnAuthorizationsModel>(
      name: 'Order Status',
      columnHeader: Text(
        'Order Status',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.orderStatus,
        );
      },
    ),
    OperanceDataColumn<ReturnAuthorizationsModel>(
      name: 'Tran Date',
      columnHeader: Text(
        'Tran Date',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.tranDate,
        );
      },
    ),
    OperanceDataColumn<ReturnAuthorizationsModel>(
      name: 'Customer Name',
      columnHeader: Text(
        'Customer Name',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.customerName,
        );
      },
    ),
    OperanceDataColumn<ReturnAuthorizationsModel>(
      name: 'Receive Start',
      columnHeader: Text(
        'Receive Start',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.receiveStart,
        );
      },
    ),
    OperanceDataColumn<ReturnAuthorizationsModel>(
      name: 'Receiver Started By',
      columnHeader: Text(
        'Receiver Started By',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.receiverStartedBy,
        );
      },
    ),
    OperanceDataColumn<ReturnAuthorizationsModel>(
      name: 'Receive Date',
      columnHeader: Text(
        'Receive Date',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.receiveDate,
        );
      },
    ),
    OperanceDataColumn<ReturnAuthorizationsModel>(
      name: 'Received By',
      columnHeader: Text(
        'Received By',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.receivedBy,
        );
      },
    ),
    OperanceDataColumn<ReturnAuthorizationsModel>(
      name: 'Receiver Assigned To',
      columnHeader: Text(
        'Receiver Assigned To',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.receiverAssignedTo,
        );
      },
    ),
  ];
}
