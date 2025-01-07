import '../freight_view_history.dart';

class FreightViewHistoryColumn {
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


  static List<OperanceDataColumn<FreightViewHistoryModel>> columns = [
    OperanceDataColumn<FreightViewHistoryModel>(
      name: 'Action',
      columnHeader: Text(
        'Action',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: '',
        );
      },
    ),
    OperanceDataColumn<FreightViewHistoryModel>(
      name: 'WH',
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
    OperanceDataColumn<FreightViewHistoryModel>(
      name: 'SO#',
      columnHeader: Text(
        'SO#',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.so,
        );
      },
    ),
    OperanceDataColumn<FreightViewHistoryModel>(
      name: 'Type',
      columnHeader: Text(
        'Type',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.type,
        );
      },
    ),
    OperanceDataColumn<FreightViewHistoryModel>(
      name: 'Carrier',
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
    OperanceDataColumn<FreightViewHistoryModel>(
      name: 'Ship Date',
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
    OperanceDataColumn<FreightViewHistoryModel>(
      name: 'Cost',
      columnHeader: Text(
        'Cost',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.cost,
        );
      },
    ),
    OperanceDataColumn<FreightViewHistoryModel>(
      name: 'Mark Up Cost',
      columnHeader: Text(
        'Mark Up Cost',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.markUpCost,
        );
      },
    ),
    OperanceDataColumn<FreightViewHistoryModel>(
      name: 'Mark Up %',
      columnHeader: Text(
        'Mark Up %',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.markUp,
        );
      },
    ),
    OperanceDataColumn<FreightViewHistoryModel>(
      name: 'Lumper Fee',
      columnHeader: Text(
        'Lumper Fee',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.lumperFee,
        );
      },
    ),
    OperanceDataColumn<FreightViewHistoryModel>(
      name: 'Round Up',
      columnHeader: Text(
        'Round Up',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.roundUp,
        );
      },
    ),
    OperanceDataColumn<FreightViewHistoryModel>(
      name: 'NS Shipping Cost',
      columnHeader: Text(
        'NS Shipping Cost',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.nsShippingCost,
        );
      },
    ),
    OperanceDataColumn<FreightViewHistoryModel>(
      name: 'Cost Difference',
      columnHeader: Text(
        'Cost Difference',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.costDifference,
        );
      },
    ),
    OperanceDataColumn<FreightViewHistoryModel>(
      name: 'Pallet Count',
      columnHeader: Text(
        'Pallet Count',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.palletCount,
        );
      },
    ),
    OperanceDataColumn<FreightViewHistoryModel>(
      name: 'Total Weight',
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
    OperanceDataColumn<FreightViewHistoryModel>(
      name: 'Create Date',
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
    OperanceDataColumn<FreightViewHistoryModel>(
      name: 'Create By',
      columnHeader: Text(
        'Create By',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.createBy,
        );
      },
    ),
    OperanceDataColumn<FreightViewHistoryModel>(
      name: 'Cancel Date',
      columnHeader: Text(
        'Cancel Date',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.cancelDate,
        );
      },
    ),
    OperanceDataColumn<FreightViewHistoryModel>(
      name: 'Cancel By',
      columnHeader: Text(
        'Cancel By',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.cancelBy,
        );
      },
    ),
    OperanceDataColumn<FreightViewHistoryModel>(
      name: 'Fv Sync Status',
      columnHeader: Text(
        'Fv Sync Status',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.fvSyncStatus,
        );
      },
    ),
    OperanceDataColumn<FreightViewHistoryModel>(
      name: 'Fv Sync Error',
      columnHeader: Text(
        'Fv Sync Error',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.fvSyncError,
        );
      },
    ),
    OperanceDataColumn<FreightViewHistoryModel>(
      name: 'Multiple SO#',
      columnHeader: Text(
        'Multiple SO#',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.multipleSO,
        );
      },
    ),
  ];
}
