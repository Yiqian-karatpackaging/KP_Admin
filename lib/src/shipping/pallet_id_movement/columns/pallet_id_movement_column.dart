import 'package:kp_admin/src/shipping/pallet_id_movement/pallet_id_movement.dart';

class PalletIdMovementColumn {
  static TextStyle columnHeaderStyle = const TextStyle(
    fontWeight: FontWeight.bold,
  );

  static List<List<String>> data = [
    [
      "12887685",
      "24683",
      "001-001E",
      "10.0000.000",
      "A1000",
      "1",
      "yiqian",
      "11/20/2024 10:26 PM",
      "",
      ""
    ]
  ];

  static const OperanceDataColumnWidth _dateWidth =
      OperanceDataColumnWidth(factor: 1 / 5);

  static List<OperanceDataColumn<PalletIdMovementModel>> columns = [
    OperanceDataColumn<PalletIdMovementModel>(
      name: 'SOCode',
      columnHeader: Text(
        'SO Code',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.soCode,
        );
      },
    ),
    OperanceDataColumn<PalletIdMovementModel>(
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
    OperanceDataColumn<PalletIdMovementModel>(
      name: 'stagedBin',
      columnHeader: Text(
        'Staged Bin',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.stagedBin,
        );
      },
    ),
    OperanceDataColumn<PalletIdMovementModel>(
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
    OperanceDataColumn<PalletIdMovementModel>(
      name: 'legacyItem',
      width: _dateWidth,
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
    OperanceDataColumn<PalletIdMovementModel>(
      name: 'quantity',
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
    OperanceDataColumn<PalletIdMovementModel>(
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
    OperanceDataColumn<PalletIdMovementModel>(
      name: 'createDate',
      width: OperanceDataColumnWidth(size: 60.w),
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
    OperanceDataColumn<PalletIdMovementModel>(
      name: 'lastMovedBy',
      width: OperanceDataColumnWidth(size: 60.w),
      columnHeader: Text(
        'LastMoved By',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.lastMovedBy,
        );
      },
    ),
    OperanceDataColumn<PalletIdMovementModel>(
      name: 'lastMovedDate',
      width: OperanceDataColumnWidth(size: 60.w),
      columnHeader: Text(
        'LastMoved Date',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.lastMovedDate,
        );
      },
    ),
  ];
}
