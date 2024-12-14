import 'package:kp_admin/src/shipping/audit/audit.dart';

class HistorySupportDocsColumn {
  static TextStyle columnHeaderStyle = const TextStyle(
    fontWeight: FontWeight.bold,
  );

  static List<List<String>> data = [[]];

  static List<OperanceDataColumn<HistorySupportDocsModel>> columns = [
    OperanceDataColumn<HistorySupportDocsModel>(
      name: 'itemName',
      width: const OperanceDataColumnWidth(factor: 0.2),
      columnHeader: Text(
        'Item Name',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.itemName,
        );
      },
    ),
    OperanceDataColumn<HistorySupportDocsModel>(
      name: 'fileName',
      width: const OperanceDataColumnWidth(factor: 0.2),
      columnHeader: Text(
        'File Name',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.fileName,
        );
      },
    ),
    OperanceDataColumn<HistorySupportDocsModel>(
      name: 'memo',
      width: const OperanceDataColumnWidth(factor: 0.2),
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
    OperanceDataColumn<HistorySupportDocsModel>(
      name: 'addedBy',
      width: const OperanceDataColumnWidth(factor: 0.2),
      columnHeader: Text(
        'Added By',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.addedBy,
        );
      },
    ),
    OperanceDataColumn<HistorySupportDocsModel>(
      name: 'addedDate',
      width: const OperanceDataColumnWidth(factor: 0.2),
      columnHeader: Text(
        'Added Date',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.addedDate,
        );
      },
    ),
  ];
}
