import '../pickup_schedul.dart';

class PickupSchedulColumn {
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


  static List<OperanceDataColumn<PickupSchedulModel>> columns = [
    OperanceDataColumn<PickupSchedulModel>(
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
    OperanceDataColumn<PickupSchedulModel>(
      name: 'Date',
      columnHeader: Text(
        'Date',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.date,
        );
      },
    ),
    OperanceDataColumn<PickupSchedulModel>(
      name: 'Weekday',
      columnHeader: Text(
        'Weekday',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.weekday,
        );
      },
    ),
    OperanceDataColumn<PickupSchedulModel>(
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
    OperanceDataColumn<PickupSchedulModel>(
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
    OperanceDataColumn<PickupSchedulModel>(
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
    OperanceDataColumn<PickupSchedulModel>(
      name: '3rd/TL/WC/LTL /Transfer/Incoming PO',
      columnHeader: Text(
        '3rd/TL/WC/LTL /Transfer/Incoming PO',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.no,
        );
      },
    ),
    OperanceDataColumn<PickupSchedulModel>(
      name: 'Pallets',
      columnHeader: Text(
        'Pallets',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.pallets,
        );
      },
    ),
    OperanceDataColumn<PickupSchedulModel>(
      name: 'Trucking Company',
      columnHeader: Text(
        'Trucking Company',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.truckingCompany,
        );
      },
    ),
    OperanceDataColumn<PickupSchedulModel>(
      name: 'Contact',
      columnHeader: Text(
        'Contact',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.contact,
        );
      },
    ),
    OperanceDataColumn<PickupSchedulModel>(
      name: 'Phone',
      columnHeader: Text(
        'Phone',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.phone,
        );
      },
    ),
    OperanceDataColumn<PickupSchedulModel>(
      name: 'Pickup#',
      columnHeader: Text(
        'Pickup#',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.pickup,
        );
      },
    ),
    OperanceDataColumn<PickupSchedulModel>(
      name: 'Note',
      columnHeader: Text(
        'Note',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.note,
        );
      },
    ),
    OperanceDataColumn<PickupSchedulModel>(
      name: 'Ready to Ship',
      columnHeader: Text(
        'Ready to Ship',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.readyToShip,
        );
      },
    ),
  ];
}
