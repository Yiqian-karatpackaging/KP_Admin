import '../receiving_incoming_containers.dart';

class ReceivingIncomingContainersColumn {
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

  static final OperanceDataColumnWidth _dateWidth = OperanceDataColumnWidth(size: 60.w);

  static List<OperanceDataColumn<ReceivingIncomingContainersModel>> columns = [
    OperanceDataColumn<ReceivingIncomingContainersModel>(
      name: 'loc',
      columnHeader: Text(
        'Loc',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.loc,
        );
      },
    ),
    OperanceDataColumn<ReceivingIncomingContainersModel>(
      name: 'Urgent',
      columnHeader: Text(
        'Urgent',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.urgent,
        );
      },
    ),
    OperanceDataColumn<ReceivingIncomingContainersModel>(
      name: 'PO#',
      columnHeader: Text(
        'PO#',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.po,
        );
      },
    ),
    OperanceDataColumn<ReceivingIncomingContainersModel>(
      name: 'Vendor',
      columnHeader: Text(
        'Vendor',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.vendor,
        );
      },
    ),
    OperanceDataColumn<ReceivingIncomingContainersModel>(
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
    OperanceDataColumn<ReceivingIncomingContainersModel>(
      name: 'Invoice Date',
      columnHeader: Text(
        'Invoice Date',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.invoiceDate,
        );
      },
    ),
    OperanceDataColumn<ReceivingIncomingContainersModel>(
      name: 'Memo',
      width: OperanceDataColumnWidth(size: 100.w),
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
    OperanceDataColumn<ReceivingIncomingContainersModel>(
      name: 'Container',
      //sortable: true,
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
    OperanceDataColumn<ReceivingIncomingContainersModel>(
      name: 'DateInYard',
      columnHeader: Text(
        'DateInYard',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.dateInYard,
        );
      },
    ),
    OperanceDataColumn<ReceivingIncomingContainersModel>(
      name: 'Memo InYard',
      columnHeader: Text(
        'Memo InYard',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.memoInYard,
        );
      },
    ),
    OperanceDataColumn<ReceivingIncomingContainersModel>(
      name: 'ETA Warehouse',
      columnHeader: Text(
        'ETA Warehouse',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.etaWarehouse,
        );
      },
    ),
    OperanceDataColumn<ReceivingIncomingContainersModel>(
      name: 'ETA Dispatch',
      columnHeader: Text(
        'ETA Dispatch',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.etaDispatch,
        );
      },
    ),
    OperanceDataColumn<ReceivingIncomingContainersModel>(
      name: 'ETA Port',
      columnHeader: Text(
        'ETA Port',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.etaPort,
        );
      },
    ),
    OperanceDataColumn<ReceivingIncomingContainersModel>(
      name: 'Inv#',
      columnHeader: Text(
        'Inv#',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.inv,
        );
      },
    ),
    OperanceDataColumn<ReceivingIncomingContainersModel>(
      name: 'In YardBy',
      columnHeader: Text(
        'In YardBy',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.inYardBy,
        );
      },
    ),
    OperanceDataColumn<ReceivingIncomingContainersModel>(
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
  ];
}
