import 'package:kp_admin/src/shipping/queue/queue.dart';

class QueuePageColumn {
  static TextStyle columnHeaderStyle = const TextStyle(
    fontWeight: FontWeight.bold,
  );

  static List<OperanceDataColumn<QueueModel>> columns = [
    OperanceDataColumn<QueueModel>(
      name: 'warehouse',
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
    OperanceDataColumn<QueueModel>(
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
    OperanceDataColumn<QueueModel>(
      name: 'salesOrder',
      columnHeader: Text(
        'Sales Order#',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.salesOrder,
          textColor: Colors.blueAccent,
          onTap: () {
            Navigator.pushNamed(context, '/so_pick');
          },
        );
      },
    ),
    OperanceDataColumn<QueueModel>(
      name: 'caseQTY',
      columnHeader: Text(
        'Case QTY',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.caseQTY,
        );
      },
    ),
    OperanceDataColumn<QueueModel>(
      name: 'ltlPalletQty',
      columnHeader: Text(
        'LTL Pallet Qty',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.ltlPalletQty,
        );
      },
    ),
    OperanceDataColumn<QueueModel>(
      name: 'tlPalletQty',
      columnHeader: Text(
        'TL Pallet Qty',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.tlPalletQty,
        );
      },
    ),
    OperanceDataColumn<QueueModel>(
      name: 'items',
      columnHeader: Text(
        '#Items',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.items,
        );
      },
    ),
    OperanceDataColumn<QueueModel>(
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
    OperanceDataColumn<QueueModel>(
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
    OperanceDataColumn<QueueModel>(
      name: 'shipDate',
      columnHeader: Text(
        'Ship Date',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return GestureDetector(
          onTap: () {
            PopCalendar.show(context, 'Change ship Date', 'Ship Date',
                item.shipDate.toDateTime(), (value) {
              print(value);
            });
          },
          child: BaseText(
            text: item.shipDate.toTimeStr(formatted: 'MM/dd/yyyy'),
            textColor: Colors.blue,
          ),
        );
      },
    ),
    OperanceDataColumn<QueueModel>(
      name: 'customerName',
      columnHeader: Text(
        'CustomerName',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.customerName,
        );
      },
    ),
    OperanceDataColumn<QueueModel>(
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
    OperanceDataColumn<QueueModel>(
      name: 'pickerAssignedTo',
      columnHeader: Text(
        'Picker Assigned To',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.pickerAssignedTo,
        );
      },
    ),
    OperanceDataColumn<QueueModel>(
      name: 'pickStarted',
      width: OperanceDataColumnWidth(size: 60.w),
      columnHeader: Text(
        'Pick Started',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.pickStarted.toTimeStr(formatted: 'MM/dd/yyyy hh:mm a'),
          textColor: Colors.blue,
          onTap: () {
            PopCalendar.show(context, 'Change ship Date', 'Ship Date',
                item.shipDate.toDateTime(), (value) {
              print(value);
            });
          },
        );
      },
    ),
    OperanceDataColumn<QueueModel>(
      name: 'pickStartedBy',
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
    OperanceDataColumn<QueueModel>(
      name: 'pullers',
      columnHeader: Text(
        'Pullers',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.pullers,
        );
      },
    ),
    OperanceDataColumn<QueueModel>(
      name: 'pCompleteBy',
      columnHeader: Text(
        'PComplete By',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.pCompleteBy,
        );
      },
    ),
    OperanceDataColumn<QueueModel>(
      name: 'pCompleteDate',
      columnHeader: Text(
        'PComplete Date',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.pCompleteDate,
        );
      },
    ),
    OperanceDataColumn<QueueModel>(
      name: 'pickTime',
      columnHeader: Text(
        'Pick Time',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.pickTime,
        );
      },
    ),
    OperanceDataColumn<QueueModel>(
      name: 'expectedPickTime',
      columnHeader: Text(
        'Expected Pick Time',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.expectedPickTime,
        );
      },
    ),
    OperanceDataColumn<QueueModel>(
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
    OperanceDataColumn<QueueModel>(
      name: 'auditBy',
      columnHeader: Text(
        'Audit By',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.auditBy,
        );
      },
    ),
    OperanceDataColumn<QueueModel>(
      name: 'auditDate',
      columnHeader: Text(
        'Audit Date',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.auditDate,
        );
      },
    ),
    OperanceDataColumn<QueueModel>(
      name: 'billingBy',
      columnHeader: Text(
        'Billing By',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.billingBy,
        );
      },
    ),
    OperanceDataColumn<QueueModel>(
      name: 'billingDate',
      columnHeader: Text(
        'Billing Date',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.billingDate,
        );
      },
    ),
    OperanceDataColumn<QueueModel>(
      name: 'salesShipID',
      columnHeader: Text(
        'Sales ShipID',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.salesShipID,
        );
      },
    ),
    OperanceDataColumn<QueueModel>(
      name: 'invoice',
      columnHeader: Text(
        'Invoice',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.invoice,
        );
      },
    ),
    OperanceDataColumn<QueueModel>(
      name: 'loaderAssignTo',
      columnHeader: Text(
        'Loader Assign To',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.loaderAssignTo,
        );
      },
    ),
    OperanceDataColumn<QueueModel>(
      name: 'totalCube',
      columnHeader: Text(
        'Total Cube',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.totalCube,
        );
      },
    ),
    OperanceDataColumn<QueueModel>(
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
    OperanceDataColumn<QueueModel>(
      name: 'shipAddress',
      width: OperanceDataColumnWidth(size: 80.w),
      columnHeader: Text(
        'Ship Address',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.shipAddress,
        );
      },
    ),
    OperanceDataColumn<QueueModel>(
      name: 'shipAddress1',
      width: OperanceDataColumnWidth(size: 80.w),
      columnHeader: Text(
        'Ship Address1',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.shipAddress1,
        );
      },
    ),
    OperanceDataColumn<QueueModel>(
      name: 'shipAddress2',
      width: OperanceDataColumnWidth(size: 80.w),
      columnHeader: Text(
        'Ship Address2',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.shipAddress2,
        );
      },
    ),
    OperanceDataColumn<QueueModel>(
      name: 'shipCity',
      columnHeader: Text(
        'Ship City',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.shipCity,
        );
      },
    ),
    OperanceDataColumn<QueueModel>(
      name: 'shipState',
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
    OperanceDataColumn<QueueModel>(
      name: 'shipZipCode',
      columnHeader: Text(
        'Ship Zip',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.shipZipCode,
        );
      },
    ),
    OperanceDataColumn<QueueModel>(
      name: 'committedBy',
      columnHeader: Text(
        'Committed By',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.committedBy,
        );
      },
    ),
    OperanceDataColumn<QueueModel>(
      name: 'committedDate',
      columnHeader: Text(
        'Committed Date',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.committedDate,
        );
      },
    ),
    OperanceDataColumn<QueueModel>(
      name: 'truckNo',
      columnHeader: Text(
        'Truck No',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.truckNo,
        );
      },
    ),
    OperanceDataColumn<QueueModel>(
      name: 'routeStop',
      columnHeader: Text(
        'Route Stop',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.routeStop,
        );
      },
    ),
  ];
}
