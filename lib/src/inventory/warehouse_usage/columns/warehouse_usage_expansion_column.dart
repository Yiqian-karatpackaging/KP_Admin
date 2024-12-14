import '../warehouse_usage.dart';

class WarehouseUsageExpansionColumn {
  static TextStyle columnHeaderStyle = const TextStyle(
    fontWeight: FontWeight.bold,
  );

  static const _wdith = OperanceDataColumnWidth(factor: 1 / 5);

  static List<OperanceDataColumn<WarehouseUsageExpansionModel>> columns = [
    OperanceDataColumn<WarehouseUsageExpansionModel>(
      name: 'lpn',
      width: _wdith,
      columnHeader: Text(
        'LPN#',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.lpn,
        );
      },
    ),
    OperanceDataColumn<WarehouseUsageExpansionModel>(
      name: 'bin',
      width: _wdith,
      columnHeader: Text(
        'BIN',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.bin,
        );
      },
    ),
    OperanceDataColumn<WarehouseUsageExpansionModel>(
      name: 'qty',
      width: _wdith,
      columnHeader: Text(
        'QTY',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.qty,
        );
      },
    ),
    OperanceDataColumn<WarehouseUsageExpansionModel>(
      name: 'createdBy',
      width: _wdith,
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
    OperanceDataColumn<WarehouseUsageExpansionModel>(
      name: 'createdDate',
      width: _wdith,
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
  ];
}
