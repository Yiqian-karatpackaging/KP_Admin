import '../yard_managment.dart';

class YardManagmentColumn {
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


  static List<OperanceDataColumn<YardManagmentModel>> columns = [
    OperanceDataColumn<YardManagmentModel>(
      name: 'Action',
      width: OperanceDataColumnWidth(size: 20.w),
      columnHeader: Text(
        'Action',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return Center(
          child: Icon(Icons.edit, color: Colors.blue,),
        );
      },
    ),
    OperanceDataColumn<YardManagmentModel>(
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
    OperanceDataColumn<YardManagmentModel>(
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
    OperanceDataColumn<YardManagmentModel>(
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
    OperanceDataColumn<YardManagmentModel>(
      name: 'Container Item Type',
      columnHeader: Text(
        'Container Item Type',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.containerItemType,
        );
      },
    ),
    OperanceDataColumn<YardManagmentModel>(
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
    OperanceDataColumn<YardManagmentModel>(
      name: 'Yard Status',
      columnHeader: Text(
        'Yard Status',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.yardStatus,
        );
      },
    ),
    OperanceDataColumn<YardManagmentModel>(
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
    OperanceDataColumn<YardManagmentModel>(
      name: 'Receive Start',
      columnHeader: Text(
        'Receive Start',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.receiveStart,
        );
      },
    ),
    OperanceDataColumn<YardManagmentModel>(
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
    OperanceDataColumn<YardManagmentModel>(
      name: 'Duration',
      columnHeader: Text(
        'Duration',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.duration,
        );
      },
    ),
    OperanceDataColumn<YardManagmentModel>(
      name: 'Receive Start By',
      columnHeader: Text(
        'Receive Start By',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.receiveStartBy,
        );
      },
    ),
    OperanceDataColumn<YardManagmentModel>(
      name: 'First Label By',
      columnHeader: Text(
        'First Label By',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.firstLabelBy,
        );
      },
    ),
    OperanceDataColumn<YardManagmentModel>(
      name: 'Date InYard',
      columnHeader: Text(
        'Date InYard',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.dateInYard,
        );
      },
    ),
    OperanceDataColumn<YardManagmentModel>(
      name: 'InYard By',
      columnHeader: Text(
        'InYard By',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.inYardBy,
        );
      },
    ),
    OperanceDataColumn<YardManagmentModel>(
      name: 'InYard Date',
      columnHeader: Text(
        'InYard Date',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.inYardDate,
        );
      },
    ),
    OperanceDataColumn<YardManagmentModel>(
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
    OperanceDataColumn<YardManagmentModel>(
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
    OperanceDataColumn<YardManagmentModel>(
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
    OperanceDataColumn<YardManagmentModel>(
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
    OperanceDataColumn<YardManagmentModel>(
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
    OperanceDataColumn<YardManagmentModel>(
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
    OperanceDataColumn<YardManagmentModel>(
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
    OperanceDataColumn<YardManagmentModel>(
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



    OperanceDataColumn<YardManagmentModel>(
      name: 'Unloader',
      columnHeader: Text(
        'UnLoader',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.unLoader,
        );
      },
    ),
  ];
}
