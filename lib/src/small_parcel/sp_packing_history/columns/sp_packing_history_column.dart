import '../sp_packing_history.dart';

class SPPackingHistoryColumn {
  static TextStyle columnHeaderStyle = const TextStyle(
    fontWeight: FontWeight.bold,
  );

  static List<List<String>> data = [
    [
      "",
      "2258017",
      "10.0000.026",
      "TeaZone Popping Pearls GOURMET-Series Chocolate (7.0lb jar) [B2071]",
      "4",
      "24559",
      "1",
      "Harley",
      "10/24/2024 8:40 PM",
      "4582",
      "24559",
      "003-005A",
      "",
      "",
      "B2071",
      "28",
      "",
      "",
      "CA",
      "",
      "",
      "0",
      "",
      "",
      "",
      "",
      "OOCU7791136:50094",
      "",
      ""
    ]
  ];

  static List<OperanceDataColumn<SPPackingHistoryModel>> columns = [
    OperanceDataColumn<SPPackingHistoryModel>(
      name: 'detail',
      columnHeader: Text(
        'Detail',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.action,
        );
      },
    ),
    OperanceDataColumn<SPPackingHistoryModel>(
      name: 'salesOrd',
      columnHeader: Text(
        'Sales Ord#',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.salesOrd,
          textColor: Colors.blue,
        );
      },
    ),
    OperanceDataColumn<SPPackingHistoryModel>(
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
    OperanceDataColumn<SPPackingHistoryModel>(
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
    OperanceDataColumn<SPPackingHistoryModel>(
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
    OperanceDataColumn<SPPackingHistoryModel>(
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
    OperanceDataColumn<SPPackingHistoryModel>(
      name: 'shipToAddress',
      columnHeader: Text(
        'Ship To Address',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.shipToAddress,
        );
      },
    ),
    OperanceDataColumn<SPPackingHistoryModel>(
      name: 'shipZipcode',
      columnHeader: Text(
        'Ship Zipcode',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.shipZipcode,
        );
      },
    ),
    OperanceDataColumn<SPPackingHistoryModel>(
      name: 'carrier',
      columnHeader: Text(
        'Carrier',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.carrier,
        );
      },
    ),
    OperanceDataColumn<SPPackingHistoryModel>(
      name: 'boxType',
      columnHeader: Text(
        'Box Type',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.boxType,
        );
      },
    ),
    OperanceDataColumn<SPPackingHistoryModel>(
      name: 'weight',
      columnHeader: Text(
        'Weight',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.weight,
        );
      },
    ),
    OperanceDataColumn<SPPackingHistoryModel>(
      name: 'trackNo',
      columnHeader: Text(
        'Track No',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.trackNo,
        );
      },
    ),
    OperanceDataColumn<SPPackingHistoryModel>(
      name: 'rate',
      columnHeader: Text(
        'Rate',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.rate,
        );
      },
    ),
    OperanceDataColumn<SPPackingHistoryModel>(
      name: 'signatureCost',
      columnHeader: Text(
        'Signature Cost',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.signatureCost,
        );
      },
    ),
    OperanceDataColumn<SPPackingHistoryModel>(
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
    OperanceDataColumn<SPPackingHistoryModel>(
      name: 'pickUpDate',
      columnHeader: Text(
        'PickUp Date',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.pickUpDate,
        );
      },
    ),
    OperanceDataColumn<SPPackingHistoryModel>(
      name: 'deliveryDate',
      columnHeader: Text(
        'Delivery Date',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.deliveryDate,
        );
      },
    ),
    OperanceDataColumn<SPPackingHistoryModel>(
      name: 'kpPage',
      columnHeader: Text(
        'KP Page',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
            text: item.kpPage
        );
      },
    ),
    OperanceDataColumn<SPPackingHistoryModel>(
      name: 'packStartBy',
      columnHeader: Text(
        'PackStart By',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.packStartBy,
        );
      },
    ),
    OperanceDataColumn<SPPackingHistoryModel>(
      name: 'packStartDate',
      width: OperanceDataColumnWidth(size: 60.w),
      columnHeader: Text(
        'PackStart Date',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.packStartDate,
        );
      },
    ),
    OperanceDataColumn<SPPackingHistoryModel>(
      name: 'duration',
      width: OperanceDataColumnWidth(size: 60.w),
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
    OperanceDataColumn<SPPackingHistoryModel>(
      name: 'fulfillmentBy',
      width: OperanceDataColumnWidth(size: 60.w),
      columnHeader: Text(
        'Fulfillment By',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.fulfillmentBy,
        );
      },
    ),
    OperanceDataColumn<SPPackingHistoryModel>(
      name: 'fulfillmentDate',
      width: OperanceDataColumnWidth(size: 60.w),
      columnHeader: Text(
        'Fulfillment Date',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.fulfillmentDate,
        );
      },
    ),
    OperanceDataColumn<SPPackingHistoryModel>(
      name: 'reshipment',
      width: OperanceDataColumnWidth(size: 60.w),
      columnHeader: Text(
        'Reshipment#',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.reshipment,
        );
      },
    ),
    OperanceDataColumn<SPPackingHistoryModel>(
      name: 'length',
      width: OperanceDataColumnWidth(size: 60.w),
      columnHeader: Text(
        'Length',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.length,
        );
      },
    ),
    OperanceDataColumn<SPPackingHistoryModel>(
      name: 'width',
      width: OperanceDataColumnWidth(size: 60.w),
      columnHeader: Text(
        'Width',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.width,
        );
      },
    ),
    OperanceDataColumn<SPPackingHistoryModel>(
      name: 'height',
      width: OperanceDataColumnWidth(size: 60.w),
      columnHeader: Text(
        'Height',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.height,
        );
      },
    ),
    OperanceDataColumn<SPPackingHistoryModel>(
      name: 'action',
      width: OperanceDataColumnWidth(size: 60.w),
      columnHeader: Text(
        'Action',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.action,
        );
      },
    ),
  ];
}
