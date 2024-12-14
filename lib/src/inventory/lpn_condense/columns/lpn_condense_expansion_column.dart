import '../lpn_condense.dart';

class LPNCondenseExpansionColumn {
  static TextStyle columnHeaderStyle = const TextStyle(
    fontWeight: FontWeight.bold,
  );

static const _width = OperanceDataColumnWidth(factor: 1 / 6);

  static List<OperanceDataColumn<LPNCondenseExpansionModel>> columns = [
    OperanceDataColumn<LPNCondenseExpansionModel>(
      name: 'bin',
      width: _width,
      columnHeader: Text(
        'Bin#',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.bin,
        );
      },
    ),
    OperanceDataColumn<LPNCondenseExpansionModel>(
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
    OperanceDataColumn<LPNCondenseExpansionModel>(
      name: 'hold',
      width: _width,
      columnHeader: Text(
        'Hold',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.hold,
        );
      },
    ),
    OperanceDataColumn<LPNCondenseExpansionModel>(
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
    OperanceDataColumn<LPNCondenseExpansionModel>(
      name: 'updateBy',
      width: _width,
      columnHeader: Text(
        'Update By',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(text: item.updateBy);
      },
    ),
    OperanceDataColumn<LPNCondenseExpansionModel>(
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
