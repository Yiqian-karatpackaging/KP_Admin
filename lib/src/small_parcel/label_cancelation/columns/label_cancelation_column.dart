import '../label_cancelation.dart';

class LabelCancelationColumn {
  static TextStyle columnHeaderStyle = const TextStyle(
    fontWeight: FontWeight.bold,
  );

  static List<List<String>> data = [["1","CA","11494895","sdfsf","SP Packing","fcj","9/21/2022 4:12 PM",""],["2","CA","11494895","dsfdsfsdfs","SP Packing UPS","fcj","9/21/2022 4:35 PM",""],["3","CA","11502696","wert","SP Packing GLS","fcj","12/14/2022 2:39 PM",""],["4","CA","11502688","Test","SP Packing GLS","Vincent.Wu","12/16/2022 5:05 PM",""],["5","CA","11502688","Test","SP Packing GLS","Vincent.Wu","12/16/2022 5:06 PM",""],["6","CA","11501980","wwww","SP Packing GLS","fcj","2/7/2023 3:06 PM",""],["8","CA","11502863","test","SP Packing","fcj","3/14/2023 4:20 PM",""],["9","CA","11502863","s","SP Packing","fcj","3/14/2023 4:43 PM",""],["10","CA","11502863","s","SP Packing","fcj","3/14/2023 4:50 PM",""],["11","CA","11502863","d","SP Packing","fcj","3/14/2023 4:51 PM",""],["12","CA","11502861","s","SP Packing","fcj","3/16/2023 10:11 AM",""],["13","CA","11502952","test","SP Packing","fcj","3/28/2023 11:18 PM",""],["14","CA","11496680","ssfsf","","fcj","6/29/2023 6:37 AM",""],["25","CA","11503371","USPS Cancel Test","SP Packing USPS","Vincent.Wu","9/13/2023 6:08 PM",""],["26","CA","1830543","wert","Sales Sample Packing","fcj","11/24/2023 9:46 AM","1ZXXXXXXXXXXXXXXXX"],["27","CA","11496541","Te","SP Packing USPS","Vincent.Wu","1/15/2024 5:01 PM","420917709202190344810400000399"],["29","CA","11503472","tyu","SP Packing LSO","fcj","4/8/2024 3:48 PM","1ZXXXXXXXXXXXXXXXX"],["30","CA","12815289","test","SP Packing UPS","klein","9/7/2024 10:25 AM","1ZXXXXXXXXXXXXXXXX"]];

  static List<OperanceDataColumn<LabelCancelationModel>> columns = [
    OperanceDataColumn<LabelCancelationModel>(
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
    OperanceDataColumn<LabelCancelationModel>(
      name: 'so',
      columnHeader: Text(
        'SO#',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.so,
        );
      },
    ),

    OperanceDataColumn<LabelCancelationModel>(
      name: 'trackingNumber',
      width: OperanceDataColumnWidth(size: 100.w),
      columnHeader: Text(
        'Tracking Number',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.trackingNumber,
        );
      },
    ),
    OperanceDataColumn<LabelCancelationModel>(
      name: 'reason',
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
    OperanceDataColumn<LabelCancelationModel>(
      name: 'page',
      columnHeader: Text(
        'Page',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.page,
        );
      },
    ),
    OperanceDataColumn<LabelCancelationModel>(
      name: 'user',
      columnHeader: Text(
        'User',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.user,
        );
      },
    ),
    OperanceDataColumn<LabelCancelationModel>(
      name: 'dateCancelled',
      columnHeader: Text(
        'Date Cancelled',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.dateCancelled,
        );
      },
    ),
  ];
}
