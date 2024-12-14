import 'package:kp_admin/common/utils/utils.dart';
import 'package:kp_admin/src/shipping/audit_history/audit_history.dart';

class AuditHistoryColumns {
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

  static final OperanceDataColumnWidth _dateWidth =
      OperanceDataColumnWidth(size: 60.w);

  static List<OperanceDataColumn<AuditHistoryModel>> columns = [
    OperanceDataColumn<AuditHistoryModel>(
      name: 'auditResult',
      columnHeader: Text(
        'Audit Result',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.auditResult,
        );
      },
    ),
    OperanceDataColumn<AuditHistoryModel>(
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
    OperanceDataColumn<AuditHistoryModel>(
      name: 'order',
      columnHeader: Text(
        'Order#',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.order,
        );
      },
    ),
    OperanceDataColumn<AuditHistoryModel>(
      name: 'orderType',
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
    OperanceDataColumn<AuditHistoryModel>(
      name: 'shipDate',
      columnHeader: Text(
        'Ship Date',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.shipDate.toTimeStr(formatted: 'MM/dd/yyyy'),
          textColor: Colors.blue,
          onTap: () {},
        );
      },
    ),
    OperanceDataColumn<AuditHistoryModel>(
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
    OperanceDataColumn<AuditHistoryModel>(
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
    OperanceDataColumn<AuditHistoryModel>(
      name: 'orderStatus',
      //sortable: true,
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
    OperanceDataColumn<AuditHistoryModel>(
      name: 'shipState',
      //sortable: true,
      columnHeader: Text(
        'Ship State',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.shipState,
        );
      },
    ),
    OperanceDataColumn<AuditHistoryModel>(
      name: 'totalQty',
      //sortable: true,
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
    OperanceDataColumn<AuditHistoryModel>(
      name: 'duration',
      //sortable: true,
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
    OperanceDataColumn<AuditHistoryModel>(
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
    OperanceDataColumn<AuditHistoryModel>(
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
            // CustomAlertDialog.centerDialog(context,
            //   // title: 'Delete Account',
            //   body: 'You are about to delete AuditStartDate. Are you sure?',
            //   // okCallback: () => _onDeleteAccount(),
            // );
          },
        );
      },
    ),
    OperanceDataColumn<AuditHistoryModel>(
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
    OperanceDataColumn<AuditHistoryModel>(
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
    OperanceDataColumn<AuditHistoryModel>(
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
    OperanceDataColumn<AuditHistoryModel>(
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
    OperanceDataColumn<AuditHistoryModel>(
      name: 'pickUpDateAppointment',
      columnHeader: Text(
        'Pick Up Date Appointment',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.pickUpDateAppointment,
        );
      },
    ),
  ];
}
