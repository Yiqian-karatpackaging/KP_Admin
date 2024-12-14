import 'package:kp_admin/src/shipping/user_pick_kpi/user_pick_kpi.dart';

class UserPickKpiColumn {
  static TextStyle columnHeaderStyle = const TextStyle(
    fontWeight: FontWeight.bold,
  );

  static List<List<String>> data = [
    [
      "adam.hsia",
      "CA",
      "2",
      "11",
      "1.90909090909091",
      "244",
      "0.0860655737704918",
      "21"
    ],
    ["Jaime.Armenta", "TX", "2", "4", "82.75", "61", "5.42622950819672", "331"],
    [
      "Klein",
      "CA",
      "2",
      "3",
      "100.333333333333",
      "6",
      "50.1666666666667",
      "301"
    ],
    ["Klein", "TX", "1", "2", "149", "4", "74.5", "298"],
    ["Luis.Amezcua", "TX", "1", "4", "718.75", "400", "7.1875", "2875"],
    ["marquez.delfin", "CA", "1", "1", "32", "1", "32", "32"],
    ["riched", "CA", "1", "3", "77", "6", "38.5", "231"],
    ["sharon.xie", "SC", "1", "1", "2041", "2", "1020.5", "2041"],
    ["shiso", "CA", "13", "25", "79.24", "59", "33.5762711864407", "1981"],
    [
      "Steven.Hull",
      "CA",
      "1",
      "3",
      "242.333333333333",
      "56",
      "12.9821428571429",
      "727"
    ],
    ["vance", "CA", "2", "2", "179.5", "2", "179.5", "359"],
    ["Vincent.Wu", "AZ", "1", "1", "784202", "1", "784202", "784202"],
    ["Vincent.Wu", "CA", "2", "4", "60", "57", "4.21052631578947", "240"],
    [
      "yiqian",
      "CA",
      "1",
      "22",
      "69.4090909090909",
      "111",
      "13.7567567567568",
      "1527"
    ]
  ];

  static const OperanceDataColumnWidth _dateWidth =
      OperanceDataColumnWidth(factor: 1 / 5);

  static List<OperanceDataColumn<UserPickKpiModel>> columns = [
    OperanceDataColumn<UserPickKpiModel>(
      name: 'userName',
      width: _dateWidth,
      columnHeader: Text(
        'User Name',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.userName,
        );
      },
    ),
    OperanceDataColumn<UserPickKpiModel>(
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
    OperanceDataColumn<UserPickKpiModel>(
      name: 'soTotal',
      columnHeader: Text(
        'SO Total',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.soTotal,
        );
      },
    ),
    OperanceDataColumn<UserPickKpiModel>(
      name: 'items',
      columnHeader: Text(
        '#Items',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.items,
        );
      },
    ),
    OperanceDataColumn<UserPickKpiModel>(
      name: 'itemsAvg',
      columnHeader: Text(
        '#Items Avg',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.itemsAvg,
        );
      },
    ),
    OperanceDataColumn<UserPickKpiModel>(
      name: 'totalQty',
      columnHeader: Text(
        'Total Qty',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.totalQty,
        );
      },
    ),
    OperanceDataColumn<UserPickKpiModel>(
      name: 'totalQtyAvg',
      width: OperanceDataColumnWidth(size: 60.w),
      columnHeader: Text(
        'Total QTY Avg',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.totalQtyAvg,
        );
      },
    ),
    OperanceDataColumn<UserPickKpiModel>(
      name: 'duration',
      columnHeader: Text(
        'Duration',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.duration,
        );
      },
    ),
  ];
}
