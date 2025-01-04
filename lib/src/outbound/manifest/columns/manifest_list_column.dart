import '../manifest.dart';

class ManifestListColumn {
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


  static List<OperanceDataColumn<ManifestListModel>> columns = [
    OperanceDataColumn<ManifestListModel>(
      name: 'Delete',
      columnHeader: Text(
        'Delete',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: '',
        );
      },
    ),
    OperanceDataColumn<ManifestListModel>(
      name: 'Check-in',
      columnHeader: Text(
        'Check-in',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.checkIn,
        );
      },
    ),
    OperanceDataColumn<ManifestListModel>(
      name: 'Appointment Time',
      columnHeader: Text(
        'Appointment Time',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.appointmentTime,
        );
      },
    ),
    OperanceDataColumn<ManifestListModel>(
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
    OperanceDataColumn<ManifestListModel>(
      name: 'Time Waited',
      columnHeader: Text(
        'Time Waited',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.timeWaited,
        );
      },
    ),
    OperanceDataColumn<ManifestListModel>(
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
    OperanceDataColumn<ManifestListModel>(
      name: 'Completed Time',
      columnHeader: Text(
        'Completed Time',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.completedTime,
        );
      },
    ),
    OperanceDataColumn<ManifestListModel>(
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
    OperanceDataColumn<ManifestListModel>(
      name: 'Driver Name',
      columnHeader: Text(
        'Driver Name',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.driverName,
        );
      },
    ),
    OperanceDataColumn<ManifestListModel>(
      name: 'Carrier Name',
      columnHeader: Text(
        'Carrier Name',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.carrierName,
        );
      },
    ),
    OperanceDataColumn<ManifestListModel>(
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
    OperanceDataColumn<ManifestListModel>(
      name: 'PO#/Ref#',
      columnHeader: Text(
        'PO#/Ref#',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.poRef,
        );
      },
    ),
    OperanceDataColumn<ManifestListModel>(
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
    OperanceDataColumn<ManifestListModel>(
      name: 'Phone#',
      columnHeader: Text(
        'Phone#',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.phone,
        );
      },
    ),
    OperanceDataColumn<ManifestListModel>(
      name: 'Dock#',
      columnHeader: Text(
        'Dock#',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.dock,
        );
      },
    ),
    OperanceDataColumn<ManifestListModel>(
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
    OperanceDataColumn<ManifestListModel>(
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
    OperanceDataColumn<ManifestListModel>(
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
    OperanceDataColumn<ManifestListModel>(
      name: 'Memo',
      columnHeader: Text(
        'Memo',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.memo,
        );
      },
    ),
    OperanceDataColumn<ManifestListModel>(
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
  ];
}
