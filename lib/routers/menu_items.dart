import 'package:flutter/material.dart';
import 'package:flutter_admin_scaffold/admin_scaffold.dart';

class MenuItems {
  static List<AdminMenuItem> getLeftMenus() {
    // _willCallScheduleMenu().children.forEach((item) {
    //   print(item.title + '  ' + item.title.toLowerCase().replaceAll(' ', '_'));
    // });

    return [
      const AdminMenuItem(
        title: 'Dashboard',
        route: '/',
        icon: Icons.dashboard,
      ),
      // _systemConfigurationMenu(),
      // _supportDocsMenu(),
      // _purchasingMenu(),
      // _manufacturingMenu(),
      // _salesMenu(),
      _receivingMenu(),
      // _shippingMenus(),      //ok
      // _outboundMenu(),
      // _smallParcelMenu(),    //ok
      // _inventoryMenu(),      //ok
      // _returnsMenu(),
      // _systemReviewMenu(),
      // _deletedHistoryMenu(),
      // _willCallScheduleMenu(),
    ];
  }

  static AdminMenuItem _systemConfigurationMenu() {
    return const AdminMenuItem(
      title: 'System Configuration',
      icon: Icons.dashboard,
      children: [
        AdminMenuItem(
          title: 'Manage Users',
          route: '/manage_users',
        ),
        AdminMenuItem(
          title: 'Manage Permissions',
          route: '/manage_permissions',
        ),
        AdminMenuItem(
          title: 'Manage Roles',
          route: '/manage_roles',
        ),
        AdminMenuItem(
          title: 'Warehouse',
          route: '/warehouse',
        ),
        AdminMenuItem(
          title: 'Label Printer',
          route: '/label_printer',
        ),
        AdminMenuItem(
          title: 'User History',
          route: '/user_history',
        ),
        AdminMenuItem(
          title: 'NetSuite Order Sync',
          route: '/net_suite_order_sync',
        ),
        AdminMenuItem(
          title: 'Variables',
          route: '/variables',
        ),
        AdminMenuItem(
          title: 'Bin Specs',
          route: '/bin_specs',
        ),
        AdminMenuItem(
          title: 'Item Spec',
          route: '/item_spec',
        ),
        AdminMenuItem(
          title: 'Scan History',
          route: '/scan_history',
        ),
        AdminMenuItem(
          title: 'Resin Vendor Table',
          route: '/resin_vendor_table',
        ),
        AdminMenuItem(
          title: 'Special Ti/Hi',
          route: '/special_ti_hi',
        ),
        AdminMenuItem(
          title: 'Digital Map',
          route: '/digital_map',
        ),
        AdminMenuItem(
          title: 'Receive/HR Table',
          route: '/receive_hr_table',
        ),
        AdminMenuItem(
          title: 'Box Items',
          route: '/box_items',
        ),
        AdminMenuItem(
          title: 'Truck Type',
          route: '/truck_type',
        ),
        AdminMenuItem(
          title: 'Rack Item Categories',
          route: '/rack_item_categories',
        ),
        AdminMenuItem(
          title: 'Recycle Resin Table',
          route: '/recycle_resin_table',
        ),
        AdminMenuItem(
          title: 'Recycle Resin Rates',
          route: '/recycle_resin_rates',
        ),
        AdminMenuItem(
          title: 'UPS Account',
          route: '/ups_account',
        ),
        AdminMenuItem(
          title: 'GLS Zip Codes',
          route: '/gls_zip_codes',
        ),
        AdminMenuItem(
          title: 'Replen Group',
          route: '/replen_group',
        ),
        AdminMenuItem(
          title: 'Group Manage',
          route: '/group_manage',
        ),
        AdminMenuItem(
          title: 'Machine/BOM Table',
          route: '/machine_bom_table',
        ),
        AdminMenuItem(
          title: 'Shift Table',
          route: '/shift_table',
        ),
        AdminMenuItem(
          title: 'Pre-Route Setup',
          route: '/pre_route_setup',
        ),
        AdminMenuItem(
          title: 'Approval Table',
          route: '/approval_table',
        ),
        AdminMenuItem(
          title: 'Non Order Movement',
          route: '/non_order_movement',
        ),
        AdminMenuItem(
          title: 'Internal Request Items List',
          route: '/internal_request_items_list',
        ),
        AdminMenuItem(
          title: 'Special Stacking',
          route: '/special_stacking',
        ),
        AdminMenuItem(
          title: 'Customers Rate',
          route: '/customers_rate',
        ),
        AdminMenuItem(
          title: 'Warehouse Equipment',
          route: '/warehouse_equipment',
        ),
        AdminMenuItem(
          title: 'Daily MHE Check',
          route: '/daily_mhe_check',
        ),
      ],
    );
  }
  
  static AdminMenuItem _supportDocsMenu() {
    return const AdminMenuItem(
      title: 'Support Docs',
      icon: Icons.dashboard,
      children: [
        AdminMenuItem(
          title: 'PO Support Doc',
          route: '/po_support_doc',
        ),
        AdminMenuItem(
          title: 'SO Support Doc',
          route: '/so_support_doc',
        ),
        AdminMenuItem(
          title: 'Scan Doc',
          route: '/scan_doc',
        ),
        AdminMenuItem(
          title: 'SO Box Doc',
          route: '/so_box_doc',
        ),
        AdminMenuItem(
          title: 'TO Support Doc',
          route: '/to_support_doc',
        ),
        AdminMenuItem(
          title: 'Deleted History',
          route: '/deleted_history',
        ),
      ],
    );
  }
  
  static AdminMenuItem _purchasingMenu() {
    return const AdminMenuItem(
      title: 'Purchasing',
      icon: Icons.dashboard,
      children: [
        AdminMenuItem(
          title: 'Purchase Order',
          route: '/purchase_order',
        ),
        AdminMenuItem(
          title: 'PO Request',
          route: '/po_request',
        ),
        AdminMenuItem(
          title: 'PO Request Approval',
          route: '/po_request_approval',
        ),
        AdminMenuItem(
          title: 'PO Received',
          route: '/po_received',
        ),
        AdminMenuItem(
          title: 'NS Transfer Order',
          route: '/ns_transfer_order',
        ),
        AdminMenuItem(
          title: 'TO Received',
          route: '/to_received',
        ),
        AdminMenuItem(
          title: 'Internal Usage Request',
          route: '/internal_usage_request',
        ),
        AdminMenuItem(
          title: 'Sales Order Shortage Review',
          route: '/sales_order_shortage_review',
        ),
      ],
    );
  }
  
  static AdminMenuItem _manufacturingMenu() {
    return const AdminMenuItem(
      title: 'Manufacturing',
      icon: Icons.dashboard,
      children: [
        AdminMenuItem(
          title: 'Work Order Queue',
          route: '/work_order_queue',
        ),
        AdminMenuItem(
          title: 'Incoming Containers',
          route: '/incoming_containers',
        ),
        AdminMenuItem(
          title: 'Manufacturing PO Received',
          route: '/manufacturing_po_received',
        ),
        AdminMenuItem(
          title: 'Manufacturing Receive',
          route: '/manufacturing_receive',
        ),
        AdminMenuItem(
          title: 'Raw Material Movement',
          route: '/raw_material_movement',
        ),
        AdminMenuItem(
          title: 'Assembly Build History',
          route: '/assembly_build_history',
        ),
        AdminMenuItem(
          title: 'Plastic Extrusion',
          route: '/plastic_extrusion',
        ),
        AdminMenuItem(
          title: 'Plastic Thermoforming',
          route: '/plastic_thermoforming',
        ),
        AdminMenuItem(
          title: 'Paper Slitting',
          route: '/paper_slitting',
        ),
        AdminMenuItem(
          title: 'Manu Completed Containers',
          route: '/manu_completed_containers',
        ),
        AdminMenuItem(
          title: 'Manu Yard Management',
          route: '/manu_yard_management',
        ),
        AdminMenuItem(
          title: 'Plastic Recycle',
          route: '/plastic_recycle',
        ),
        AdminMenuItem(
          title: 'Plastic Print',
          route: '/plastic_print',
        ),
        AdminMenuItem(
          title: 'Paper Printing',
          route: '/paper_printing',
        ),
        AdminMenuItem(
          title: 'Paper Punching',
          route: '/paper_punching',
        ),
        AdminMenuItem(
          title: 'Paper Forming',
          route: '/paper_forming',
        ),
        AdminMenuItem(
          title: 'Manufacturing Audit',
          route: '/manufacturing_audit',
        ),
        AdminMenuItem(
          title: 'Plastic Pre-Recycle',
          route: '/plastic_pre_recycle',
        ),
        AdminMenuItem(
          title: 'Manufacturing TO Receive',
          route: '/manufacturing_to_receive',
        ),
        AdminMenuItem(
          title: 'QC Hold Review',
          route: '/qc_hold_review',
        ),
        AdminMenuItem(
          title: 'QC Plate Number',
          route: '/qc_plate_number',
        ),
        AdminMenuItem(
          title: 'QC Items',
          route: '/qc_items',
        ),
        AdminMenuItem(
          title: 'QPN Release',
          route: '/qpn_release',
        ),
        AdminMenuItem(
          title: 'QPN Release Items',
          route: '/qpn_release_items',
        ),
        AdminMenuItem(
          title: 'Plastic Thermoforming Inline',
          route: '/plastic_thermoforming_inline',
        ),
        AdminMenuItem(
          title: 'Plastic Recycle History',
          route: '/plastic_recycle_history',
        ),
        AdminMenuItem(
          title: 'Plastic Pre-Recycle History',
          route: '/plastic_pre_recycle_history',
        ),
      ],
    );
  }
  
  static AdminMenuItem _salesMenu() {
    return const AdminMenuItem(
      title: 'Sales',
      icon: Icons.dashboard,
      children: [
        AdminMenuItem(
          title: 'Shipping Quote',
          route: '/shipping_quote',
        ),
        AdminMenuItem(
          title: 'SO Cubic Feet',
          route: '/so_cubic_feet',
        ),
        AdminMenuItem(
          title: 'UPS Quote (Item Only)',
          route: '/ups_quote_item_only',
        ),
        AdminMenuItem(
          title: 'Blue Ship Quote',
          route: '/blue_ship_quote',
        ),
        AdminMenuItem(
          title: 'Freight View Quote',
          route: '/freight_view_quote',
        ),
        AdminMenuItem(
          title: 'Freight View History',
          route: '/freight_view_history',
        ),
        AdminMenuItem(
          title: 'Freight View BOL',
          route: '/freight_view_bol',
        ),
        AdminMenuItem(
          title: 'Rack Queue',
          route: '/rack_queue',
        ),
      ],
    );
  }
  
  static AdminMenuItem _receivingMenu() {
    return const AdminMenuItem(
      title: 'Receiving',
      icon: Icons.dashboard,
      children: [
        AdminMenuItem(
          title: 'Incoming Containers',
          route: '/receiving_incoming_containers',
        ),
        AdminMenuItem(
          title: 'Yard Managment',
          route: '/yard_managment',
        ),
        AdminMenuItem(
          title: 'Completed Containers',
          route: '/completed_containers',
        ),
        AdminMenuItem(
          title: 'Receive Scan',
          route: '/receive_scan',
        ),
        AdminMenuItem(
          title: 'Place Holder Pallet',
          route: '/place_holder_pallet',
        ),
        AdminMenuItem(
          title: 'Pallet Movement',
          route: '/receive_pallet_movement',
        ),
        AdminMenuItem(
          title: 'Place Holder List',
          route: '/place_holder_list',
        ),
        AdminMenuItem(
          title: 'Container Inventory',
          route: '/container_inventory',
        ),
        AdminMenuItem(
          title: 'Yard Containers',
          route: '/yard_containers',
        ),
        AdminMenuItem(
          title: 'TO Queue',
          route: '/to_queue',
        ),
        AdminMenuItem(
          title: 'TO Containers',
          route: '/to_containers',
        ),
        AdminMenuItem(
          title: 'TO Yard Management',
          route: '/to_yard_management',
        ),
        AdminMenuItem(
          title: 'TO Completed Containers',
          route: '/to_completed_containers',
        ),
        AdminMenuItem(
          title: 'Transfer Inventory',
          route: '/transfer_inventory',
        ),
        AdminMenuItem(
          title: 'TO Receive Scan',
          route: '/to_receive_scan',
        ),
      ],
    );
  }

  static AdminMenuItem _shippingMenus() {
    return const AdminMenuItem(
      title: 'Shipping',
      icon: Icons.dashboard,
      children: [
        AdminMenuItem(
          title: 'Queue',
          route: '/queue_page',
        ),
        AdminMenuItem(
          title: 'BPN Pick',
          route: '/bpn_pick',
        ),
        AdminMenuItem(
          title: 'SO Pick',
          route: '/so_pick',
        ),
        AdminMenuItem(
          title: 'SO Pick History',
          route: '/so_pick_history',
        ),
        AdminMenuItem(
          title: 'Audit Queue',
          route: '/audit_queue',
        ),
        AdminMenuItem(
          title: 'SO FulFill History',
          route: '/so_fulfill_history',
        ),
        AdminMenuItem(
          title: 'BPN Audit',
          route: '/bpn_audit',
        ),
        AdminMenuItem(
          title: 'Audit',
          route: '/audit',
        ),
        AdminMenuItem(
          title: 'Audit History',
          route: '/audit_history',
        ),
        AdminMenuItem(
          title: 'SO TOS Log',
          route: '/so_tos_log',
        ),
        AdminMenuItem(
          title: 'Staged Pallets',
          route: '/staged_pallets',
        ),
        AdminMenuItem(
          title: 'Dock Loading',
          route: '/dock_loading',
        ),
        AdminMenuItem(
          title: 'Pallet ID Movement',
          route: '/pallet_id_movement',
        ),
        AdminMenuItem(
          title: 'Pallet ID History',
          route: '/pallet_id_history',
        ),
        AdminMenuItem(
          title: 'Item Pick Average',
          route: '/item_pick_average',
        ),
        AdminMenuItem(
          title: 'User Pick KPI',
          route: '/user_pick_kpi',
        ),
        AdminMenuItem(
          title: 'SO TOS Log Summary',
          route: '/so_tos_log_summary',
        ),
        AdminMenuItem(
          title: 'Cross Inventory Lookup',
          route: '/cross_inventory_lookup',
        ),
        AdminMenuItem(
          title: 'SO Pick Progress',
          route: '/so_pick_progress',
        ),
        AdminMenuItem(
          title: 'SO Pick Duration',
          route: '/so_pick_duration',
        ),
        AdminMenuItem(
          title: 'WH Movement',
          route: '/wh_movement',
        ),
        AdminMenuItem(
          title: 'Inventory Transfer',
          route: '/inventory_transfer',
        ),
        AdminMenuItem(
          title: 'Dock Loading (Zoneless)',
          route: '/dock_loading_zone_less',
        ),
        AdminMenuItem(
          title: 'Update Shipped Status',
          route: '/update_shipped_status',
        ),
      ],
    );
  }
  
  static AdminMenuItem _outboundMenu() {
    return const AdminMenuItem(
      title: 'Outbound',
      icon: Icons.dashboard,
      children: [
        AdminMenuItem(
          title: 'Dispatch',
          route: '/dispatch',
        ),
        AdminMenuItem(
          title: 'Order Schedule',
          route: '/order_schedule',
        ),
        AdminMenuItem(
          title: 'Dispatch Commit',
          route: '/dispatch_commit',
        ),
        AdminMenuItem(
          title: 'Invoice Signature',
          route: '/invoice_signature',
        ),
        AdminMenuItem(
          title: 'Manifest',
          route: '/manifest',
        ),
        AdminMenuItem(
          title: '3PL Driver Sign Out',
          route: '/3pl_driver_sign_out',
        ),
        AdminMenuItem(
          title: 'Manifest History',
          route: '/manifest_history',
        ),
        AdminMenuItem(
          title: 'Driver Sign In',
          route: '/driver_sign_in',
        ),
        AdminMenuItem(
          title: '3P Pickup Queue',
          route: '/3p_pickup_queue',
        ),
        AdminMenuItem(
          title: '3P Pickup Schedul',
          route: '/3p_pickup_schedul',
        ),
        AdminMenuItem(
          title: 'DO Dispatch',
          route: '/do_dispatch',
        ),
        AdminMenuItem(
          title: 'DO Manifest History',
          route: '/do_manifest_history',
        ),
        AdminMenuItem(
          title: 'Delivery Orders',
          route: '/delivery_orders',
        ),
        AdminMenuItem(
          title: 'Route Prep',
          route: '/route_prep',
        ),
        AdminMenuItem(
          title: 'Driver Routes',
          route: '/driver_routes',
        ),
        AdminMenuItem(
          title: 'Drivers Mileage',
          route: '/drivers_mileage',
        ),
        AdminMenuItem(
          title: 'Manifest History V2',
          route: '/manifest_history_v2',
        ),
        AdminMenuItem(
          title: 'Vehicle Utilization',
          route: '/vehicle_utilization',
        ),
      ],
    );
  }
  
  static AdminMenuItem _smallParcelMenu() {
    return const AdminMenuItem(
      title: 'Small Parcel',
      icon: Icons.dashboard,
      children: [
        AdminMenuItem(
          title: 'SP Bulk Pick',
          route: '/sp_bulk_pick',
        ),
        AdminMenuItem(
          title: 'SP BP History',
          route: '/sp_bp_history',
        ),
        AdminMenuItem(
          title: 'SP Packing GLS',
          route: '/sp_packing_gls',
        ),
        AdminMenuItem(
          title: 'SP Packing Queue',
          route: '/sp_packing_queue',
        ),
        AdminMenuItem(
          title: 'SP Packing Ups',
          route: '/sp_packing_ups',
        ),
        AdminMenuItem(
          title: 'SP Packing USPS',
          route: '/sp_packing_usps',
        ),
        AdminMenuItem(
          title: 'Sales Sample Packing',
          route: '/sales_sample_packing',
        ),
        AdminMenuItem(
          title: 'Sales Sample History',
          route: '/sales_sample_history',
        ),
        AdminMenuItem(
          title: 'SP Packing Shipment Bypass',
          route: '/sp_packing_shipment_bypass',
        ),
        AdminMenuItem(
          title: 'SP Packing Purolator',
          route: '/sp_packing_purolator',
        ),
        AdminMenuItem(
          title: 'Purolator Closeout',
          route: '/purolator_closeout',
        ),
        AdminMenuItem(
          title: 'SP Packing LSO',
          route: '/sp_packing_lso',
        ),
        AdminMenuItem(
          title: 'SP Packing EasyPost',
          route: '/sp_packing_easy_post',
        ),
        AdminMenuItem(
          title: 'SP Packing History',
          route: '/sp_packing_history',
        ),
        AdminMenuItem(
          title: 'SP Order Groups',
          route: '/sp_order_groups',
        ),
        AdminMenuItem(
          title: 'SP BP Batch Delete',
          route: '/sp_bp_batch_delete',
        ),
        AdminMenuItem(
          title: 'BP TOS Log',
          route: '/bp_tos_log',
        ),
        AdminMenuItem(
          title: 'BP TOS Log Summary',
          route: '/bp_tos_log_summary',
        ),
        AdminMenuItem(
          title: 'SP Box Receive',
          route: '/sp_box_receive',
        ),
        AdminMenuItem(
          title: 'Label Cancelation',
          route: '/label_cancelation',
        ),
        AdminMenuItem(
          title: 'SP Packing',
          route: '/sp_packing',
        ),
      ],
    );
  }
  
  static AdminMenuItem _inventoryMenu() {
    return const AdminMenuItem(
      title: 'Inventory',
      icon: Icons.dashboard,
      children: [
        AdminMenuItem(
          title: 'Bin Count',
          route: '/bin_count',
        ),
        AdminMenuItem(
          title: 'Bin Count History',
          route: '/bin_count_history',
        ),
        AdminMenuItem(
          title: 'Bin Count Check List',
          route: '/bin_count_check_list',
        ),
        AdminMenuItem(
          title: 'Bin Count Summary',
          route: '/bin_count_summary',
        ),
        AdminMenuItem(
          title: 'LPN Condense',
          route: '/lpn_condense',
        ),
        AdminMenuItem(
          title: 'Item Scan',
          route: '/item_scan',
        ),
        AdminMenuItem(
          title: 'Replenishment',
          route: '/replenishment',
        ),
        AdminMenuItem(
          title: 'Pallet Movement Hist',
          route: '/pallet_movement_hist',
        ),
        AdminMenuItem(
          title: 'Cycle Count List',
          route: '/cycle_count_list',
        ),
        AdminMenuItem(
          title: 'Area Count List',
          route: '/area_count_list',
        ),
        AdminMenuItem(
          title: 'Cycle Count History',
          route: '/cycle_count_history',
        ),
        AdminMenuItem(
          title: 'Inventory Movement',
          route: '/inventory_movement',
        ),
        AdminMenuItem(
          title: 'Pallet Movement',
          route: '/pallet_movement',
        ),
        AdminMenuItem(
          title: 'Cycle Count Review',
          route: '/cycle_count_review',
        ),
        AdminMenuItem(
          title: 'Bulk Pallet Movement',
          route: '/bulk_pallet_movement',
        ),
        AdminMenuItem(
          title: 'ItemTotal',
          route: '/item_total',
        ),
        AdminMenuItem(
          title: 'Bin Snapshot',
          route: '/bin_snapshot',
        ),
        AdminMenuItem(
          title: 'Precount List',
          route: '/precount_list',
        ),
        AdminMenuItem(
          title: 'NS Adjustment Review',
          route: '/ns_adjustment_review',
        ),
        AdminMenuItem(
          title: 'NS Adjustment History',
          route: '/ns_adjustment_history',
        ),
        AdminMenuItem(
          title: 'Cancel Orders Review',
          route: '/cancel_orders_review',
        ),
        AdminMenuItem(
          title: 'Rack Replenishment',
          route: '/rack_replenishment',
        ),
        AdminMenuItem(
          title: 'Bin Count Adjustment',
          route: '/bin_count_adjustment',
        ),
        AdminMenuItem(
          title: 'Replenishment History',
          route: '/replenishment_history',
        ),
        AdminMenuItem(
          title: 'Cycle Count V2',
          route: '/cycle_count_v2',
        ),
        AdminMenuItem(
          title: 'Fulfillment Adjustment Request',
          route: '/fulfillment_adjustment_request',
        ),
        AdminMenuItem(
          title: 'Warehouse Usage',
          route: '/warehouse_usage',
        ),
        AdminMenuItem(
          title: 'Bulk Hold',
          route: '/bulk_hold',
        ),
        AdminMenuItem(
          title: 'Internal Request Return List',
          route: '/internal_request_return_list',
        ),
        AdminMenuItem(
          title: 'Pallet Quantity',
          route: '/pallet_quantity',
        ),
        AdminMenuItem(
          title: 'Bulk Plate Number',
          route: '/bulk_plate_number',
        ),
        AdminMenuItem(
          title: 'BPN Movement',
          route: '/bpn_movement',
        ),
        AdminMenuItem(
          title: 'BPN History',
          route: '/bpn_history',
        ),
        AdminMenuItem(
          title: 'Recount',
          route: '/recount',
        ),
        AdminMenuItem(
          title: 'BPN Bulk Count',
          route: '/bpn_bulk_count',
        ),
        AdminMenuItem(
          title: 'Partial Pallet List',
          route: '/partial_pallet_list',
        ),
        AdminMenuItem(
          title: 'LPN Reprint Review',
          route: '/lpn_reprint_review',
        ),
        AdminMenuItem(
          title: 'MP Items Receive',
          route: '/mp_items_receive',
        ),
        AdminMenuItem(
          title: 'Package Receipt',
          route: '/package_receipt',
        ),
        AdminMenuItem(
          title: 'InterDept Item Transfer',
          route: '/interdept_item_transfer',
        ),
        AdminMenuItem(
          title: 'Inventory Count Progress Dashboard',
          route: '/inventory_count_progress_dashboard',
        ),
      ],
    );
  }
  
  static AdminMenuItem _returnsMenu() {
    return const AdminMenuItem(
      title: 'Returns',
      icon: Icons.dashboard,
      children: [
        AdminMenuItem(
          title: 'Return Authorizations',
          route: '/return_authorizations',
        ),
        AdminMenuItem(
          title: 'RA Receive',
          route: '/ra_receive',
        ),
        AdminMenuItem(
          title: 'RA Completed',
          route: '/ra_completed',
        ),
        AdminMenuItem(
          title: 'Damaged Plate Number',
          route: '/damaged_plate_number',
        ),
        AdminMenuItem(
          title: 'Expired Items',
          route: '/expired_items',
        ),
        AdminMenuItem(
          title: 'Damage Items',
          route: '/damage_items',
        ),
        AdminMenuItem(
          title: 'NS Damage Item Review',
          route: '/ns_damage_item_review',
        ),
        AdminMenuItem(
          title: 'DPN Movement',
          route: '/dpn_movement',
        ),
        AdminMenuItem(
          title: 'RA Return Label',
          route: '/ra_return_label',
        ),
        AdminMenuItem(
          title: 'Unknown Returns',
          route: '/unknown_returns',
        ),
        AdminMenuItem(
          title: 'Repackage',
          route: '/repackage',
        ),
        AdminMenuItem(
          title: 'Repacked Item',
          route: '/repacked_item',
        ),
        AdminMenuItem(
          title: 'DPN Transfer',
          route: '/dpn_transfer',
        ),
        AdminMenuItem(
          title: 'Put Away ID',
          route: '/put_away_id',
        ),
        AdminMenuItem(
          title: 'Put Away',
          route: '/put_away',
        ),
        AdminMenuItem(
          title: 'Put Away History',
          route: '/put_away_history',
        ),
      ],
    );
  }
  
  static AdminMenuItem _systemReviewMenu() {
    return const AdminMenuItem(
      title: 'System Review',
      icon: Icons.dashboard,
      children: [
        AdminMenuItem(
          title: 'User Pick History',
          route: '/user_pick_history',
        ),
        AdminMenuItem(
          title: 'Picker KPI Report',
          route: '/picker_kpi_report',
        ),
        AdminMenuItem(
          title: 'WH Bin Discrepancy',
          route: '/wh_bin_discrepancy',
        ),
        AdminMenuItem(
          title: 'Slow Item Review',
          route: '/slow_item_review',
        ),
        AdminMenuItem(
          title: 'ID Bin Review',
          route: '/id_bin_review',
        ),
        AdminMenuItem(
          title: 'Personal Bin Review',
          route: '/personal_bin_review',
        ),
        AdminMenuItem(
          title: 'Temporary Bin Review',
          route: '/temporary_bin_review',
        ),
        AdminMenuItem(
          title: 'Pick QTY Fulfillment Review',
          route: '/pick_qty_fulfillment_review',
        ),
        AdminMenuItem(
          title: 'Login Time',
          route: '/login_time',
        ),
        AdminMenuItem(
          title: 'NS Fulfilled Review',
          route: '/ns_fulfilled_review',
        ),
        AdminMenuItem(
          title: 'Audit Complete Error Log',
          route: '/audit_complete_error_log',
        ),
        AdminMenuItem(
          title: 'Hold History',
          route: '/hold_history',
        ),
        AdminMenuItem(
          title: 'Discontinued Item Review',
          route: '/discontinued_item_review',
        ),
        AdminMenuItem(
          title: 'Checker KPI Report',
          route: '/checker_kpi_report',
        ),
        AdminMenuItem(
          title: 'Receiving KPI Report',
          route: '/receiving_kpi_report',
        ),
        AdminMenuItem(
          title: 'Packing KPI Report',
          route: '/packing_kpi_report',
        ),
        AdminMenuItem(
          title: 'LPN Expiration Review',
          route: '/lpn_expiration_review',
        ),
        AdminMenuItem(
          title: 'Item Scan History',
          route: '/item_scan_history',
        ),
        AdminMenuItem(
          title: 'System Log',
          route: '/system_log',
        ),
        AdminMenuItem(
          title: 'Completed Log',
          route: '/completed_log',
        ),
        AdminMenuItem(
          title: 'Bin Review',
          route: '/bin_review',
        ),
        AdminMenuItem(
          title: 'CA Inventory Percentage',
          route: '/ca_inventory_percentage',
        ),
        AdminMenuItem(
          title: 'Bin Spec History',
          route: '/bin_spec_history',
        ),
        AdminMenuItem(
          title: 'Replenishment KPI',
          route: '/replenishment_kpi',
        ),
        AdminMenuItem(
          title: 'Velocity Class History',
          route: '/velocity_class_history',
        ),
        AdminMenuItem(
          title: 'Over Stock Bin Clear History',
          route: '/over_stock_bin_clear_history',
        ),
        AdminMenuItem(
          title: 'Cycle Count KPI',
          route: '/cycle_count_kpi',
        ),
        AdminMenuItem(
          title: 'Year End Count KPI',
          route: '/year_end_count_kpi',
        ),
        AdminMenuItem(
          title: 'Internal Usage History',
          route: '/internal_usage_history',
        ),
        AdminMenuItem(
          title: 'Rack Team KPI',
          route: '/rack_team_kpi',
        ),
        AdminMenuItem(
          title: 'Receiving KPI Report V2',
          route: '/receiving_kpi_report_v2',
        ),
        AdminMenuItem(
          title: 'Pending Complete PO',
          route: '/pending_complete_po',
        ),
        AdminMenuItem(
          title: 'SO Pick Cancel History',
          route: '/so_pick_cancel_history',
        ),
        AdminMenuItem(
          title: 'Reminder Message List',
          route: '/reminder_message_list',
        ),
        AdminMenuItem(
          title: 'SO Duplicate Review',
          route: '/so_duplicate_review',
        ),
        AdminMenuItem(
          title: 'Workload Statistics',
          route: '/workload_statistics',
        ),
      ],
    );
  }
  
  static AdminMenuItem _deletedHistoryMenu() {
    return const AdminMenuItem(
      title: 'Deleted History',
      icon: Icons.dashboard,
      children: [
        AdminMenuItem(
          title: 'Pick Audit Deleted',
          route: '/pick_audit_deleted',
        ),
        AdminMenuItem(
          title: 'Receive Scan Deleted',
          route: '/receive_scan_deleted',
        ),
        AdminMenuItem(
          title: 'SP Packing Deleted',
          route: '/sp_packing_deleted',
        ),
        AdminMenuItem(
          title: 'Manufacturing Deleted',
          route: '/manufacturing_deleted',
        ),
      ],
    );
  }
  
  static AdminMenuItem _willCallScheduleMenu() {
    return const AdminMenuItem(
      title: 'Will Call Schedule',
      icon: Icons.dashboard,
      children: [
        AdminMenuItem(
          title: 'Pre-Pull Log',
          route: '/pre_pull_log',
        ),
        AdminMenuItem(
          title: 'Will Call Duty',
          route: '/will_call_duty',
        ),
      ],
    );
  }

  static List<AdminMenuItem> getAdminMenus() {
    return [
      const AdminMenuItem(
        title: 'User Profile',
        icon: Icons.account_circle,
        route: '/',
      ),
      const AdminMenuItem(
        title: 'Settings',
        icon: Icons.settings,
        route: '/',
      ),
      const AdminMenuItem(
        title: 'Logout',
        icon: Icons.logout,
        route: '/',
      ),
    ];
  }
}
