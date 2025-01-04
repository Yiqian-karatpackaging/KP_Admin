import '../delivery_orders.dart';

class DeliveryOrdersColumn {
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


  static List<OperanceDataColumn<DeliveryOrdersModel>> columns = [
    OperanceDataColumn<DeliveryOrdersModel>(
      name: 'Action',
      columnHeader: Text(
        'Action',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.action,
        );
      },
    ),
    OperanceDataColumn<DeliveryOrdersModel>(
      name: 'Ref#',
      columnHeader: Text(
        'Ref#',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.ref,
        );
      },
    ),
    OperanceDataColumn<DeliveryOrdersModel>(
      name: 'Container',
      columnHeader: Text(
        'Container',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.container,
        );
      },
    ),
    OperanceDataColumn<DeliveryOrdersModel>(
      name: 'Line',
      columnHeader: Text(
        'Line',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.line,
        );
      },
    ),
    OperanceDataColumn<DeliveryOrdersModel>(
      name: 'Terminal',
      columnHeader: Text(
        'Terminal',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.terminal,
        );
      },
    ),
    OperanceDataColumn<DeliveryOrdersModel>(
      name: 'ETA',
      columnHeader: Text(
        'ETA',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.eta,
        );
      },
    ),
    OperanceDataColumn<DeliveryOrdersModel>(
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
    OperanceDataColumn<DeliveryOrdersModel>(
      name: 'Size',
      columnHeader: Text(
        'Size',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.size,
        );
      },
    ),
    OperanceDataColumn<DeliveryOrdersModel>(
      name: 'Chassis',
      columnHeader: Text(
        'Chassis',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.chassis,
        );
      },
    ),
    OperanceDataColumn<DeliveryOrdersModel>(
      name: 'Pick Up Date',
      columnHeader: Text(
        'Pick Up Date',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.pickUpDate,
        );
      },
    ),
    OperanceDataColumn<DeliveryOrdersModel>(
      name: 'Pick Up TimeFrom',
      columnHeader: Text(
        'Pick Up TimeFrom',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.pickUpTimeFrom,
        );
      },
    ),
    OperanceDataColumn<DeliveryOrdersModel>(
      name: 'Pick Up TimeTo',
      columnHeader: Text(
        'Pick Up TimeTo',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.pickUpTimeTo,
        );
      },
    ),
    OperanceDataColumn<DeliveryOrdersModel>(
      name: 'Pick Up Driver',
      columnHeader: Text(
        'Pick Up Driver',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.pickUpDriver,
        );
      },
    ),
    OperanceDataColumn<DeliveryOrdersModel>(
      name: 'Notes',
      columnHeader: Text(
        'Notes',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.notes,
        );
      },
    ),
    OperanceDataColumn<DeliveryOrdersModel>(
      name: 'Terminal Pin',
      columnHeader: Text(
        'Terminal Pin',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.terminalPin,
        );
      },
    ),
    OperanceDataColumn<DeliveryOrdersModel>(
      name: 'Return Date',
      columnHeader: Text(
        'Return Date',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.returnDate,
        );
      },
    ),
    OperanceDataColumn<DeliveryOrdersModel>(
      name: 'Return Driver',
      columnHeader: Text(
        'Return Driver',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.returnDriver,
        );
      },
    ),
    OperanceDataColumn<DeliveryOrdersModel>(
      name: 'Customer Empty Date',
      columnHeader: Text(
        'Customer Empty Date',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.customerEmptyDate,
        );
      },
    ),
    OperanceDataColumn<DeliveryOrdersModel>(
      name: 'Street',
      columnHeader: Text(
        'Street',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.street,
        );
      },
    ),
    OperanceDataColumn<DeliveryOrdersModel>(
      name: 'Unit/Suite',
      columnHeader: Text(
        'Unit/Suite',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.unitSuite,
        );
      },
    ),
    OperanceDataColumn<DeliveryOrdersModel>(
      name: 'City',
      columnHeader: Text(
        'City',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.city,
        );
      },
    ),
    OperanceDataColumn<DeliveryOrdersModel>(
      name: 'State',
      columnHeader: Text(
        'State',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.state,
        );
      },
    ),
    OperanceDataColumn<DeliveryOrdersModel>(
      name: 'Zip',
      columnHeader: Text(
        'Zip',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.zip,
        );
      },
    ),
    OperanceDataColumn<DeliveryOrdersModel>(
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
    OperanceDataColumn<DeliveryOrdersModel>(
      name: 'Created By',
      columnHeader: Text(
        'Created By',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.createdBy,
        );
      },
    ),
    OperanceDataColumn<DeliveryOrdersModel>(
      name: 'Created Date',
      columnHeader: Text(
        'Created Date',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.createdDate,
        );
      },
    ),
    OperanceDataColumn<DeliveryOrdersModel>(
      name: 'Invoice#',
      columnHeader: Text(
        'Invoice#',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.invoice,
        );
      },
    ),
    OperanceDataColumn<DeliveryOrdersModel>(
      name: 'Amount',
      columnHeader: Text(
        'Amount',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.amount,
        );
      },
    ),
  ];
}
