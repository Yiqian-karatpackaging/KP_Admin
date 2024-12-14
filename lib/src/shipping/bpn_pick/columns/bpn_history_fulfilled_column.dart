import 'package:kp_admin/src/shipping/bpn_pick/bpn_pick.dart';

class BPNHistoryFulfilledColumn {
  static TextStyle columnHeaderStyle = const TextStyle(
    fontWeight: FontWeight.bold,
  );

  static List<OperanceDataColumn<BpnPickModel>> columns = [
    OperanceDataColumn<BpnPickModel>(
      name: 'license',
      columnHeader: Text(
        'License#',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.pickBin,
        );
      },
    ),
    OperanceDataColumn<BpnPickModel>(
      name: 'so',
      columnHeader: Text(
        'SO',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.fullPallet,
        );
      },
    ),
    OperanceDataColumn<BpnPickModel>(
      name: 'lot',
      //sortable: true,
      columnHeader: Text(
        'Lot#',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.origin,
        );
      },
    ),
    OperanceDataColumn<BpnPickModel>(
      name: 'palletQTY',
      columnHeader: Text(
        'Pallet QTY',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.itemCode,
        );
      },
    ),
    OperanceDataColumn<BpnPickModel>(
      name: '"itemCode',
      columnHeader: Text(
        'Item Code',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.legacyItem,
        );
      },
    ),
    OperanceDataColumn<BpnPickModel>(
      name: 'legacyItem',
      columnHeader: Text(
        'Legacy Item:',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.filledQty,
        );
      },
    ),
    OperanceDataColumn<BpnPickModel>(
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
    OperanceDataColumn<BpnPickModel>(
      name: 'location',
      columnHeader: Text(
        'Location',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.ordQty,
        );
      },
    ),
    OperanceDataColumn<BpnPickModel>(
      name: 'ffQty',
      columnHeader: Text(
        'FFQty',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.boxQty,
        );
      },
    ),
    OperanceDataColumn<BpnPickModel>(
      name: 'pickBin',
      //sortable: true,
      columnHeader: Text(
        'Pick Bin',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.pcsQty,
        );
      },
    ),
    OperanceDataColumn<BpnPickModel>(
      name: 'createdBy',
      columnHeader: Text(
        'Created By',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.filledQty,
        );
      },
    ),
    OperanceDataColumn<BpnPickModel>(
      name: 'createDate',
      columnHeader: Text(
        'Create Date',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.balance,
        );
      },
    ),
    OperanceDataColumn<BpnPickModel>(
      name: 'upcItem',
      columnHeader: Text(
        'UPC/Item#',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.pickTime,
        );
      },
    ),
    OperanceDataColumn<BpnPickModel>(
      name: 'weight',
      columnHeader: Text(
        'Weight',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.lpnTotal,
        );
      },
    ),
    OperanceDataColumn<BpnPickModel>(
      name: 'expirationDate',
      columnHeader: Text(
        'Expiration Date',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.description,
        );
      },
    ),
    OperanceDataColumn<BpnPickModel>(
      name: 'cancelledBy',
      columnHeader: Text(
        'Cancelled By',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.weight,
        );
      },
    ),
    OperanceDataColumn<BpnPickModel>(
      name: 'cancelledDate',
      columnHeader: Text(
        'Cancelled Date',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.weight,
        );
      },
    ),
    OperanceDataColumn<BpnPickModel>(
      name: 'notes',
      columnHeader: Text(
        'Notes',
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
