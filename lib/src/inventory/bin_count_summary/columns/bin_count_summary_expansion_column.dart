import '../bin_count_summary.dart';

class BinCountSummaryExpansionColumn {
  static TextStyle columnHeaderStyle = const TextStyle(
    fontWeight: FontWeight.bold,
  );

  static List<List<dynamic>> data = [["2330787","TEST BIN 2","1","","klein","8/28/2024 2:29 AM","0","CCA00002","",""],["2351623","TEST BIN 1","34","","Vincent.Wu","11/26/2024 4:36 PM","0","CCA049900022","1",""],["2351624","TEST BIN 1","731","","Vincent.Wu","11/26/2024 4:36 PM","0","CCA049900022","",""],["2351742","001-002A","45","","riched","10/9/2024 11:58 PM","0","","",""],["2351743","TEST BIN 2","45","","riched","10/10/2024 12:02 AM","0","CCA23400012","",""],["2351749","001-002A","45","","Klein","10/10/2024 3:53 AM","0","","",""]];
  
  static const _expansionWidth = OperanceDataColumnWidth(factor: 1 / 6);

  static List<OperanceDataColumn<BinCountSummaryExpansionModel>> columns = [
    OperanceDataColumn<BinCountSummaryExpansionModel>(
      name: 'license',
      width: _expansionWidth,
      columnHeader: Text(
        'License#',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.license,
        );
      },
    ),
    OperanceDataColumn<BinCountSummaryExpansionModel>(
      name: 'bin',
      width: _expansionWidth,
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
    OperanceDataColumn<BinCountSummaryExpansionModel>(
      name: 'quantity',
      width: _expansionWidth,
      columnHeader: Text(
        'Quantity',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(text: item.quantity);
      },
    ),
    OperanceDataColumn<BinCountSummaryExpansionModel>(
      name: 'cycleCountID',
      width: _expansionWidth,
      columnHeader: Text(
        'Cycle Count ID',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.cycleCountID,
        );
      },
    ),
    OperanceDataColumn<BinCountSummaryExpansionModel>(
      name: 'addedBy',
      width: _expansionWidth,
      columnHeader: Text(
        'Added By',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.addedBy,
        );
      },
    ),
    OperanceDataColumn<BinCountSummaryExpansionModel>(
      name: 'Added Date',
      width: _expansionWidth,
      columnHeader: Text(
        'addedDate',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.addedDate,
        );
      },
    ),
  ];
}
