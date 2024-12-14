import '../bpn_history.dart';

class BPNHistoryExpansionColumn {
  static TextStyle columnHeaderStyle = const TextStyle(
    fontWeight: FontWeight.bold,
  );

  static const _width = OperanceDataColumnWidth(factor: 1 / 7);

  static List<OperanceDataColumn<BPNHistoryExpansionModel>> columns = [
    OperanceDataColumn<BPNHistoryExpansionModel>(
      name: 'lpn',
      width: _width,
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
    OperanceDataColumn<BPNHistoryExpansionModel>(
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
    OperanceDataColumn<BPNHistoryExpansionModel>(
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
    OperanceDataColumn<BPNHistoryExpansionModel>(
      name: 'currentQty',
      width: _width,
      columnHeader: Text(
        'Current Qty',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.currentQty,
        );
      },
    ),
    OperanceDataColumn<BPNHistoryExpansionModel>(
      name: 'itemCode',
      width: _width,
      columnHeader: Text(
        'Item Code',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.itemCode,
        );
      },
    ),
    OperanceDataColumn<BPNHistoryExpansionModel>(
      name: 'legacyItem',
      width: _width,
      columnHeader: Text(
        'Legacy Item',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.legacyItem,
        );
      },
    ),
    OperanceDataColumn<BPNHistoryExpansionModel>(
      name: 'description',
      width: _width,
      columnHeader: Text(
        'Description',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.description,
        );
      },
    ),
  ];
}
