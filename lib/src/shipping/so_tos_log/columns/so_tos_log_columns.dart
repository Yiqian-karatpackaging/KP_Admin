import 'package:kp_admin/src/shipping/so_tos_log/so_tos_log.dart';

class SOTOSLogColumns {
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

  static List<OperanceDataColumn<SOTOSLogModel>> columns = [
    OperanceDataColumn<SOTOSLogModel>(
      name: 'SOCode',
      columnHeader: Text(
        'SO Code',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.soCode,
        );
      },
    ),
    OperanceDataColumn<SOTOSLogModel>(
      name: 'status',
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
    OperanceDataColumn<SOTOSLogModel>(
      name: 'wareHouse',
      columnHeader: Text(
        'WareHouse',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.wareHouse,
        );
      },
    ),
    OperanceDataColumn<SOTOSLogModel>(
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
    OperanceDataColumn<SOTOSLogModel>(
      name: 'salesRep',
      columnHeader: Text(
        'Sales Rep',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return GestureDetector(
          onTap: () {},
          child: BaseText(
            text: item.salesRep,
          ),
        );
      },
    ),
    OperanceDataColumn<SOTOSLogModel>(
      name: 'itemCode',
      columnHeader: Text(
        'Item Code',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.itemCode,
          textColor: Colors.blue,
          onTap: () {
            // List<ItemCodeModel> _orderData = [];
            // ItemCodeColumn.data.forEach((element) {
            //   final data = ItemCodeModel.fromJson(element);
            //   _orderData.add(data);
            // });
            // PopTable.show<ItemCodeModel>(context, '', _orderData, ItemCodeColumn.column);
          },
        );
      },
    ),
    OperanceDataColumn<SOTOSLogModel>(
      name: 'legacyItem',
      columnHeader: Text(
        'Legacy Item',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.legacyItem,
        );
      },
    ),
    OperanceDataColumn<SOTOSLogModel>(
      name: 'ordQty',
      columnHeader: Text(
        'Ord Qty',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.ordQty,
        );
      },
    ),
    OperanceDataColumn<SOTOSLogModel>(
      name: 'amount',
      columnHeader: Text(
        'Amount',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.amount,
        );
      },
    ),
    OperanceDataColumn<SOTOSLogModel>(
      name: 'pickQty',
      columnHeader: Text(
        'Pick Qty',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.pickQty,
        );
      },
    ),
    OperanceDataColumn<SOTOSLogModel>(
      name: 'auditQty',
      columnHeader: Text(
        'Audit Qty',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.auditQty,
        );
      },
    ),
    OperanceDataColumn<SOTOSLogModel>(
      name: 'lpnQty',
      columnHeader: Text(
        'LPN Qty',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.lpnQty,
        );
      },
    ),
    OperanceDataColumn<SOTOSLogModel>(
      name: 'onHandQty',
      columnHeader: Text(
        'OnHand Qty',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.filledQty,
        );
      },
    ),
    OperanceDataColumn<SOTOSLogModel>(
      name: 'countQty',
      columnHeader: Text(
        'Count Qty',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.countQty,
        );
      },
    ),
    OperanceDataColumn<SOTOSLogModel>(
      name: 'onOrderQty',
      columnHeader: Text(
        'OnOrder Qty',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.onOrderQty,
        );
      },
    ),
    OperanceDataColumn<SOTOSLogModel>(
      name: 'adjustQty',
      columnHeader: Text(
        'Adjust Qty',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.adjustQty,
        );
      },
    ),
    OperanceDataColumn<SOTOSLogModel>(
      name: 'createDate',
      width: OperanceDataColumnWidth(size: 60.w),
      columnHeader: Text(
        'Create Date',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.createDate,
        );
      },
    ),
    OperanceDataColumn<SOTOSLogModel>(
      name: 'shipDate',
      columnHeader: Text(
        'Ship Date',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.shipDate,
          onTap: () {},
        );
      },
    ),
    OperanceDataColumn<SOTOSLogModel>(
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
    OperanceDataColumn<SOTOSLogModel>(
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
    OperanceDataColumn<SOTOSLogModel>(
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
    OperanceDataColumn<SOTOSLogModel>(
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
    OperanceDataColumn<SOTOSLogModel>(
      name: 'auditStartDate',
      width: _dateWidth,
      columnHeader: Text(
        'Audit Start Date',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.auditStartDate,
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
    OperanceDataColumn<SOTOSLogModel>(
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
    OperanceDataColumn<SOTOSLogModel>(
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
    OperanceDataColumn<SOTOSLogModel>(
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
    OperanceDataColumn<SOTOSLogModel>(
      name: 'whCheckerNotes',
      columnHeader: Text(
        'WH Checker Notes',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.whCheckerNotes,
        );
      },
    ),
  ];
}
