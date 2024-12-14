import 'package:kp_admin/src/shipping/so_fulfill_history/so_fulfill_history.dart';

class SOFulfillHistoryColumn {
  static TextStyle columnHeaderStyle = const TextStyle(
    fontWeight: FontWeight.bold,
  );

  static List<List<dynamic>> data = [
    [
      "",
      "CA",
      "12907850",
      "11/19/2024 1:07 AM",
      "shiso",
      "31.31",
      "1",
      "1",
      "11/19/2024 12:00:00 AM",
      "SP_UPS Ground",
      "Christina Deere\nChristina Deere\n(+1)5188335539\n119 Dunsbach Ferry Rd\nCohoes NY 12047\nUnited States",
      "TikTok Shop",
      "PendingAudit",
      "NY",
      "30a62310-4367-4099-bb46-47283c8a181f",
      "19042196",
      "11/19/2024 1:12 AM",
      "",
      "",
      "1",
      "11/17/2024 12:00 AM",
      "0",
      "E-BIZ TIKTOK",
      "",
      "",
      "0",
      "Nov 19 2024  1:12AM",
      "",
      "",
      "",
      "",
      "00:03:00",
      false,
      "11/19/2024 12:00 AM"
    ],
    [
      "",
      "CA",
      "12874997",
      "11/19/2024 11:22 AM",
      "adam.hsia",
      "190.98",
      "1",
      "5",
      "10/18/2024 12:00:00 AM",
      "SP_GLS Ground",
      "Vincent \nTest Account By Vincent\n626-965-8882\n200 N Spring St\nLos Angeles CA 90012\nUnited States",
      "Test Account By Vincent (Customer)",
      "PendingAudit",
      "CA",
      "1676d22d-4c3e-4b5b-8309-ccb42c445899",
      "18764808",
      "11/19/2024 11:22 AM",
      "",
      "",
      "0",
      "10/15/2024 12:00 AM",
      "0",
      "Vincent M Wu",
      "",
      "",
      "5",
      "Nov 19 2024 11:22AM",
      "",
      "",
      "",
      "",
      "00:03:00",
      false,
      "10/18/2024 12:00 AM"
    ],
    [
      "",
      "CA",
      "12908030",
      "11/19/2024 11:23 AM",
      "adam.hsia",
      "6122.87",
      "10",
      "239",
      "11/21/2024 12:00:00 AM",
      "DEL_Standard",
      "Joanne Chai\r\nEvergreen Enterprise, Inc.\r\n200 Greenfield Center Drive\r\nOklahoma City OK 73127\r\nUnited States",
      "Evergreen Enterprise, Inc.",
      "partiallyFulfilled",
      "OK",
      "13bbf0e4-b403-47f6-a698-f8ef9a9ffc64",
      "19045095",
      "11/19/2024 11:23 AM",
      "",
      "",
      "0",
      "11/19/2024 12:00 AM",
      "0",
      "Ricky Yung-Sheng Fu",
      "",
      "",
      "239",
      "Nov 19 2024 11:23AM",
      "",
      "",
      "",
      "",
      "00:30:00",
      false,
      "11/21/2024 12:00 AM"
    ],
    [
      "",
      "CA",
      "12908610",
      "11/20/2024 1:07 AM",
      "shiso",
      "97.9",
      "1",
      "5",
      "11/20/2024 12:00:00 AM",
      "WC_Will Call_Warehouse",
      "CA Warehouse (apptca@karatpackaging.com)\nCHARLES CHANG\n+1 909-979-1896\n6185 Kimball Avenue\nChino CA 91708\nUnited States",
      "LollicupStore - Shopify",
      "Billed",
      "CA",
      "497ad111-eb81-4a3a-b2e4-1ac47c68cdcb",
      "19051710",
      "11/20/2024 1:13 AM",
      "",
      "123",
      "5",
      "11/19/2024 12:00 AM",
      "0",
      "E-BIZ SHOP",
      "",
      "",
      "0",
      "Nov 20 2024  1:13AM",
      "",
      "",
      "",
      "00:02:03",
      "00:03:00",
      false,
      "11/20/2024 12:00 AM"
    ]
  ];

  static List<OperanceDataColumn<SoFulfillHistoryModel>> columns(
      Function callBack) {
    return [
      OperanceDataColumn<SoFulfillHistoryModel>(
        name: 'loc',
        columnHeader: Text(
          'Loc',
          style: columnHeaderStyle,
        ),
        cellBuilder: (context, item) {
          return BaseText(text: item.loc);
        },
      ),
      OperanceDataColumn<SoFulfillHistoryModel>(
        name: 'salesOrd',
        columnHeader: Text(
          'Sales Ord#',
          style: columnHeaderStyle,
        ),
        cellBuilder: (context, item) {
          return GestureDetector(
            onTap: () => callBack('salesOrd', item),
            child: BaseText(
              text: item.salesOrd,
              textColor: Colors.blue,
            ),
          );
        },
      ),
      OperanceDataColumn<SoFulfillHistoryModel>(
        name: 'pickStarted',
        columnHeader: Text(
          'Pick Started',
          style: columnHeaderStyle,
        ),
        cellBuilder: (context, item) {
          return BaseText(text: item.pickStarted);
        },
      ),
      OperanceDataColumn<SoFulfillHistoryModel>(
        name: 'pickEnded',
        columnHeader: Text(
          'Pick Ended',
          style: columnHeaderStyle,
        ),
        cellBuilder: (context, item) {
          return BaseText(
            text: item.pickEnded,
          );
        },
      ),
      OperanceDataColumn<SoFulfillHistoryModel>(
        name: 'kpiPar',
        columnHeader: Text(
          'KPI Par',
          style: columnHeaderStyle,
        ),
        cellBuilder: (context, item) {
          return BaseText(
            text: item.kpiPar,
          );
        },
      ),
      OperanceDataColumn<SoFulfillHistoryModel>(
        name: 'duration',
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
      OperanceDataColumn<SoFulfillHistoryModel>(
        name: 'pauseTimes',
        columnHeader: Text(
          'Pause Times',
          style: columnHeaderStyle,
        ),
        cellBuilder: (context, item) {
          return BaseText(
            text: item.pauseTimes,
          );
        },
      ),
      OperanceDataColumn<SoFulfillHistoryModel>(
        name: 'pickStartedBy',
        columnHeader: Text(
          'Pick Started By',
          style: columnHeaderStyle,
        ),
        cellBuilder: (context, item) {
          return BaseText(text: item.pickStartedBy);
        },
      ),
      OperanceDataColumn<SoFulfillHistoryModel>(
        name: 'shipDate',
        columnHeader: Text(
          'Ship Date',
          style: columnHeaderStyle,
        ),
        cellBuilder: (context, item) {
          return BaseText(text: item.shipDate);
        },
      ),
      OperanceDataColumn<SoFulfillHistoryModel>(
        name: 'items',
        columnHeader: Text(
          '#Items',
          style: columnHeaderStyle,
        ),
        cellBuilder: (context, item) {
          return BaseText(text: item.items);
        },
      ),
      OperanceDataColumn<SoFulfillHistoryModel>(
        name: 'totalQty',
        columnHeader: Text(
          'Total Qty',
          style: columnHeaderStyle,
        ),
        cellBuilder: (context, item) {
          return BaseText(
            text: item.totalQty,
          );
        },
      ),
      OperanceDataColumn<SoFulfillHistoryModel>(
        name: 'totalWeight',
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
      OperanceDataColumn<SoFulfillHistoryModel>(
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
      OperanceDataColumn<SoFulfillHistoryModel>(
        name: 'customerName',
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
      OperanceDataColumn<SoFulfillHistoryModel>(
        name: 'orderStatus',
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
    ];
  }
}
