import '../sp_packing_shipment_bypass.dart';

class SPPackingShipmentBypassColumn {
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

  static List<OperanceDataColumn<SPPackingShipmentBypassModel>> columns = [
    OperanceDataColumn<SPPackingShipmentBypassModel>(
      name: 'salesOrd',
      columnHeader: Text(
        'Sales Ord#',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.salesOrd,
        );
      },
    ),
    OperanceDataColumn<SPPackingShipmentBypassModel>(
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
    OperanceDataColumn<SPPackingShipmentBypassModel>(
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
    OperanceDataColumn<SPPackingShipmentBypassModel>(
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
    OperanceDataColumn<SPPackingShipmentBypassModel>(
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
    OperanceDataColumn<SPPackingShipmentBypassModel>(
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
    OperanceDataColumn<SPPackingShipmentBypassModel>(
      name: 'shipZipCode',
      columnHeader: Text(
        'Ship Zipcode',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.shipZipCode,
        );
      },
    ),
    OperanceDataColumn<SPPackingShipmentBypassModel>(
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
    OperanceDataColumn<SPPackingShipmentBypassModel>(
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
    OperanceDataColumn<SPPackingShipmentBypassModel>(
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
    OperanceDataColumn<SPPackingShipmentBypassModel>(
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
    OperanceDataColumn<SPPackingShipmentBypassModel>(
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
    OperanceDataColumn<SPPackingShipmentBypassModel>(
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
    OperanceDataColumn<SPPackingShipmentBypassModel>(
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
    OperanceDataColumn<SPPackingShipmentBypassModel>(
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
    OperanceDataColumn<SPPackingShipmentBypassModel>(
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
    OperanceDataColumn<SPPackingShipmentBypassModel>(
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
  ];
}
