import 'package:kp_admin/src/shipping/so_fulfill_history/so_fulfill_history.dart';

class SOFulfillHistoryExpansionColumn {
  static TextStyle columnHeaderStyle = const TextStyle(
    fontWeight: FontWeight.bold,
  );

  static List<List<dynamic>> data = [
    [
      "50e08897-a137-4a6c-8cb0-d8624ed9dd89",
      "20.2925.004",
      "",
      "Karat Paper Towel MultiFOLD_KRAFT (4000 sheets)",
      "5",
      "5",
      "0",
      "95de4f50-42c8-4fdb-8e4d-53bf83296a82",
      "JS-MFK4000"
    ]
  ];

  static List<OperanceDataColumn<SOFulfillHistoryExpansionModel>> columns(
      Function callBack) {
    return [
      OperanceDataColumn<SOFulfillHistoryExpansionModel>(
        name: 'name',
        columnHeader: Text(
          'Name',
          style: columnHeaderStyle,
        ),
        cellBuilder: (context, item) {
          return GestureDetector(
            onTap: () => callBack('name', item),
            child: BaseText(
              text: item.name,
              textColor: Colors.blue,
            ),
          );
        },
      ),
      OperanceDataColumn<SOFulfillHistoryExpansionModel>(
        name: 'bin',
        columnHeader: Text(
          'Bin',
          style: columnHeaderStyle,
        ),
        cellBuilder: (context, item) {
          return GestureDetector(
            onTap: () => callBack('bin', item),
            child: Icon(
              Icons.search,
              color: Colors.blue,
            ),
          );
        },
      ),
      OperanceDataColumn<SOFulfillHistoryExpansionModel>(
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
      OperanceDataColumn<SOFulfillHistoryExpansionModel>(
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
      OperanceDataColumn<SOFulfillHistoryExpansionModel>(
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
      OperanceDataColumn<SOFulfillHistoryExpansionModel>(
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
