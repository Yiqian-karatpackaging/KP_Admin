import '../pickup_queue.dart';

class PickupQueueListColumn {
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


  static List<OperanceDataColumn<PickupQueueListModel>> columns = [
    OperanceDataColumn<PickupQueueListModel>(
      name: 'Delete',
      columnHeader: Text(
        'Delete',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: '',
        );
      },
    ),
    OperanceDataColumn<PickupQueueListModel>(
      name: 'Check-in',
      columnHeader: Text(
        'Check-in',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.checkIn,
        );
      },
    ),
    OperanceDataColumn<PickupQueueListModel>(
      name: 'Appointment Time',
      columnHeader: Text(
        'Appointment Time',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.appointmentTime,
        );
      },
    ),
    OperanceDataColumn<PickupQueueListModel>(
      name: 'Date',
      columnHeader: Text(
        'Date',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.date,
        );
      },
    ),
    OperanceDataColumn<PickupQueueListModel>(
      name: 'Time Waited',
      columnHeader: Text(
        'Time Waited',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.timeWaited,
        );
      },
    ),
    OperanceDataColumn<PickupQueueListModel>(
      name: 'Order Status',
      columnHeader: Text(
        'Order Status',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.orderStatus,
        );
      },
    ),
    OperanceDataColumn<PickupQueueListModel>(
      name: 'Completed Time',
      columnHeader: Text(
        'Completed Time',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.completedTime,
        );
      },
    ),
    OperanceDataColumn<PickupQueueListModel>(
      name: 'Receiving Hours',
      columnHeader: Text(
        'Receiving Hours',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.receivingHours,
        );
      },
    ),
    OperanceDataColumn<PickupQueueListModel>(
      name: 'Driver Name',
      columnHeader: Text(
        'Driver Name',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.driverName,
        );
      },
    ),
    OperanceDataColumn<PickupQueueListModel>(
      name: 'Carrier Name',
      columnHeader: Text(
        'Carrier Name',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.carrierName,
        );
      },
    ),
    OperanceDataColumn<PickupQueueListModel>(
      name: 'Customer Name',
      columnHeader: Text(
        'Customer Name',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.customerName,
        );
      },
    ),
    OperanceDataColumn<PickupQueueListModel>(
      name: 'PO#/Ref#',
      columnHeader: Text(
        'PO#/Ref#',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.poRef,
        );
      },
    ),
    OperanceDataColumn<PickupQueueListModel>(
      name: 'SO#',
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
    OperanceDataColumn<PickupQueueListModel>(
      name: 'Phone#',
      columnHeader: Text(
        'Phone#',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.phone,
        );
      },
    ),
    OperanceDataColumn<PickupQueueListModel>(
      name: 'Dock#',
      columnHeader: Text(
        'Dock#',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.dock,
        );
      },
    ),
    OperanceDataColumn<PickupQueueListModel>(
      name: 'WH',
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
    OperanceDataColumn<PickupQueueListModel>(
      name: 'Loader',
      columnHeader: Text(
        'Loader',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.loader,
        );
      },
    ),
    OperanceDataColumn<PickupQueueListModel>(
      name: 'Pallet Count',
      columnHeader: Text(
        'Pallet Count',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: item.palletCount,
        );
      },
    ),
    OperanceDataColumn<PickupQueueListModel>(
      name: 'Memo',
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
    OperanceDataColumn<PickupQueueListModel>(
      name: 'Action',
      columnHeader: Text(
        'Action',
        style: columnHeaderStyle,
      ),
      cellBuilder: (context, item) {
        return BaseText(
          text: '',
        );
      },
    ),
  ];
}
