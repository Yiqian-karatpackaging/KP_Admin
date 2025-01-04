import '../driver_routes.dart';

class DriverRoutesColumn {
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


  static List<OperanceDataColumn<DriverRoutesModel>> columns = [
    OperanceDataColumn<DriverRoutesModel>(
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
    OperanceDataColumn<DriverRoutesModel>(
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
    OperanceDataColumn<DriverRoutesModel>(
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
    OperanceDataColumn<DriverRoutesModel>(
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
    OperanceDataColumn<DriverRoutesModel>(
      name: 'Order Type',
      columnHeader: Text(
        'Order Type',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.orderType,
        );
      },
    ),
    OperanceDataColumn<DriverRoutesModel>(
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
    OperanceDataColumn<DriverRoutesModel>(
      name: 'Departure Schedule',
      columnHeader: Text(
        'Departure Schedule',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.departureSchedule,
        );
      },
    ),
    OperanceDataColumn<DriverRoutesModel>(
      name: 'Trailer#',
      columnHeader: Text(
        'Trailer#',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.trailer,
        );
      },
    ),
    OperanceDataColumn<DriverRoutesModel>(
      name: 'Route#',
      columnHeader: Text(
        'Route#',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.route,
        );
      },
    ),
    OperanceDataColumn<DriverRoutesModel>(
      name: 'Stop#',
      columnHeader: Text(
        'Stop#',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.stop,
        );
      },
    ),
    OperanceDataColumn<DriverRoutesModel>(
      name: 'Stop Duration',
      columnHeader: Text(
        'Stop Duration',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.stopDuration,
        );
      },
    ),
    OperanceDataColumn<DriverRoutesModel>(
      name: 'Pallet Jack',
      columnHeader: Text(
        'Pallet Jack',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.palletJack,
        );
      },
    ),
    OperanceDataColumn<DriverRoutesModel>(
      name: 'Pallet Exchange',
      columnHeader: Text(
        'Pallet Exchange',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.palletExchange,
        );
      },
    ),
    OperanceDataColumn<DriverRoutesModel>(
      name: 'Truck#',
      columnHeader: Text(
        'Truck#',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.truck,
        );
      },
    ),
    OperanceDataColumn<DriverRoutesModel>(
      name: 'Truck Type',
      columnHeader: Text(
        'Truck Type',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.truckType,
        );
      },
    ),
    OperanceDataColumn<DriverRoutesModel>(
      name: 'Driver',
      columnHeader: Text(
        'Driver',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.driver,
        );
      },
    ),
    OperanceDataColumn<DriverRoutesModel>(
      name: 'Total Route Timer',
      columnHeader: Text(
        'Total Route Timer',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.totalRouteTimer,
        );
      },
    ),
    OperanceDataColumn<DriverRoutesModel>(
      name: 'Start TimeStamp',
      columnHeader: Text(
        'Start TimeStamp',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.startTimeStamp,
        );
      },
    ),
    OperanceDataColumn<DriverRoutesModel>(
      name: 'Stop TimeStamp',
      columnHeader: Text(
        'Stop TimeStamp',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.stopTimeStamp,
        );
      },
    ),
    OperanceDataColumn<DriverRoutesModel>(
      name: 'Drive Duration',
      columnHeader: Text(
        'Drive Duration',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.driveDuration,
        );
      },
    ),
    OperanceDataColumn<DriverRoutesModel>(
      name: 'POD',
      columnHeader: Text(
        'POD',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.pod,
        );
      },
    ),
    OperanceDataColumn<DriverRoutesModel>(
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
    OperanceDataColumn<DriverRoutesModel>(
      name: 'Address',
      columnHeader: Text(
        'Address',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.address,
        );
      },
    ),
    OperanceDataColumn<DriverRoutesModel>(
      name: 'Hours',
      columnHeader: Text(
        'Hours',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.hours,
        );
      },
    ),
    OperanceDataColumn<DriverRoutesModel>(
      name: 'Appt',
      columnHeader: Text(
        'Appt',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.appt,
        );
      },
    ),
    OperanceDataColumn<DriverRoutesModel>(
      name: 'Picked By',
      columnHeader: Text(
        'Picked By',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.pickedBy,
        );
      },
    ),
    OperanceDataColumn<DriverRoutesModel>(
      name: 'Checked By',
      columnHeader: Text(
        'Checked By',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.checkedBy,
        );
      },
    ),
    OperanceDataColumn<DriverRoutesModel>(
      name: 'Box Count',
      columnHeader: Text(
        'Box Count',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.boxCount,
        );
      },
    ),
    OperanceDataColumn<DriverRoutesModel>(
      name: 'Pallet Count',
      columnHeader: Text(
        'Pallet Count',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.palletCount,
        );
      },
    ),
    OperanceDataColumn<DriverRoutesModel>(
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
    OperanceDataColumn<DriverRoutesModel>(
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
    OperanceDataColumn<DriverRoutesModel>(
      name: 'Category',
      columnHeader: Text(
        'Category',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.category,
        );
      },
    ),
    OperanceDataColumn<DriverRoutesModel>(
      name: 'Company/Business Name',
      columnHeader: Text(
        'Company/Business Name',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.companyBusinessName,
        );
      },
    ),
    OperanceDataColumn<DriverRoutesModel>(
      name: 'Contact Person',
      columnHeader: Text(
        'Contact Person',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.contactPerson,
        );
      },
    ),
    OperanceDataColumn<DriverRoutesModel>(
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
    OperanceDataColumn<DriverRoutesModel>(
      name: 'Zone',
      columnHeader: Text(
        'Zone',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.zone,
        );
      },
    ),
    OperanceDataColumn<DriverRoutesModel>(
      name: '53\' Trailer Access',
      columnHeader: Text(
        '53\' Trailer Access',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.trailerAccess,
        );
      },
    ),
    OperanceDataColumn<DriverRoutesModel>(
      name: 'Loading Dock',
      columnHeader: Text(
        'Loading Dock',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.loadingDock,
        );
      },
    ),
    OperanceDataColumn<DriverRoutesModel>(
      name: 'Lift-Gate',
      columnHeader: Text(
        'Lift-Gate',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.liftGate,
        );
      },
    ),
    OperanceDataColumn<DriverRoutesModel>(
      name: 'Limited Access',
      columnHeader: Text(
        'Limited Access',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.limitedAccess,
        );
      },
    ),
    OperanceDataColumn<DriverRoutesModel>(
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
    OperanceDataColumn<DriverRoutesModel>(
      name: 'Terms',
      columnHeader: Text(
        'Terms',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.terms,
        );
      },
    ),
    OperanceDataColumn<DriverRoutesModel>(
      name: 'Mileage',
      columnHeader: Text(
        'Mileage',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.mileage,
        );
      },
    ),
  ];
}
