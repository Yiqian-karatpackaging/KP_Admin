import '../sp_packing_queue.dart';

class SPPackingQueueColumn {
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

  static const _width = OperanceDataColumnWidth(factor: 1 / 8);

  static List<OperanceDataColumn<SPPackingQueueModel>> columns = [
    OperanceDataColumn<SPPackingQueueModel>(
      name: 'salesOrd',
      width: _width,
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
    OperanceDataColumn<SPPackingQueueModel>(
      name: 'bp',
      width: _width,
      columnHeader: Text(
        'BP#',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.bp,
        );
      },
    ),
    OperanceDataColumn<SPPackingQueueModel>(
      name: 'pCompletedDate',
      width: _width,
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
    OperanceDataColumn<SPPackingQueueModel>(
      name: 'po',
      width: _width,
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
    OperanceDataColumn<SPPackingQueueModel>(
      name: 'customerName',
      width: _width,
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
    OperanceDataColumn<SPPackingQueueModel>(
      name: 'warehouse',
      width: _width,
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
    OperanceDataColumn<SPPackingQueueModel>(
      name: 'orderStatus',
      width: _width,
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
    OperanceDataColumn<SPPackingQueueModel>(
      name: 'shipToAddress',
      width: _width,
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
  ];
}
