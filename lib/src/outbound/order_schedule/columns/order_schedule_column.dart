import '../order_schedule.dart';

class OrderScheduleColumn {
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
      "United Pick Starteds"
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


  static List<OperanceDataColumn<OrderScheduleModel>> columns = [
    OperanceDataColumn<OrderScheduleModel>(
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
    OperanceDataColumn<OrderScheduleModel>(
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
    OperanceDataColumn<OrderScheduleModel>(
      name: 'Customer',
      columnHeader: Text(
        'Customer',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.customer,
        );
      },
    ),
    OperanceDataColumn<OrderScheduleModel>(
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
    OperanceDataColumn<OrderScheduleModel>(
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
    OperanceDataColumn<OrderScheduleModel>(
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
    OperanceDataColumn<OrderScheduleModel>(
      name: 'Appointment Time/Date',
      columnHeader: Text(
        'Appointment Time/Date',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: 'Edit',
          textColor: Colors.blue,
          textDecoration: TextDecoration.underline,
        );
      },
    ),
    OperanceDataColumn<OrderScheduleModel>(
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
    OperanceDataColumn<OrderScheduleModel>(
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
    OperanceDataColumn<OrderScheduleModel>(
      name: 'PCompleted By',
      columnHeader: Text(
        'PCompleted By',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.pCompletedBy,
        );
      },
    ),
    OperanceDataColumn<OrderScheduleModel>(
      name: 'PCompleted',
      columnHeader: Text(
        'PCompleted',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.pCompleted,
        );
      },
    ),
    OperanceDataColumn<OrderScheduleModel>(
      name: 'Audit Started By',
      columnHeader: Text(
        'Audit Started By',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.auditStartedBy,
        );
      },
    ),
    OperanceDataColumn<OrderScheduleModel>(
      name: 'Audit Started',
      columnHeader: Text(
        'Audit Started',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.auditStarted,
        );
      },
    ),
    OperanceDataColumn<OrderScheduleModel>(
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
    OperanceDataColumn<OrderScheduleModel>(
      name: 'Audit Completed',
      columnHeader: Text(
        'Audit Completed',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.auditCompleted,
        );
      },
    ),
  ];
}
