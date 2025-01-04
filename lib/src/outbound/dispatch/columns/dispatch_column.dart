import '../dispatch.dart';

class DispatchColumn {
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


  static List<OperanceDataColumn<DispatchModel>> columns = [
    OperanceDataColumn<DispatchModel>(
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
    OperanceDataColumn<DispatchModel>(
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
    OperanceDataColumn<DispatchModel>(
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
    OperanceDataColumn<DispatchModel>(
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
    OperanceDataColumn<DispatchModel>(
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
    OperanceDataColumn<DispatchModel>(
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
    OperanceDataColumn<DispatchModel>(
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
    OperanceDataColumn<DispatchModel>(
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
    OperanceDataColumn<DispatchModel>(
      name: 'Confirmed Appt',
      columnHeader: Text(
        'Confirmed Appt',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.confirmedAppt,
        );
      },
    ),
    OperanceDataColumn<DispatchModel>(
      name: 'Receiving Hours',
      columnHeader: Text(
        'Receiving Hours',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.receivingHours,
        );
      },
    ),
    OperanceDataColumn<DispatchModel>(
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
    OperanceDataColumn<DispatchModel>(
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
    OperanceDataColumn<DispatchModel>(
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
    OperanceDataColumn<DispatchModel>(
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
    OperanceDataColumn<DispatchModel>(
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
    OperanceDataColumn<DispatchModel>(
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
    OperanceDataColumn<DispatchModel>(
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
    OperanceDataColumn<DispatchModel>(
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
    OperanceDataColumn<DispatchModel>(
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
    OperanceDataColumn<DispatchModel>(
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
    OperanceDataColumn<DispatchModel>(
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
    OperanceDataColumn<DispatchModel>(
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
    OperanceDataColumn<DispatchModel>(
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
    OperanceDataColumn<DispatchModel>(
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
    OperanceDataColumn<DispatchModel>(
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
    OperanceDataColumn<DispatchModel>(
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
    OperanceDataColumn<DispatchModel>(
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
    OperanceDataColumn<DispatchModel>(
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
    OperanceDataColumn<DispatchModel>(
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
    OperanceDataColumn<DispatchModel>(
      name: 'Approve Date',
      columnHeader: Text(
        'Approve Date',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.approveDate,
        );
      },
    ),
    OperanceDataColumn<DispatchModel>(
      name: 'Approve By',
      columnHeader: Text(
        'Approve By',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.approveBy,
        );
      },
    ),
    OperanceDataColumn<DispatchModel>(
      name: 'Approve Notes',
      columnHeader: Text(
        'Approve Notes',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.approveNotes,
        );
      },
    ),
    OperanceDataColumn<DispatchModel>(
      name: 'BOL Printed',
      columnHeader: Text(
        'BOL Printed',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.bolPrinted,
        );
      },
    ),
    OperanceDataColumn<DispatchModel>(
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
    OperanceDataColumn<DispatchModel>(
      name: 'Lumper',
      columnHeader: Text(
        'Lumper',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.lumper,
        );
      },
    ),
  ];
}
