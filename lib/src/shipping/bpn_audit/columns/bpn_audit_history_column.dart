import 'package:kp_admin/src/shipping/bpn_audit/bpn_audit.dart';

class BPNAuditHistoryColumn {
  static TextStyle columnHeaderStyle = const TextStyle(
    fontWeight: FontWeight.bold,
  );

  static List<OperanceDataColumn<BPNHistoryAuditModel>> columns = [
    OperanceDataColumn<BPNHistoryAuditModel>(
      name: 'license',
      columnHeader: Text(
        'Lic#',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(text: item.license,);
      },
    ),
    OperanceDataColumn<BPNHistoryAuditModel>(
      name: 'itemCode',
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
    OperanceDataColumn<BPNHistoryAuditModel>(
      name: 'description',
      width: OperanceDataColumnWidth(size: 200.w),
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
    OperanceDataColumn<BPNHistoryAuditModel>(
      name: 'location',
      columnHeader: Text(
        'Location',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(text: item.location);
      },
    ),
    OperanceDataColumn<BPNHistoryAuditModel>(
      name: 'fulFilledQty',
      columnHeader: Text(
        'FulFilled Qty',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.fulFilledQty,
        );
      },
    ),
    OperanceDataColumn<BPNHistoryAuditModel>(
      name: 'palletID',
      columnHeader: Text(
        'Pallet ID',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.palletID,
        );
      },
    ),
    OperanceDataColumn<BPNHistoryAuditModel>(
      name: 'boxID',
      columnHeader: Text(
        'BoxID',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.boxID,
        );
      },
    ),
    OperanceDataColumn<BPNHistoryAuditModel>(
      name: 'createdBy',
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
    OperanceDataColumn<BPNHistoryAuditModel>(
      name: 'createDate',
      columnHeader: Text(
        'Create Date',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.createDate,
        );
      },
    ),
  ];
}
