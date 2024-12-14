import 'package:kp_admin/src/shipping/audit/audit.dart';

class PickingListColumn {
  static TextStyle columnHeaderStyle = const TextStyle(
    fontWeight: FontWeight.bold,
  );

  static List<OperanceDataColumn<PickingListModel>> columns = [
    OperanceDataColumn<PickingListModel>(
      name: '',
      width: OperanceDataColumnWidth(size: 20.w),
      columnHeader: GestureDetector(
        onTap: () {},
        child: const Icon(
          Icons.refresh,
        ),
      ),
      cellBuilder: (context, item) {
        return Center(
          child: GestureDetector(
            // onTap: () {
            //   Navigator.pushNamed(context, '/so_pick');相机
            // },
            child: const Icon(
              Icons.camera_alt,
            ),
          ),
        );
      },
    ),
    OperanceDataColumn<PickingListModel>(
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
            List<ItemCodeModel> _orderData = [];
            ItemCodeColumn.data.forEach((element) {
              final data = ItemCodeModel.fromJson(element);
              _orderData.add(data);
            });
            PopTable.show<ItemCodeModel>(
                context, '', _orderData, ItemCodeColumn.column);
          },
        );
      },
    ),
    OperanceDataColumn<PickingListModel>(
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
    OperanceDataColumn<PickingListModel>(
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
    OperanceDataColumn<PickingListModel>(
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
    OperanceDataColumn<PickingListModel>(
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
    OperanceDataColumn<PickingListModel>(
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
    OperanceDataColumn<PickingListModel>(
      name: 'auditQty',
      columnHeader: Text(
        'Audit Qty',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.auditQty,
        );
      },
    ),
    OperanceDataColumn<PickingListModel>(
      name: 'nsFilledQty',
      columnHeader: Text(
        'NSFilled Qty',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.nsFilledQty,
        );
      },
    ),
    OperanceDataColumn<PickingListModel>(
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
    OperanceDataColumn<PickingListModel>(
      name: 'comp',
      //sortable: true,
      columnHeader: Text(
        'Comp',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.comp,
        );
      },
    ),
    OperanceDataColumn<PickingListModel>(
      name: 'unitCase',
      columnHeader: Text(
        'Unit/Case',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.unitCase,
        );
      },
    ),
    OperanceDataColumn<PickingListModel>(
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
    OperanceDataColumn<PickingListModel>(
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
    OperanceDataColumn<PickingListModel>(
      name: 'mark',
      columnHeader: Text(
        'Mark',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.mark,
        );
      },
    ),
    OperanceDataColumn<PickingListModel>(
      name: 'markUser',
      columnHeader: Text(
        'Mark User',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.markUser,
        );
      },
    ),
    OperanceDataColumn<PickingListModel>(
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
    OperanceDataColumn<PickingListModel>(
      name: 's',
      columnHeader: Text(
        'S',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.s,
        );
      },
    ),
    OperanceDataColumn<PickingListModel>(
      name: 'action',
      columnHeader: Text(
        'Action',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.action,
        );
      },
    ),
  ];
}
