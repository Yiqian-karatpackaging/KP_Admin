import 'package:kp_admin/src/shipping/pallet_id_history/pallet_id_history.dart';

class PalletIdHistoryColumn {
  static TextStyle columnHeaderStyle = const TextStyle(
    fontWeight: FontWeight.bold,
  );

  static List<List<String>> data = [
    [
      "11208",
      "20.2922.032",
      "C-KC16",
      "CA",
      "2330812",
      "STAGE01",
      "1",
      "TO",
      "16964",
      "16 oz Clear PET Cups (Karat, 98mm) C-KC16 [C-KC16]",
      "11/6/2024 4:29 PM",
      "adam.hsia",
      "0",
      "",
      "United States"
    ],
    [
      "11209",
      "10.0000.019",
      "B2059",
      "CA",
      "2295328",
      "003-012A",
      "1",
      "SO",
      "12901697",
      "TeaZone Popping Pearls GOURMET-Series Cherry [B2059]",
      "11/7/2024 2:01 AM",
      "shiso",
      "0",
      "",
      ""
    ]
  ];

  static const OperanceDataColumnWidth _dateWidth =
      OperanceDataColumnWidth(factor: 1 / 6);

  static List<OperanceDataColumn<PalletIdHistoryModel>> columns = [
    OperanceDataColumn<PalletIdHistoryModel>(
      name: 'SOCode',
      width: _dateWidth,
      columnHeader: Text(
        'SO Code',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.soCode,
        );
      },
    ),
    OperanceDataColumn<PalletIdHistoryModel>(
      name: 'palletID',
      width: _dateWidth,
      columnHeader: Text(
        'Pallet ID',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.palletID,
        );
      },
    ),
    OperanceDataColumn<PalletIdHistoryModel>(
      name: 'oldBin',
      width: _dateWidth,
      columnHeader: Text(
        'Old Bin',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.oldBin,
        );
      },
    ),
    OperanceDataColumn<PalletIdHistoryModel>(
      name: 'newBin',
      width: _dateWidth,
      columnHeader: Text(
        'New Bin',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.newBin,
        );
      },
    ),
    OperanceDataColumn<PalletIdHistoryModel>(
      name: 'createDate',
      width: _dateWidth,
      columnHeader: Text(
        'Create Date',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.createDate,
        );
      },
    ),
    OperanceDataColumn<PalletIdHistoryModel>(
      name: 'createdBy',
      width: _dateWidth,
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
  ];
}
