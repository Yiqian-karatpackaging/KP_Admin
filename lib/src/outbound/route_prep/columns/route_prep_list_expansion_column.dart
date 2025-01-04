import '../route_prep.dart';

class RoutePrepListExpansionColumn {
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


  static List<OperanceDataColumn<RoutePrepListExpansionModel>> columns = [
    OperanceDataColumn<RoutePrepListExpansionModel>(
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
    OperanceDataColumn<RoutePrepListExpansionModel>(
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
    OperanceDataColumn<RoutePrepListExpansionModel>(
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
    OperanceDataColumn<RoutePrepListExpansionModel>(
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
    OperanceDataColumn<RoutePrepListExpansionModel>(
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
    OperanceDataColumn<RoutePrepListExpansionModel>(
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
    OperanceDataColumn<RoutePrepListExpansionModel>(
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
    OperanceDataColumn<RoutePrepListExpansionModel>(
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
    OperanceDataColumn<RoutePrepListExpansionModel>(
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
    OperanceDataColumn<RoutePrepListExpansionModel>(
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
    OperanceDataColumn<RoutePrepListExpansionModel>(
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
    OperanceDataColumn<RoutePrepListExpansionModel>(
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
    OperanceDataColumn<RoutePrepListExpansionModel>(
      name: 'Dock Loading',
      columnHeader: Text(
        'Dock Loading',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.dockLoading,
        );
      },
    ),
    OperanceDataColumn<RoutePrepListExpansionModel>(
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
    OperanceDataColumn<RoutePrepListExpansionModel>(
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
  ];
}
