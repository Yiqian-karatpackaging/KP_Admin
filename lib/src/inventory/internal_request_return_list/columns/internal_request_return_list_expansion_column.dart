import '../internal_request_return_list.dart';

class InternalRequestReturnListExpansionColumn {
  static TextStyle columnHeaderStyle = const TextStyle(
    fontWeight: FontWeight.bold,
  );

  static const _wdith = OperanceDataColumnWidth(factor: 1 / 5);

  static List<OperanceDataColumn<InternalRequestReturnListExpansionModel>> columns = [
    OperanceDataColumn<InternalRequestReturnListExpansionModel>(
      name: 'lpn',
      width: _wdith,
      columnHeader: Text(
        'LPN#',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.lpn,
        );
      },
    ),
    OperanceDataColumn<InternalRequestReturnListExpansionModel>(
      name: 'bin',
      width: _wdith,
      columnHeader: Text(
        'BIN',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.bin,
        );
      },
    ),
    OperanceDataColumn<InternalRequestReturnListExpansionModel>(
      name: 'qty',
      width: _wdith,
      columnHeader: Text(
        'QTY',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.qty,
        );
      },
    ),
    OperanceDataColumn<InternalRequestReturnListExpansionModel>(
      name: 'createdBy',
      width: _wdith,
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
    OperanceDataColumn<InternalRequestReturnListExpansionModel>(
      name: 'createdDate',
      width: _wdith,
      columnHeader: Text(
        'Created Date',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.createdDate,
        );
      },
    ),
  ];
}
