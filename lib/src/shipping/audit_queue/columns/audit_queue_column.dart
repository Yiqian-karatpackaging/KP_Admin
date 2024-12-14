import 'package:kp_admin/src/shipping/audit_queue/audit_queue.dart';

class AuditQueueColumn {
  static TextStyle columnHeaderStyle = const TextStyle(
    fontWeight: FontWeight.bold,
  );

  static List<List<String>> data = [
    [
      "89a83416-04b5-4e28-8089-9f97486f25b9",
      "12883512",
      "CA",
      "5",
      "PendingAudit",
      "10/24/2024 12:00 AM",
      "Test Account By Vincent (Customer)",
      "DEL_Standard",
      "",
      "10/24/2024 8:21 PM",
      "shiso",
      "10/24/2024 8:22 PM",
      "shiso",
      "00:01",
      "",
      "",
      "",
      "",
      "",
      "",
      "",
      "",
      "",
      "5",
      "300",
      "60",
      "Harley"
    ],
    [
      "b732f682-ee30-40b6-84c0-b12b04ee9e76",
      "12887685",
      "CA",
      "5",
      "PendingAudit",
      "10/30/2024 12:00 AM",
      "SYSCO Corporation",
      "DEL_Sales Rep",
      "",
      "10/30/2024 1:39 AM",
      "shiso",
      "10/30/2024 1:47 AM",
      "shiso",
      "00:08",
      "",
      "",
      "",
      "",
      "",
      "",
      "",
      "",
      "",
      "1",
      "300",
      "12",
      "shiso"
    ],
    [
      "ca9d1edf-bbd2-44d1-9e54-7226aa2b46b8",
      "12874487",
      "CA",
      "5",
      "PendingAudit",
      "10/16/2024 12:00 AM",
      "Test Account By Vincent (Customer)",
      "DEL_Standard",
      "",
      "10/9/2024 5:29 PM",
      "Vincent.Wu",
      "10/24/2024 2:31 PM",
      "Vincent.Wu",
      "21:02",
      "shiso",
      "10/30/2024 1:43 AM",
      "",
      "",
      "",
      "",
      "RoleTester",
      "10/16/2024 11:27 AM",
      "",
      "1",
      "300",
      "12",
      ""
    ]
  ];

  static final OperanceDataColumnWidth _dateWidth =
      OperanceDataColumnWidth(size: 60.w);

  static List<OperanceDataColumn<AuditQueueModel>> columns = [
    OperanceDataColumn<AuditQueueModel>(
      name: 'wh',
      columnHeader: Text(
        'WH',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.wh,
        );
      },
    ),
    OperanceDataColumn<AuditQueueModel>(
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
    OperanceDataColumn<AuditQueueModel>(
      name: 'so',
      //sortable: true,
      columnHeader: Text(
        'SO#',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.so,
          textColor: Colors.blue,
          onTap: () {
            Navigator.pushNamed(context, '/audit');
          },
        );
      },
    ),
    OperanceDataColumn<AuditQueueModel>(
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
    OperanceDataColumn<AuditQueueModel>(
      name: 'shipDate',
      width: _dateWidth,
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
    OperanceDataColumn<AuditQueueModel>(
      name: 'customerName',
      width: OperanceDataColumnWidth(size: 100.w),
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
    OperanceDataColumn<AuditQueueModel>(
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
    OperanceDataColumn<AuditQueueModel>(
      name: 'auditAssignedTo',
      columnHeader: Text(
        'Audit AssignedTo',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.auditAssignedTo,
        );
      },
    ),
    OperanceDataColumn<AuditQueueModel>(
      name: 'pickStarted',
      width: _dateWidth,
      columnHeader: Text(
        'Pick Started',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.pickStarted,
        );
      },
    ),
    OperanceDataColumn<AuditQueueModel>(
      name: 'pickStartedBy',
      //sortable: true,
      columnHeader: Text(
        'Pick Started By',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.pickStartedBy,
        );
      },
    ),
    OperanceDataColumn<AuditQueueModel>(
      name: 'pCompletedBy',
      columnHeader: Text(
        'PCompleted By',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.pCompletedBy,
        );
      },
    ),
    OperanceDataColumn<AuditQueueModel>(
      name: 'pCompletedDate',
      width: _dateWidth,
      columnHeader: Text(
        'PCompleted Date',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.pCompletedDate,
        );
      },
    ),
    OperanceDataColumn<AuditQueueModel>(
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
    OperanceDataColumn<AuditQueueModel>(
      name: 'auditStartedBy',
      columnHeader: Text(
        'Audit Started By',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.auditStartedBy,
        );
      },
    ),
    OperanceDataColumn<AuditQueueModel>(
      name: 'auditors',
      columnHeader: Text(
        'Auditors',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.auditors,
        );
      },
    ),
    OperanceDataColumn<AuditQueueModel>(
      name: 'auditStartDate',
      width: _dateWidth,
      columnHeader: Text(
        'Audit Start Date',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.auditStartDate,
          textColor: Colors.blue,
          onTap: () {
            CustomAlertDialog.centerDialog(
              context,
              // title: 'Delete Account',
              body: 'You are about to delete AuditStartDate. Are you sure?',
              // okCallback: () => _onDeleteAccount(),
            );
          },
        );
      },
    ),
    OperanceDataColumn<AuditQueueModel>(
      name: 'fulFillmentBy',
      columnHeader: Text(
        'FulFillment By',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.fulFillmentBy,
        );
      },
    ),
    OperanceDataColumn<AuditQueueModel>(
      name: 'fulFillmentDate',
      width: _dateWidth,
      columnHeader: Text(
        'FulFillment Date',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.fulFillmentDate,
        );
      },
    ),
    OperanceDataColumn<AuditQueueModel>(
      name: 'auditEndBy',
      columnHeader: Text(
        'Audit End By',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.auditEndBy,
        );
      },
    ),
    OperanceDataColumn<AuditQueueModel>(
      name: 'auditEndDate',
      columnHeader: Text(
        'Audit End Date',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.auditEndDate,
        );
      },
    ),
  ];
}
