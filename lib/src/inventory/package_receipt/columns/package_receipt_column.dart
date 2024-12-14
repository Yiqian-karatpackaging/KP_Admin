import '../package_receipt.dart';

class PackageReceiptColumn {
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

  static const _width = OperanceDataColumnWidth(factor: 1 / 9);

  static List<OperanceDataColumn<PackageReceiptModel>> columns = [
    OperanceDataColumn<PackageReceiptModel>(
      name: 'action',
      width: _width,
      columnHeader: Text(
        'Action',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(text: item.action);
      },
    ),
    OperanceDataColumn<PackageReceiptModel>(
      name: 'packageType',
      width: _width,
      columnHeader: Text(
        'Package Type',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.packageType,
        );
      },
    ),
    OperanceDataColumn<PackageReceiptModel>(
      name: 'condition',
      width: _width,
      columnHeader: Text(
        'Condition',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.condition,
        );
      },
    ),
    OperanceDataColumn<PackageReceiptModel>(
      name: 'trackingNumber',
      width: _width,
      columnHeader: Text(
        'Tracking Number',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.trackingNumber,
        );
      },
    ),
    OperanceDataColumn<PackageReceiptModel>(
      name: 'leftAt',
      width: _width,
      columnHeader: Text(
        'Left At',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.leftAt,
        );
      },
    ),
    OperanceDataColumn<PackageReceiptModel>(
      name: 'leftWith',
      width: _width,
      columnHeader: Text(
        'Left With',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.leftWith,
        );
      },
    ),
    OperanceDataColumn<PackageReceiptModel>(
      name: 'createdDate',
      width: _width,
      columnHeader: Text(
        'Created Date',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.createdDate,
        );
      },
    ),
    OperanceDataColumn<PackageReceiptModel>(
      name: 'createdBy',
      width: _width,
      columnHeader: Text(
        'Created By',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.createdBy,
        );
      },
    ),
    OperanceDataColumn<PackageReceiptModel>(
      name: 'fileList',
      width: _width,
      columnHeader: Text(
        'File List',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.fileList,
        );
      },
    ),
  ];
}
