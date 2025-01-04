import '../driver_sign_out.dart';

class DriverSignOutColumn {
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


  static List<OperanceDataColumn<DriverSignOutModel>> columns = [
    OperanceDataColumn<DriverSignOutModel>(
      name: 'Action',
      columnHeader: Text(
        'Action',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: '',
        );
      },
    ),
    OperanceDataColumn<DriverSignOutModel>(
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
    OperanceDataColumn<DriverSignOutModel>(
      name: 'Driver has Arrived',
      columnHeader: Text(
        'Driver has Arrived',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.driverHasArrived,
        );
      },
    ),
    OperanceDataColumn<DriverSignOutModel>(
      name: 'SO#',
      columnHeader: Text(
        'SO#',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.so,
        );
      },
    ),
    OperanceDataColumn<DriverSignOutModel>(
      name: 'Status',
      columnHeader: Text(
        'Status',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.status,
        );
      },
    ),
    OperanceDataColumn<DriverSignOutModel>(
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

    OperanceDataColumn<DriverSignOutModel>(
      name: 'Pick Started',
      columnHeader: Text(
        'Pick Started',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.pickStarted,
        );
      },
    ),
    OperanceDataColumn<DriverSignOutModel>(
      name: 'Pick Started By',
      columnHeader: Text(
        'Pick Started By',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.pickStartedBy,
        );
      },
    ),
    OperanceDataColumn<DriverSignOutModel>(
      name: 'PCompleting By',
      columnHeader: Text(
        'PCompleting By',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.pCompletingBy,
        );
      },
    ),
    OperanceDataColumn<DriverSignOutModel>(
      name: 'PCompleted Date',
      columnHeader: Text(
        'PCompleted Date',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.pCompletedDate,
        );
      },
    ),
    OperanceDataColumn<DriverSignOutModel>(
      name: 'Audit Start By',
      columnHeader: Text(
        'Audit Start By',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.auditStartBy,
        );
      },
    ),
    OperanceDataColumn<DriverSignOutModel>(
      name: 'Audit Start Date',
      columnHeader: Text(
        'Audit Start Date',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.auditStartDate,
        );
      },
    ),
    OperanceDataColumn<DriverSignOutModel>(
      name: 'Audit Completed By',
      columnHeader: Text(
        'Audit Completed By',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.auditCompletedBy,
        );
      },
    ),
    OperanceDataColumn<DriverSignOutModel>(
      name: 'Audit Completed Date',
      columnHeader: Text(
        'Audit Completed Date',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.auditCompletedDate,
        );
      },
    ),
    OperanceDataColumn<DriverSignOutModel>(
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
    OperanceDataColumn<DriverSignOutModel>(
      name: 'Ship Via',
      columnHeader: Text(
        'Ship Via',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.shipVia,
        );
      },
    ),
    OperanceDataColumn<DriverSignOutModel>(
      name: 'Pick Up Date & Time',
      columnHeader: Text(
        'Pick Up Date & Time',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.pickUpDateTime,
        );
      },
    ),
    OperanceDataColumn<DriverSignOutModel>(
      name: 'Name of Customer Picking Up',
      columnHeader: Text(
        'Name of Customer Picking Up',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.nameOfCustomerPickingUp,
        );
      },
    ),
    OperanceDataColumn<DriverSignOutModel>(
      name: 'Order Given to Customer By',
      columnHeader: Text(
        'Order Given to Customer By',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.orderGivenToCustomerBy,
        );
      },
    ),
    OperanceDataColumn<DriverSignOutModel>(
      name: 'Staging Area',
      columnHeader: Text(
        'Staging Area',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.stagingArea,
        );
      },
    ),
    OperanceDataColumn<DriverSignOutModel>(
      name: 'Dock',
      columnHeader: Text(
        'Dock',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.dock,
        );
      },
    ),
    OperanceDataColumn<DriverSignOutModel>(
      name: 'E-Mail',
      columnHeader: Text(
        'E-Mail',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.eMail,
        );
      },
    ),
    OperanceDataColumn<DriverSignOutModel>(
      name: 'Wait Time',
      columnHeader: Text(
        'Wait Time',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.waitTime,
        );
      },
    ),
  ];
}
