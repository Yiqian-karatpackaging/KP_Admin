import 'package:kp_admin/src/shipping/so_pick/so_pick.dart';

class HistorySupportDocsColumn {
  static TextStyle columnHeaderStyle = const TextStyle(
    fontWeight: FontWeight.bold,
  );

  static const _width = OperanceDataColumnWidth(factor: 1 / 6);

  static List<OperanceDataColumn<SoPickModel>> columns = [
    OperanceDataColumn<SoPickModel>(
      name: 'action',
      width: _width,
      columnHeader: Text(
        'Action',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.pickBin,
        );
      },
    ),
    OperanceDataColumn<SoPickModel>(
      name: 'itemName',
      width: _width,
      columnHeader: Text(
        'Item Name',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.fullPallet,
        );
      },
    ),
    OperanceDataColumn<SoPickModel>(
      name: 'fileName',
      width: _width,
      columnHeader: Text(
        'File Name',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.origin,
        );
      },
    ),
    OperanceDataColumn<SoPickModel>(
      name: 'memo',
      width: _width,
      columnHeader: Text(
        'Memo',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.itemCode,
        );
      },
    ),
    OperanceDataColumn<SoPickModel>(
      name: 'addedBy',
      width: _width,
      columnHeader: Text(
        'Added By',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.legacyItem,
        );
      },
    ),
    OperanceDataColumn<SoPickModel>(
      name: 'addedDate',
      width: _width,
      columnHeader: Text(
        'Added Date',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.filledQty,
        );
      },
    ),
  ];
}
