import 'package:kp_admin/src/shipping/so_pick/so_pick.dart';

class HistoryPersonalBinOverrideColumn {
  static TextStyle columnHeaderStyle = const TextStyle(
    fontWeight: FontWeight.bold,
  );

  static const _width = OperanceDataColumnWidth(factor: 0.25);

  static List<OperanceDataColumn<SoPickModel>> columns = [
    OperanceDataColumn<SoPickModel>(
      name: 'name',
      width: _width,
      columnHeader: Text(
        'Name',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.pickBin,
        );
      },
    ),
    OperanceDataColumn<SoPickModel>(
      name: 'override',
      width: _width,
      columnHeader: Text(
        'Override',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.fullPallet,
        );
      },
    ),
    OperanceDataColumn<SoPickModel>(
      name: 'user',
      width: _width,
      columnHeader: Text(
        'User',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.origin,
        );
      },
    ),
    OperanceDataColumn<SoPickModel>(
      name: 'date',
      width: _width,
      columnHeader: Text(
        'Date',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.itemCode,
        );
      },
    ),
  ];
}
