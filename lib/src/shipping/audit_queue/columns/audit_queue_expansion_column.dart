import 'package:kp_admin/src/shipping/audit_queue/audit_queue.dart';

class AuditQueueExpansionColumn {
  static TextStyle columnHeaderStyle = const TextStyle(
    fontWeight: FontWeight.bold,
  );

  static List<List<String>> data = [
    [
      "95f1a607-1714-4812-8f8a-9e7bcd2c573d",
      "10.0000.000",
      "",
      "Original Tapioca Pearls (Boba) - CASE",
      "1",
      "1",
      "0",
      "bc41b3e4-5d44-4f5b-8766-0998d1b4817b",
      "A1000"
    ]
  ];

  static List<OperanceDataColumn<AuditQueueExpansionModel>> columns() {
    return [
      OperanceDataColumn<AuditQueueExpansionModel>(
        name: 'name',
        columnHeader: Text(
          'Name',
          style: columnHeaderStyle,
        ),
        cellBuilder: (context, item) {
          return BaseText(
            text: item.name,
            textColor: Colors.blue,
            onTap: () {},
          );
        },
      ),
      OperanceDataColumn<AuditQueueExpansionModel>(
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
      OperanceDataColumn<AuditQueueExpansionModel>(
        name: 'bin',
        columnHeader: Text(
          'Bin',
          style: columnHeaderStyle,
        ),
        cellBuilder: (context, item) {
          return GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '/soPick');
            },
            child: const Icon(
              Icons.search,
              color: Colors.blue,
            ),
          );
        },
      ),
      OperanceDataColumn<AuditQueueExpansionModel>(
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
      OperanceDataColumn<AuditQueueExpansionModel>(
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
      OperanceDataColumn<AuditQueueExpansionModel>(
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
      OperanceDataColumn<AuditQueueExpansionModel>(
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
}
