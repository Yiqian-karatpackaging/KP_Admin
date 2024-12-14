import 'package:kp_admin/src/shipping/audit/audit.dart';

class HistoryPhotoOverrideColumn {
  static TextStyle columnHeaderStyle = const TextStyle(
    fontWeight: FontWeight.bold,
  );

  static List<List<String>> data = [[]];

  static List<OperanceDataColumn<HistoryPhotoOverrideModel>> columns = [
    OperanceDataColumn<HistoryPhotoOverrideModel>(
      name: 'override',
      width: const OperanceDataColumnWidth(factor: 1 / 3),
      columnHeader: Text(
        'Override',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.override,
        );
      },
    ),
    OperanceDataColumn<HistoryPhotoOverrideModel>(
      name: 'user',
      width: const OperanceDataColumnWidth(factor: 1 / 3),
      columnHeader: Text(
        'User',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.user,
        );
      },
    ),
    OperanceDataColumn<HistoryPhotoOverrideModel>(
      name: 'date',
      width: const OperanceDataColumnWidth(factor: 1 / 3),
      columnHeader: Text(
        'Date',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.date,
        );
      },
    ),
  ];
}
