import 'package:kp_admin/src/shipping/queue/queue.dart';

class QueuePageExpansionColumn {
  static TextStyle columnHeaderStyle = const TextStyle(
    fontWeight: FontWeight.bold,
  );

  static List<OperanceDataColumn<QueueExpansionModel>> columns = [
    OperanceDataColumn<QueueExpansionModel>(
      name: 'name',
      columnHeader: Text(
        'Name',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.name,
          textColor: Colors.blueAccent,
          onTap: () {
            List<QueueExpansionNameModel> _orderData = [];
            QueuePageExpansionNameColumn.data.forEach((element) {
              final data = QueueExpansionNameModel.fromJson(element);
              _orderData.add(data);
            });
            PopTable.show<QueueExpansionNameModel>(
              context,
              item.name,
              _orderData,
              QueuePageExpansionNameColumn.columns,
            );
          },
        );
      },
    ),
    OperanceDataColumn<QueueExpansionModel>(
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
    OperanceDataColumn<QueueExpansionModel>(
      name: 'bin',
      columnHeader: Text(
        'Bin',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return GestureDetector(
          onTap: () {
            List<QueueExpansionBinModel> _orderData = [];
            QueuePageExpansionBinColumn.data.forEach((element) {
              final data = QueueExpansionBinModel.fromJson(element);
              _orderData.add(data);
            });
            PopTable.show<QueueExpansionBinModel>(context, item.name,
                _orderData, QueuePageExpansionBinColumn.columns);
          },
          child: const Icon(
            Icons.search,
            color: Colors.blue,
          ),
        );
      },
    ),
    OperanceDataColumn<QueueExpansionModel>(
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
    OperanceDataColumn<QueueExpansionModel>(
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
    OperanceDataColumn<QueueExpansionModel>(
      name: 'filledQty:',
      columnHeader: Text(
        'Filled Qty:',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.filledQty,
        );
      },
    ),
    OperanceDataColumn<QueueExpansionModel>(
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
  ];
}
