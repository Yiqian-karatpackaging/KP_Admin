import 'package:kp_admin/src/shipping/bpn_audit/bpn_audit.dart';

class BPNAuditPickColumn {
  static TextStyle columnHeaderStyle = const TextStyle(
    fontWeight: FontWeight.bold,
  );

  static List<OperanceDataColumn<BPNAuditModel>> columns(Function callBack) {
    return [
      OperanceDataColumn<BPNAuditModel>(
        name: '',
        width: OperanceDataColumnWidth(size: 20.w),
        columnHeader: GestureDetector(
          onTap: () => callBack('refresh'),
          child: const Icon(
            Icons.refresh,
          ),
        ),
        cellBuilder: (context, item) {
          return Center(
            child: GestureDetector(
              onTap: () => callBack(item),
              child: const Icon(
                Icons.camera_alt,
              ),
            ),
          );
        },
      ),
      OperanceDataColumn<BPNAuditModel>(
        name: 'pickBin',
        columnHeader: Text(
          'Pick Bin',
          style: columnHeaderStyle,
        ),
        cellBuilder: (context, item) {
          return BaseText(
            text: item.pickBin,
          );
        },
      ),
      OperanceDataColumn<BPNAuditModel>(
        name: 'fullPallet',
        columnHeader: Text(
          'Full Pallet',
          style: columnHeaderStyle,
        ),
        cellBuilder: (context, item) {
          return BaseText(
            text: item.fullPallet,
          );
        },
      ),
      OperanceDataColumn<BPNAuditModel>(
        name: 'origin',
        //sortable: true,
        columnHeader: Text(
          'Origin',
          style: columnHeaderStyle,
        ),
        cellBuilder: (context, item) {
          return BaseText(
            text: item.origin,
          );
        },
      ),
      OperanceDataColumn<BPNAuditModel>(
        name: 'itemCode',
        columnHeader: Text(
          'Item Code',
          style: columnHeaderStyle,
        ),
        cellBuilder: (context, item) {
          return BaseText(
            text: item.itemCode,
            textColor: Colors.blue,
          );
        },
      ),
      OperanceDataColumn<BPNAuditModel>(
        name: 'legacyItem',
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
      OperanceDataColumn<BPNAuditModel>(
        name: 'onHandQty',
        columnHeader: Text(
          'OnHand Qty',
          style: columnHeaderStyle,
        ),
        cellBuilder: (context, item) {
          return BaseText(
            text: item.filledQty,
          );
        },
      ),
      OperanceDataColumn<BPNAuditModel>(
        name: 'kpiPar',
        columnHeader: Text(
          'KPI Par',
          style: columnHeaderStyle,
        ),
        cellBuilder: (context, item) {
          return BaseText(
            text: item.balance,
          );
        },
      ),
      OperanceDataColumn<BPNAuditModel>(
        name: 'ordQty',
        columnHeader: Text(
          'Ord Qty',
          style: columnHeaderStyle,
        ),
        cellBuilder: (context, item) {
          return BaseText(
            text: item.ordQty,
          );
        },
      ),
      OperanceDataColumn<BPNAuditModel>(
        name: 'boxQty',
        columnHeader: Text(
          'Box Qty',
          style: columnHeaderStyle,
        ),
        cellBuilder: (context, item) {
          return BaseText(
            text: item.boxQty,
          );
        },
      ),
      OperanceDataColumn<BPNAuditModel>(
        name: 'pcsQty',
        //sortable: true,
        columnHeader: Text(
          'Pcs Qty',
          style: columnHeaderStyle,
        ),
        cellBuilder: (context, item) {
          return BaseText(
            text: item.pcsQty,
          );
        },
      ),
      OperanceDataColumn<BPNAuditModel>(
        name: 'filledQty',
        columnHeader: Text(
          'Filled Qty',
          style: columnHeaderStyle,
        ),
        cellBuilder: (context, item) {
          return BaseText(
            text: item.filledQty,
          );
        },
      ),
      OperanceDataColumn<BPNAuditModel>(
        name: 'balance',
        columnHeader: Text(
          'Balance',
          style: columnHeaderStyle,
        ),
        cellBuilder: (context, item) {
          return BaseText(
            text: item.balance,
          );
        },
      ),
      OperanceDataColumn<BPNAuditModel>(
        name: 'pickTime',
        columnHeader: Text(
          'Pick Time',
          style: columnHeaderStyle,
        ),
        cellBuilder: (context, item) {
          return BaseText(
            text: item.pickTime,
          );
        },
      ),
      OperanceDataColumn<BPNAuditModel>(
        name: 'lpnTotal',
        columnHeader: Text(
          'LPN Total',
          style: columnHeaderStyle,
        ),
        cellBuilder: (context, item) {
          return BaseText(
            text: item.lpnTotal,
          );
        },
      ),
      OperanceDataColumn<BPNAuditModel>(
        name: 'description',
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
      OperanceDataColumn<BPNAuditModel>(
        name: 'weight',
        columnHeader: Text(
          'Weight',
          style: columnHeaderStyle,
        ),
        cellBuilder: (context, item) {
          return BaseText(
            text: item.weight,
          );
        },
      ),
      OperanceDataColumn<BPNAuditModel>(
        name: 'whNotes',
        columnHeader: Text(
          'WH Notes',
          style: columnHeaderStyle,
        ),
        cellBuilder: (context, item) {
          return GestureDetector(
            onTap: () {
              PopTextField.show(context, 'Edit Notes', '', (value) {});
            },
            child: const Icon(
              Icons.edit,
              color: Colors.blue,
            ),
          );
        },
      ),
      OperanceDataColumn<BPNAuditModel>(
        name: 'location',
        columnHeader: Text(
          'Location',
          style: columnHeaderStyle,
        ),
        cellBuilder: (context, item) {
          return BaseText(
            text: item.location,
          );
        },
      ),
    ];
  }
}
