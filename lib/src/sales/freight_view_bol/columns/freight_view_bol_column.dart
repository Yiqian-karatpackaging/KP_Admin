import '../freight_view_bol.dart';

class FreightViewBolColumn {
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


  static List<OperanceDataColumn<FreightViewBolModel>> columns = [
    OperanceDataColumn<FreightViewBolModel>(
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
    OperanceDataColumn<FreightViewBolModel>(
      name: 'Print Label',
      columnHeader: Text(
        'Print Label',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.printLabel,
        );
      },
    ),
    OperanceDataColumn<FreightViewBolModel>(
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
    OperanceDataColumn<FreightViewBolModel>(
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
    OperanceDataColumn<FreightViewBolModel>(
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
    OperanceDataColumn<FreightViewBolModel>(
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
    OperanceDataColumn<FreightViewBolModel>(
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
    OperanceDataColumn<FreightViewBolModel>(
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
    OperanceDataColumn<FreightViewBolModel>(
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
    OperanceDataColumn<FreightViewBolModel>(
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
    OperanceDataColumn<FreightViewBolModel>(
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
    OperanceDataColumn<FreightViewBolModel>(
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
    //
    OperanceDataColumn<FreightViewBolModel>(
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
    OperanceDataColumn<FreightViewBolModel>(
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
    OperanceDataColumn<FreightViewBolModel>(
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
    OperanceDataColumn<FreightViewBolModel>(
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
    OperanceDataColumn<FreightViewBolModel>(
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
    OperanceDataColumn<FreightViewBolModel>(
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
    //
    OperanceDataColumn<FreightViewBolModel>(
      name: 'Multiple SO#',
      columnHeader: Text(
        'Multiple SO#',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.multipleSo,
        );
      },
    ),
    OperanceDataColumn<FreightViewBolModel>(
      name: 'Book Date',
      columnHeader: Text(
        'Book Date',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.bookDate,
        );
      },
    ),
    OperanceDataColumn<FreightViewBolModel>(
      name: 'Book By',
      columnHeader: Text(
        'Book By',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.bookBy,
        );
      },
    ),
    OperanceDataColumn<FreightViewBolModel>(
      name: 'BOL',
      columnHeader: Text(
        'BOL',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.bol,
        );
      },
    ),
    OperanceDataColumn<FreightViewBolModel>(
      name: 'Print Lable Date',
      columnHeader: Text(
        'Print Lable Date',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.printLableDate,
        );
      },
    ),
    OperanceDataColumn<FreightViewBolModel>(
      name: 'Print Lable By',
      columnHeader: Text(
        'Print Lable By',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.printLableBy,
        );
      },
    ),
  ];
}
