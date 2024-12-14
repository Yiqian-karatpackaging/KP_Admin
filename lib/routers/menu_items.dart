import 'package:flutter/material.dart';
import 'package:flutter_admin_scaffold/admin_scaffold.dart';

class MenuItems {
  static List<AdminMenuItem> getLeftMenus() {
    _inventoryMenu().children.forEach((item) {
      print(item.title.toLowerCase().replaceAll(' ', '_'));
    });

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
      // _receivingMenu(),
      _shippingMenus(),
      // _outboundMenu(),
      _smallParcelMenu(),
      _inventoryMenu(),
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
          title: 'Second Level Item 1',
          route: '',
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
          title: 'Second Level Item 1',
          route: '',
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
          title: 'Second Level Item 1',
          route: '',
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
          title: 'Second Level Item 1',
          route: '',
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
          title: 'Second Level Item 1',
          route: '',
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
          title: 'Second Level Item 1',
          route: '',
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
          title: 'Second Level Item 1',
          route: '',
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
          title: 'Second Level Item 1',
          route: '',
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
          title: 'Second Level Item 1',
          route: '',
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
          title: 'Second Level Item 1',
          route: '',
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
