import 'package:kp_admin/src/shipping/so_pick/so_pick.dart';

class PickListColumn {
  static TextStyle columnHeaderStyle = const TextStyle(
    fontWeight: FontWeight.bold,
  );

  static List<OperanceDataColumn<SoPickModel>> columns(Function callBack) {
    return [
      OperanceDataColumn<SoPickModel>(
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
      OperanceDataColumn<SoPickModel>(
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
      OperanceDataColumn<SoPickModel>(
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
      OperanceDataColumn<SoPickModel>(
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
      OperanceDataColumn<SoPickModel>(
        name: 'itemCode',
        columnHeader: Text(
          'Item Code',
          style: columnHeaderStyle,
        ),
        cellBuilder: (context, item) {
          return BaseText(
            text: item.itemCode,
            textColor: Colors.blue,
            onTap: () {
              List<SoPickModel> _orderData = [];
              ItemCodeColumn.data.forEach((element) {
                final data = SoPickModel.fromJson(element);
                _orderData.add(data);
              });
              PopTable.show<SoPickModel>(
                context,
                '',
                _orderData,
                ItemCodeColumn.columns,
              );
            },
          );
        },
      ),
      OperanceDataColumn<SoPickModel>(
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
      OperanceDataColumn<SoPickModel>(
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
      OperanceDataColumn<SoPickModel>(
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
      OperanceDataColumn<SoPickModel>(
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
      OperanceDataColumn<SoPickModel>(
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
      OperanceDataColumn<SoPickModel>(
        name: 'pcsQty',
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
      OperanceDataColumn<SoPickModel>(
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
      OperanceDataColumn<SoPickModel>(
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
      OperanceDataColumn<SoPickModel>(
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
      OperanceDataColumn<SoPickModel>(
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
      OperanceDataColumn<SoPickModel>(
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
      OperanceDataColumn<SoPickModel>(
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
      OperanceDataColumn<SoPickModel>(
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
      OperanceDataColumn<SoPickModel>(
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
