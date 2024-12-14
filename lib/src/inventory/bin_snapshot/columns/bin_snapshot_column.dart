import '../bin_snapshot.dart';

class BinSnapshotColumn {
  static TextStyle columnHeaderStyle = const TextStyle(
    fontWeight: FontWeight.bold,
  );

  static List<List<dynamic>> data = [["","10.0000.004","Chewy Tapioca Pearls (Boba) - CASE [A2000]","3574","901","-2608","-0.747901510912143","-49950.21648496","1612","19.15269037","CA","945","4/18/2024 6:44 PM","fcj","A2000","f00bc3a8-3d3d-486f-8451-71d92db59a51","122722011155","64238","110","e7d17b2b-b476-421e-9a5e-e9faa7059fba","12/27/2022 1:15 AM","12/27/2022 1:11 AM",true,true,"item","CCA5000000009","1","","","2629","1.16353175481301","50352.42298273","89","45","","","","","27"],["","80.2925.153","Custom Dinner Napkin 3-ply 17x17, (Chicken Meets Rice) 1-color print [KN-10187]","0","0","0","100","","23517","","","160","","","KN-10187","702291bb-98fd-436d-98c8-0020ad4c2689","","","0","","","",true,true,"item","","","","","-160","-2","","0","0","","","","","0"],["","81.2922.512","Custom PP Cup 700cc (Mifen House) 3-color, Offset Print [C60329]","0","0","0","100","","13267","","","0","","","C60329","2236e7ea-8fb0-4edc-b417-003885870b75","","","0","","","",true,true,"item","","","","","0","0","","0","0","","","","","0"],["","20.2930.033","Karat Giant Paper Wrapped Straws(7500pcs/ctn)_Clear 7.75\" [C9130]","149","0","0","-1","0","2960","25.39636943","","102","4/18/2024 6:44 PM","","C9130","0e22184e-f0be-4474-91a0-0058ddbd0262","","","0","","","",true,true,"item","","","","","47","0.374501992031873","1193.62936321","0","0","","","","","0"],["","20.7922.018","12 oz Karat Paper Hot Cups (Generic)","0","0","0","100","","5055","","","27","","","MP-Paper12-500","8335668e-f029-4c8e-8a6f-0061eedec367","","","0","","","",true,true,"item","","","","","-27","-2","","0","0","","","","","0"],["","20.3032.006","Karat Earth® Bio-Based WRAPPED Fork Heavy Weight, Natural [KE-U2030]","1","0","0","100","0","3277","14.10722973","","86","4/18/2024 6:44 PM","","KE-U2030","8a5f5b36-784e-4e20-9e66-006f1bbd09ff","","","0","","","",true,true,"item","","","","","-85","-1.95402298850575","-1199.11452705","0","0","","","","","0"]];

  static List<OperanceDataColumn<BinSnapshotModel>> columns = [
    OperanceDataColumn<BinSnapshotModel>(
      name: 'warehouse',
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
    OperanceDataColumn<BinSnapshotModel>(
      name: 'bin',
      columnHeader: Text(
        'Bin',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(text: item.bin,);
      },
    ),
    OperanceDataColumn<BinSnapshotModel>(
      name: 'LPN',
      columnHeader: Text(
        'LPN',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(text: item.lpn);
      },
    ),
    OperanceDataColumn<BinSnapshotModel>(
      name: 'ItemCode',
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
    OperanceDataColumn<BinSnapshotModel>(
      name: 'LegacyItem',
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
    OperanceDataColumn<BinSnapshotModel>(
      name: 'binType',
      columnHeader: Text(
        'Bin Type',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.binType,
        );
      },
    ),
    OperanceDataColumn<BinSnapshotModel>(
      name: 'area',
      columnHeader: Text(
        'Area',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.area,
        );
      },
    ),
    OperanceDataColumn<BinSnapshotModel>(
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
    OperanceDataColumn<BinSnapshotModel>(
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
    OperanceDataColumn<BinSnapshotModel>(
      name: 'PO',
      columnHeader: Text(
        'PO',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.po,
        );
      },
    ),

    OperanceDataColumn<BinSnapshotModel>(
      name: 'container',
      columnHeader: Text(
        'Container',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.container,
        );
      },
    ),
    OperanceDataColumn<BinSnapshotModel>(
      name: 'origin',
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
    OperanceDataColumn<BinSnapshotModel>(
      name: 'lot',
      columnHeader: Text(
        'Lot#',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.lot,
        );
      },
    ),
    OperanceDataColumn<BinSnapshotModel>(
      name: 'binUpdatedBy',
      columnHeader: Text(
        'Bin UpdatedBy',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.binUpdatedBy,
        );
      },
    ),
    OperanceDataColumn<BinSnapshotModel>(
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

    OperanceDataColumn<BinSnapshotModel>(
      name: 'binUpdateDate',
      columnHeader: Text(
        'Bin UpdateDate',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.binUpdateDate,
        );
      },
    ),
    OperanceDataColumn<BinSnapshotModel>(
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
    OperanceDataColumn<BinSnapshotModel>(
      name: 'sqFT',
      columnHeader: Text(
        'SQ FT',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.sqFT,
        );
      },
    ),
    OperanceDataColumn<BinSnapshotModel>(
      name: 'cube',
      columnHeader: Text(
        'CUBE',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.cube,
        );
      },
    ),
  ];
}
