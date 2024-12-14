import 'package:kp_admin/src/shipping/staged_pallets/staged_pallets.dart';

class StagedPalletsColumn {
  static TextStyle columnHeaderStyle = const TextStyle(
    fontWeight: FontWeight.bold,
  );

  static List<List<String>> data = [
    [
      "12874487",
      "CA",
      "24681",
      "Staged",
      "",
      "",
      "1/1/0001 12:00 AM",
      "",
      "",
      "",
      "",
      "0",
      "",
      "",
      "shiso",
      "11/16/2024 2:03 AM",
      "",
      "",
      "DEL_Standard",
      "",
      "",
      "",
      "a45ecb81-79d3-4bbe-a320-9384054100e8",
      "76i",
      "Test Account By Vincent (Customer)",
      "",
      "",
      "",
      "",
      "",
      "",
      ""
    ],
    [
      "12883512",
      "CA",
      "24559",
      "Staged",
      "",
      "",
      "1/1/0001 12:00 AM",
      "",
      "",
      "",
      "",
      "0",
      "",
      "",
      "shiso",
      "11/19/2024 1:26 AM",
      "",
      "",
      "DEL_Standard",
      "",
      "",
      "",
      "11d9e969-be89-4328-8a69-e958ac66dce7",
      "1234",
      "Test Account By Vincent (Customer)",
      "",
      "",
      "",
      "",
      "",
      "",
      ""
    ],
    [
      "12887685",
      "CA",
      "24683",
      "Staged",
      "",
      "",
      "1/1/0001 12:00 AM",
      "",
      "",
      "",
      "",
      "0",
      "001-001E",
      "",
      "yiqian",
      "11/20/2024 10:26 PM",
      "",
      "",
      "DEL_Sales Rep",
      "",
      "",
      "",
      "45afed94-1a6e-4e75-b569-98ed8957a554",
      "4000000149447",
      "SYSCO Corporation",
      "",
      "",
      "",
      "",
      "",
      "",
      ""
    ],
    [
      "12908610",
      "CA",
      "24682",
      "Staged",
      "",
      "",
      "1/1/0001 12:00 AM",
      "",
      "",
      "",
      "",
      "0",
      "TEST BIN 2",
      "",
      "shiso",
      "11/20/2024 1:13 AM",
      "",
      "",
      "WC_Will Call_Warehouse",
      "",
      "",
      "",
      "a4e2a544-c67e-478e-80a9-58dd62ebe6c5",
      "4000000234654",
      "LollicupStore - Shopify",
      "",
      "",
      "",
      "",
      "",
      "",
      ""
    ]
  ];

  static List<OperanceDataColumn<StagedPalletsModel>> columns = [
    OperanceDataColumn<StagedPalletsModel>(
      name: 'action',
      columnHeader: Text(
        'Action',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return GestureDetector(
          onTap: () {},
          child: const Icon(
            Icons.edit,
            color: Colors.blue,
          ),
        );
      },
    ),
    OperanceDataColumn<StagedPalletsModel>(
      name: 'SOCode',
      columnHeader: Text(
        'SO Code',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.soCode,
          textColor: Colors.blue,
          onTap: () {},
        );
      },
    ),
    OperanceDataColumn<StagedPalletsModel>(
      name: 'route',
      width: OperanceDataColumnWidth(size: 60.w),
      columnHeader: Text(
        'Route',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.route,
        );
      },
    ),
    OperanceDataColumn<StagedPalletsModel>(
      name: 'po',
      columnHeader: Text(
        'PO',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.po,
        );
      },
    ),
    OperanceDataColumn<StagedPalletsModel>(
      name: 'customer',
      width: OperanceDataColumnWidth(size: 100.w),
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
    OperanceDataColumn<StagedPalletsModel>(
      name: 'dock',
      columnHeader: Text(
        'Dock',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return GestureDetector(
          onTap: () {},
          child: BaseText(
            text: item.dock,
          ),
        );
      },
    ),
    OperanceDataColumn<StagedPalletsModel>(
      name: 'wareHouse',
      columnHeader: Text(
        'WH',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.wareHouse,
        );
      },
    ),
    OperanceDataColumn<StagedPalletsModel>(
      name: 'palletID',
      columnHeader: Text(
        'Pallet ID',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.palletID,
        );
      },
    ),
    OperanceDataColumn<StagedPalletsModel>(
      name: 'status',
      columnHeader: Text(
        'Status',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(text: item.status);
      },
    ),
    OperanceDataColumn<StagedPalletsModel>(
      name: 'stagedBin',
      columnHeader: Text(
        'Staged Bin',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.stagedBin,
        );
      },
    ),
    OperanceDataColumn<StagedPalletsModel>(
      name: 'truckBin',
      columnHeader: Text(
        'Truck Bin',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.truckBin,
        );
      },
    ),
    OperanceDataColumn<StagedPalletsModel>(
      name: 'stagedDate',
      columnHeader: Text(
        'Staged Date',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.stagedDate,
        );
      },
    ),
    OperanceDataColumn<StagedPalletsModel>(
      name: 'stagedUser',
      columnHeader: Text(
        'Staged User',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(text: item.stagedUser);
      },
    ),
    OperanceDataColumn<StagedPalletsModel>(
      name: 'loadedBy',
      columnHeader: Text(
        'Loaded By',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.loadedBy,
        );
      },
    ),
    OperanceDataColumn<StagedPalletsModel>(
      name: 'loadedDate',
      columnHeader: Text(
        'Loaded Date',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.loadedDate,
        );
      },
    ),
    OperanceDataColumn<StagedPalletsModel>(
      name: 'shipVia',
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
    OperanceDataColumn<StagedPalletsModel>(
      name: 'appointTime',
      columnHeader: Text(
        'Appoint Time',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(text: item.appointTime);
      },
    ),
    OperanceDataColumn<StagedPalletsModel>(
      name: 'priority',
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
    OperanceDataColumn<StagedPalletsModel>(
      name: 'assignLoader',
      columnHeader: Text(
        'Assign Loader',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.assignLoader,
        );
      },
    ),
  ];
}
