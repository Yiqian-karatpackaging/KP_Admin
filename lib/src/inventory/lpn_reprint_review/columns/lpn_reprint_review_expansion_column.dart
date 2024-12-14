import '../lpn_reprint_review.dart';

class LPNReprintReviewExpansionColumn {
  static TextStyle columnHeaderStyle = const TextStyle(
    fontWeight: FontWeight.bold,
  );


  static const _width = OperanceDataColumnWidth(factor: 1 / 6);

  static List<OperanceDataColumn<LPNReprintReviewExpansionModel>> columns = [
    OperanceDataColumn<LPNReprintReviewExpansionModel>(
      name: 'bin',
      width: _width,
      columnHeader: Text(
        'Bin',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.bin,
        );
      },
    ),
    OperanceDataColumn<LPNReprintReviewExpansionModel>(
      name: 'quantity',
      width: _width,
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
    OperanceDataColumn<LPNReprintReviewExpansionModel>(
      name: 'memo',
      width: _width,
      columnHeader: Text(
        'Memo',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.memo,
        );
      },
    ),

    OperanceDataColumn<LPNReprintReviewExpansionModel>(
      name: 'reason',
      width: _width,
      columnHeader: Text(
        'Reason',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.reason,
        );
      },
    ),
    OperanceDataColumn<LPNReprintReviewExpansionModel>(
      name: 'updateBy',
      width: _width,
      columnHeader: Text(
        'Update By',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.updateBy,
        );
      },
    ),
    OperanceDataColumn<LPNReprintReviewExpansionModel>(
      name: 'updateDate',
      width: _width,
      columnHeader: Text(
        'Update Date',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.updateDate,
        );
      },
    ),
  ];
}
