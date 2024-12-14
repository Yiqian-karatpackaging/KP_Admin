import '../scan_history.dart';

class ScanHistoryColumn {

  static TextStyle columnHeaderStyle = const TextStyle(fontWeight: FontWeight.bold,);

  static List<Map<String, dynamic>> data = [
    {
    "Deatils": 2,
    "ScanID": 2351843,
    "Action": "",
    "item_code": "10.0000.000",
    "item_description": "Original Tapioca Pearls (Boba) - CASE [A1000]",
    "Quantity": 54,
    "Bin": "002-009B",
    "CreateDate": "\/Date(1731120305413)\/",
    "CreatedBy": "vance",
    "PO": 67857,
    "Container": "BMOU5034962:67857",
    "Reason": "ggg",
    "UpdBy": "vance",
    "UpdDate": "\/Date(1731145667157)\/",
    "DeletedBy": null,
    "DeletedDate": null,
    "ReprintedBy": "shiso",
    "ReprintedDate": "\/Date(1731145670953)\/",
    "ReprintCount": 1,
    "ItemID": "bc41b3e4-5d44-4f5b-8766-0998d1b4817b",
    "CurrentAndNewBin": "",
    "HoldStatus": "Hold - Customer Hold",
    "LastReason": "",
    "PrinterName": "",
    "LabelPrinter": 0,
    "HoldVariableId": 0,
    "ReceiveQuantity": 54,
    "WareHouseCode": "CA",
    "BinType": "BULK",
    "LegacyItem": "A1000",
    "ExpirationDate": "\/Date(1731657600000)\/",
    "LotNumber": "TEST",
    "HoldSoCode": null,
    "Pallet": "B",
    "PalletQty": 1,
    "CustomerHold": "yuu`jjj:\">",
    "Origin": "Taiwan (Province of China)",
    "BPN": '10036',
    "Unloader": null
  },
    {
      "Deatils": 2,
      "ScanID": 2351826,
      "Action": "",
      "item_code": "10.0000.008",
      "item_description": "Instant 10 Tapioca Pearls (Boba) - CASE [A3000]",
      "Quantity": 1,
      "Bin": "003-001A",
      "CreateDate": "\/Date(1730885181723)\/",
      "CreatedBy": "shiso",
      "PO": 67623,
      "Container": "Apple1234:67623",
      "Reason": "",
      "UpdBy": "shiso",
      "UpdDate": "\/Date(1730885181723)\/",
      "DeletedBy": null,
      "DeletedDate": null,
      "ReprintedBy": null,
      "ReprintedDate": null,
      "ReprintCount": 0,
      "ItemID": "80140a6c-1fc1-4a0b-8715-c0b4d0ac7d7e",
      "CurrentAndNewBin": "",
      "HoldStatus": null,
      "LastReason": "",
      "PrinterName": "",
      "LabelPrinter": 0,
      "HoldVariableId": 0,
      "ReceiveQuantity": 1,
      "WareHouseCode": "CA",
      "BinType": "PICK",
      "LegacyItem": "A3000",
      "ExpirationDate": "\/Date(1762416000000)\/",
      "LotNumber": "",
      "HoldSoCode": null,
      "Pallet": "B",
      "PalletQty": 1,
      "CustomerHold": null,
      "Origin": "",
      "BPN": null,
      "Unloader": null
    },];

  static List<OperanceDataColumn<ScanHistoryModel>> columns = [
    OperanceDataColumn<ScanHistoryModel>(
      name: 'license',
      columnHeader: Text(
        'License#',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, '/pdf', arguments: {'url': 'https://ontheline.trincoll.edu/images/bookdown/sample-local-pdf.pdf'});
          },
          child: BaseText(text: item.license, textColor: Colors.blue,),
        );
      },
    ),
    OperanceDataColumn<ScanHistoryModel>(
      name: 'bpn',
      columnHeader: Text(
        'BPN#',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, '/pdf', arguments: {'url': 'https://ontheline.trincoll.edu/images/bookdown/sample-local-pdf.pdf'});
          },
          child: BaseText(text: item.bpn, textColor: Colors.blue,),
        );
      },
    ),
    OperanceDataColumn<ScanHistoryModel>(
      name: 'lot',
      //sortable: true,
      columnHeader: Text(
        'Lot#',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(text: item.lot,);
      },
    ),
    OperanceDataColumn<ScanHistoryModel>(
      name: 'action',
      columnHeader: Text(
        'Action',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return GestureDetector(
          onTap: () {
            EditLicense.show(context, 'Edit License', () {

            });
            // List<QueueExpansionBinModel> _orderData = [];
            // QueuePageExpansionBinColumn.data.forEach((element) {
            //   final data = QueueExpansionBinModel.fromJson(element);
            //   _orderData.add(data);
            // });
            // PopTable.show<QueueExpansionBinModel>(context, item.name, _orderData, QueuePageExpansionBinColumn.columns);
          },
          child: const Icon(Icons.edit, color: Colors.blue,),
        );
      },
    ),
    OperanceDataColumn<ScanHistoryModel>(
      name: '"holdStatus',
      width: OperanceDataColumnWidth(size: 80.w),
      columnHeader: Text(
        'Hold Status',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(text:
          item.holdStatus,
        );
      },
    ),
    OperanceDataColumn<ScanHistoryModel>(
      name: 'soto',
      columnHeader: Text(
        'SO/TO#',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(text:
          item.soto,
        );
      },
    ),
    OperanceDataColumn<ScanHistoryModel>(
      name: 'customerHold',
      columnHeader: Text(
        'Customer Hold',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(text:
          item.customerHold,
        );
      },
    ),
    OperanceDataColumn<ScanHistoryModel>(
      name: 'loc',
      columnHeader: Text(
        'Loc',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return GestureDetector(
          onTap: () {
            EditLoc.show(context, (){});
          },
          child: BaseText(text: item.loc, textColor: Colors.blue,),
        );
      },
    ),
    OperanceDataColumn<ScanHistoryModel>(
      name: 'itemID',
      columnHeader: Text(
        'Item ID',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return GestureDetector(
          child: BaseText(text: item.itemID, textColor: Colors.blue,),
        );
      },
    ),
    OperanceDataColumn<ScanHistoryModel>(
      name: 'legacyItem',
      //sortable: true,
      columnHeader: Text(
        'Legacy Item',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(text: item.legacyItem,);
      },
    ),
    OperanceDataColumn<ScanHistoryModel>(
      name: 'description',
      width: OperanceDataColumnWidth(size: 100.w),
      columnHeader: Text(
        'Description',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(text:
          item.description,
        );
      },
    ),
    OperanceDataColumn<ScanHistoryModel>(
      name: 'receivedQty',
      columnHeader: Text(
        'Received Qty',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(text:
          item.receivedQty,
        );
      },
    ),
    OperanceDataColumn<ScanHistoryModel>(
      name: 'currentQty',
      columnHeader: Text(
        'Current Qty',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return GestureDetector(
          child: BaseText(text: item.currentQty, textColor: Colors.blue,),
        );
      },
    ),
    OperanceDataColumn<ScanHistoryModel>(
      name: 'bin',
      columnHeader: Text(
        'Bin',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return GestureDetector(
          child: BaseText(text: item.bin, textColor: Colors.blue,),
        );
      },
    ),
    OperanceDataColumn<ScanHistoryModel>(
      name: 'binType',
      columnHeader: Text(
        'Bin Type',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(text:
          item.binType,
        );
      },
    ),
    OperanceDataColumn<ScanHistoryModel>(
      name: 'updateDate',
      columnHeader: Text(
        'Update Date',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(text:
          item.updateDate.toTimeStr(formatted: 'MM/dd/yyyy'),
        );
      },
    ),
    OperanceDataColumn<ScanHistoryModel>(
      name: 'createDate',
      columnHeader: Text(
        'Create Date',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(text:
          item.createDate.toTimeStr(formatted: 'MM/dd/yyyy'),
        );
      },
    ),
    OperanceDataColumn<ScanHistoryModel>(
      name: 'expirationDate',
      columnHeader: Text(
        'Expiration Date',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(text:
          item.expirationDate.toTimeStr(formatted: 'MM/dd/yyyy'),
        );
      },
    ),
    OperanceDataColumn<ScanHistoryModel>(
      name: 'receivedBy',
      columnHeader: Text(
        'Received By',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(text:
          item.receivedBy,
        );
      },
    ),
    OperanceDataColumn<ScanHistoryModel>(
      name: 'po',
      columnHeader: Text(
        'PO',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(text:
          item.po,
        );
      },
    ),
    OperanceDataColumn<ScanHistoryModel>(
      name: 'container',
      columnHeader: Text(
        'Container',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(text:
          item.container,
        );
      },
    ),
    OperanceDataColumn<ScanHistoryModel>(
      name: 'lastReason',
      columnHeader: Text(
        'Last Reason',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(text:
          item.lastReason,
        );
      },
    ),
    OperanceDataColumn<ScanHistoryModel>(
      name: 'reason',
      columnHeader: Text(
        'Reason',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(text:
          item.reason,
        );
      },
    ),
    OperanceDataColumn<ScanHistoryModel>(
      name: 'reprintedBy',
      columnHeader: Text(
        'Reprinted By',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(text:
          item.reprintedBy,
        );
      },
    ),
    OperanceDataColumn<ScanHistoryModel>(
      name: 'reprintedDate',
      columnHeader: Text(
        'Reprinted Date',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(text:
          item.reprintedDate.toTimeStr(formatted: 'MM/dd/yyyy'),
        );
      },
    ),
    OperanceDataColumn<ScanHistoryModel>(
      name: 'reprintedCount',
      columnHeader: Text(
        'Reprinted Count',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(text:
          item.reprintedCount,
        );
      },
    ),
    OperanceDataColumn<ScanHistoryModel>(
      name: 'palletQty',
      columnHeader: Text(
        'PalletQty',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(text:
          item.palletQty,
        );
      },
    ),
    OperanceDataColumn<ScanHistoryModel>(
      name: 'origin',
      columnHeader: Text(
        'Origin',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(text:
          item.origin,
        );
      },
    ),
    OperanceDataColumn<ScanHistoryModel>(
      name: 'unLoader',
      columnHeader: Text(
        'unLoader',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(text:
          item.unLoader,
        );
      },
    ),
  ];
}