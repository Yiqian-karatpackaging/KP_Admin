import '../sales_sample_history.dart';

class SalesSampleHistoryColumn {
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

  static List<OperanceDataColumn<SalesSampleHistoryModel>> columns = [
    OperanceDataColumn<SalesSampleHistoryModel>(
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
    OperanceDataColumn<SalesSampleHistoryModel>(
      name: 'invoice',
      columnHeader: Text(
        'Invoice#',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.invoice,
        );
      },
    ),
    OperanceDataColumn<SalesSampleHistoryModel>(
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
    OperanceDataColumn<SalesSampleHistoryModel>(
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
    OperanceDataColumn<SalesSampleHistoryModel>(
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
    OperanceDataColumn<SalesSampleHistoryModel>(
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
    OperanceDataColumn<SalesSampleHistoryModel>(
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
    OperanceDataColumn<SalesSampleHistoryModel>(
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
    OperanceDataColumn<SalesSampleHistoryModel>(
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
    OperanceDataColumn<SalesSampleHistoryModel>(
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
    OperanceDataColumn<SalesSampleHistoryModel>(
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
    OperanceDataColumn<SalesSampleHistoryModel>(
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
    OperanceDataColumn<SalesSampleHistoryModel>(
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
    OperanceDataColumn<SalesSampleHistoryModel>(
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
    OperanceDataColumn<SalesSampleHistoryModel>(
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
    OperanceDataColumn<SalesSampleHistoryModel>(
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
    OperanceDataColumn<SalesSampleHistoryModel>(
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
    OperanceDataColumn<SalesSampleHistoryModel>(
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
  ];
}
