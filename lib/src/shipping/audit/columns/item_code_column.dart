import 'package:kp_admin/src/shipping/audit/audit.dart';

class ItemCodeColumn {
  static TextStyle columnHeaderStyle = const TextStyle(
    fontWeight: FontWeight.bold,
  );

  static List<List<dynamic>> data = [
    ["003-005A", "2258017", "17", "PICK", ""],
    ["TEST BIN 2", "2351782", "216", "STAGING", "Hold-QC-Defected"]
  ];

  static final OperanceDataColumnWidth _width =
      OperanceDataColumnWidth(factor: 0.2);

  static List<OperanceDataColumn<ItemCodeModel>> column = [
    OperanceDataColumn<ItemCodeModel>(
      name: 'bin',
      width: _width,
      columnHeader: Text(
        'Bin',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.bin,
        );
      },
    ),
    OperanceDataColumn<ItemCodeModel>(
      name: 'type',
      width: _width,
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
    OperanceDataColumn<ItemCodeModel>(
      name: 'license',
      width: _width,
      columnHeader: Text(
        'License#',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.license,
        );
      },
    ),
    OperanceDataColumn<ItemCodeModel>(
      name: 'quantity',
      width: _width,
      columnHeader: Text(
        'Quantity',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.quantity,
        );
      },
    ),
    OperanceDataColumn<ItemCodeModel>(
      name: 'holdStatus',
      width: _width,
      columnHeader: Text(
        'Hold Status',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.holdStatus,
        );
      },
    ),
  ];
}
