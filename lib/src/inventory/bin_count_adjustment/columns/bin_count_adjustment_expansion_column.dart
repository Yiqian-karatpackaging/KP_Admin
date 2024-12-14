import '../bin_count_adjustment.dart';

class BinCountAdjustmentExpansionColumn {
  static TextStyle columnHeaderStyle = const TextStyle(
    fontWeight: FontWeight.bold,
  );

static const _width =  OperanceDataColumnWidth(factor: 1 / 7);

  static List<OperanceDataColumn<BinCountAdjustmentExpansionModel>> columns = [
    OperanceDataColumn<BinCountAdjustmentExpansionModel>(
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
    OperanceDataColumn<BinCountAdjustmentExpansionModel>(
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
    OperanceDataColumn<BinCountAdjustmentExpansionModel>(
      name: 'memo',
      width: _width,
      columnHeader: Text(
        'Memo',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.memo,
        );
      },
    ),
    OperanceDataColumn<BinCountAdjustmentExpansionModel>(
      name: 'reason',
      width: _width,
      columnHeader: Text(
        'Reason',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.reason,
        );
      },
    ),
    OperanceDataColumn<BinCountAdjustmentExpansionModel>(
      name: 'updateBy',
      width: _width,
      columnHeader: Text(
        'Update By',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.updateBy,
        );
      },
    ),
    OperanceDataColumn<BinCountAdjustmentExpansionModel>(
      name: 'updateDate',
      width: _width,
      columnHeader: Text(
        'Update Date',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.updateDate,
        );
      },
    ),
  ];
}
