import '../manifest_history.dart';

class ManifestHistoryColumn {
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


  static List<OperanceDataColumn<ManifestHistoryModel>> columns = [
    OperanceDataColumn<ManifestHistoryModel>(
      name: 'Action',
      columnHeader: Text(
        'Action',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return GestureDetector(
          child: Icon(Icons.edit, color: Colors.blue,),
        );
      },
    ),
    OperanceDataColumn<ManifestHistoryModel>(
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
    OperanceDataColumn<ManifestHistoryModel>(
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
    OperanceDataColumn<ManifestHistoryModel>(
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
    OperanceDataColumn<ManifestHistoryModel>(
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
    OperanceDataColumn<ManifestHistoryModel>(
      name: 'Ship Method',
      columnHeader: Text(
        'Ship Method',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.shipMethod,
        );
      },
    ),
    OperanceDataColumn<ManifestHistoryModel>(
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
    OperanceDataColumn<ManifestHistoryModel>(
      name: 'Confirmed Appt',
      columnHeader: Text(
        'Confirmed Appt',
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
    OperanceDataColumn<ManifestHistoryModel>(
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
    OperanceDataColumn<ManifestHistoryModel>(
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
    OperanceDataColumn<ManifestHistoryModel>(
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
    OperanceDataColumn<ManifestHistoryModel>(
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
    //
    OperanceDataColumn<ManifestHistoryModel>(
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
    OperanceDataColumn<ManifestHistoryModel>(
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
    OperanceDataColumn<ManifestHistoryModel>(
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
    OperanceDataColumn<ManifestHistoryModel>(
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
    OperanceDataColumn<ManifestHistoryModel>(
      name: 'POD',
      columnHeader: Text(
        'POD',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.pod,
          textColor: Colors.blue,
          textDecoration: TextDecoration.underline,
        );
      },
    ),
    OperanceDataColumn<ManifestHistoryModel>(
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
    //
    OperanceDataColumn<ManifestHistoryModel>(
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
    OperanceDataColumn<ManifestHistoryModel>(
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
    OperanceDataColumn<ManifestHistoryModel>(
      name: 'Stop Time Stamp',
      columnHeader: Text(
        'Stop Time Stamp',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.stopTimeStamp,
        );
      },
    ),
    OperanceDataColumn<ManifestHistoryModel>(
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
    OperanceDataColumn<ManifestHistoryModel>(
      name: 'Pallet Exchange',
      columnHeader: Text(
        'Pallet Exchange',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.driverNotes,
        );
      },
    ),
    OperanceDataColumn<ManifestHistoryModel>(
      name: 'Loader',
      columnHeader: Text(
        'Loader',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.loader,
        );
      },
    ),
    OperanceDataColumn<ManifestHistoryModel>(
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
    OperanceDataColumn<ManifestHistoryModel>(
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
    OperanceDataColumn<ManifestHistoryModel>(
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
    OperanceDataColumn<ManifestHistoryModel>(
      name: 'Receiving Hours',
      columnHeader: Text(
        'Receiving Hours',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return GestureDetector(
          child: Icon(Icons.edit, color: Colors.blue,),
        );
      },
    ),
    OperanceDataColumn<ManifestHistoryModel>(
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
    OperanceDataColumn<ManifestHistoryModel>(
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
    OperanceDataColumn<ManifestHistoryModel>(
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
    OperanceDataColumn<ManifestHistoryModel>(
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
    OperanceDataColumn<ManifestHistoryModel>(
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
    OperanceDataColumn<ManifestHistoryModel>(
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
    OperanceDataColumn<ManifestHistoryModel>(
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
    OperanceDataColumn<ManifestHistoryModel>(
      name: 'Customer Notes',
      columnHeader: Text(
        'Customer Notes',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.customerNotes,
        );
      },
    ),
    OperanceDataColumn<ManifestHistoryModel>(
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
    OperanceDataColumn<ManifestHistoryModel>(
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
    OperanceDataColumn<ManifestHistoryModel>(
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
    OperanceDataColumn<ManifestHistoryModel>(
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
    OperanceDataColumn<ManifestHistoryModel>(
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
    OperanceDataColumn<ManifestHistoryModel>(
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
    OperanceDataColumn<ManifestHistoryModel>(
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
    OperanceDataColumn<ManifestHistoryModel>(
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
    OperanceDataColumn<ManifestHistoryModel>(
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
    OperanceDataColumn<ManifestHistoryModel>(
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
    OperanceDataColumn<ManifestHistoryModel>(
      name: 'Gate Type',
      columnHeader: Text(
        'Gate Type',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.gateType,
        );
      },
    ),
    OperanceDataColumn<ManifestHistoryModel>(
      name: 'Past Due',
      columnHeader: Text(
        'Past Due',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.pastDue,
        );
      },
    ),
    OperanceDataColumn<ManifestHistoryModel>(
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
    OperanceDataColumn<ManifestHistoryModel>(
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
