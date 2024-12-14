import 'package:kp_admin/src/shipping/bpn_audit/bpn_audit.dart';

class BPNAuditSupportDocsColumn {
  static TextStyle columnHeaderStyle = const TextStyle(
    fontWeight: FontWeight.bold,
  );

  static const width = OperanceDataColumnWidth(factor: 1 / 5);

  static List<OperanceDataColumn<BPNAuditSupportDocsModel>> columns = [
    OperanceDataColumn<BPNAuditSupportDocsModel>(
      name: 'itemName',
      width: width,
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
    OperanceDataColumn<BPNAuditSupportDocsModel>(
      name: 'fileName',
      width: width,
      //sortable: true,
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
    OperanceDataColumn<BPNAuditSupportDocsModel>(
      name: 'memo',
      width: width,
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
    OperanceDataColumn<BPNAuditSupportDocsModel>(
      name: 'addedBy',
      width: width,
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
    OperanceDataColumn<BPNAuditSupportDocsModel>(
      name: 'addedDate',
      width: width,
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
