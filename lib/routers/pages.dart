import 'package:kp_admin/src/common/pdf_page.dart';
import 'package:kp_admin/src/common/scan_page.dart';
import 'package:kp_admin/src/dashboard/dashboard_page.dart';
import 'package:kp_admin/src/inventory/cycle_count_list/cycle_count_list_page.dart';
import 'package:kp_admin/src/login/login_page.dart';
import 'package:kp_admin/src/shipping/shipping.dart';
import 'package:kp_admin/src/shipping/update_shipped_status/update_shipped_status.dart';
import 'package:kp_admin/src/system_configuration/system_configuration.dart';
import 'package:kp_admin/src/small_parcel/small_parcel.dart';
import 'package:kp_admin/src/inventory/inventory.dart';

class Pages {
  static Widget? getPageWidget(RouteSettings settings) {
    if (settings.name == null) {
      return null;
    }
    final uri = Uri.parse(settings.name!);
    Map<String, dynamic> arguments = {};
    if (!fxEmpty(settings.arguments) &&
        settings.arguments is Map<String, dynamic>) {
      arguments = settings.arguments as Map<String, dynamic>;
    }

    switch (uri.path) {
      case '/':
        //   return const LoginPage();
        // case '/dashboard':
        return const DashboardPage();

      /// SystemConfiguration ⬇
      case '/manage_users':
        return ManageUsersPage();
      case '/edit_manage_user':
        return const EditUserPage();
      case '/manage_permissions':
        return ManagePermissionsPage();
      case '/manage_roles':
        return ManageRolesPage();
      case '/edit_roles':
        return EditRolesPage();
      case '/warehouse':
        return WarehousePage();
      case '/label_printer':
        return LabelPrinterPage();
      case '/user_history':
        return UserHistoryPage();
      case '/net_suite_order_sync':
        return NetSuiteOrderSyncPage();
      case '/variables':
        return VariablesPage();
      case '/bin_specs':
        return BinSpecsPage();
      case '/item_spec':
        return ItemSpecPage();
      case '/scan_history':
        return ScanHistoryPage();
      case '/resin_vendor_table':
        return ResinVendorTablePage();
      case '/special_ti_hi':
        return SpecialTiHiPage();
      case '/digital_map':
        return DigitalMapPage();
      case '/receive_hr_table':
        return ReceiveHrTablePage();
      case '/box_items':
        return BoxItemsPage();
      case '/truck_type':
        return TruckTypePage();
      case '/rack_item_categories':
        return RackItemCategoriesPage();
      case '/recycle_resin_table':
        return RecycleResinTablePage();
      case '/recycle_resin_rates':
        return RecycleResinRatesPage();
      case '/ups_account':
        return UPSAccountPage();
      case '/gls_zip_codes':
        return GLSZipCodesPage();
      case '/replen_group':
        return ReplenGroupPage();
      case '/group_manage':
        return GroupManagePage();
      case '/machine_bom_table':
        return MachineBomTablePage();
      case '/shift_table':
        return ShiftTablePage();
      case '/pre_route_setup':
        return PreRouteSetupPage();
      case '/approval_table':
        return ApprovalTablePage();
      case '/non_order_movement':
        return NonOrderMovementPage();
      case '/internal_request_items_list':
        return InternalRequestItemsListPage();
      case '/special_stacking':
        return SpecialStackingPage();
      case '/customers_rate':
        return CustomersRatePage();
      case '/warehouse_equipment':
        return WarehouseEquipmentPage();
      case '/daily_mhe_check':
        return DailyMheCheckPage();

      /// SystemConfiguration ⬆

      /// shipping ⬇
      case '/queue_page':
        return QueuePage();
      case '/bpn_pick':
        return BPNPickPage();
      case '/so_pick':
        return SOPickPage();
      case '/so_pick_history':
        return SoPickHistoryPage();
      case '/audit_queue':
        return AuditQueuePage();
      case '/so_fulfill_history':
        return SOFulfillHistoryPage();
      case '/bpn_audit':
        return BPNAuditPage();
      case '/audit':
        return AuditPage();
      case '/audit_history':
        return AuditHistoryPage();
      case '/so_tos_log':
        return SOTOSLogPage();
      case '/staged_pallets':
        return StagedPalletsPage();
      case '/dock_loading':
        return DockLoadingPage();
      case '/pallet_id_movement':
        return PalletIdMovementPage();
      case '/pallet_id_history':
        return PalletIdHistoryPage();
      case '/item_pick_average':
        return ItemPickAveragePage();
      case '/user_pick_kpi':
        return UserPickKPIPage();
      case '/so_tos_log_summary':
        return SOTOSLogSummaryPage();
      case '/cross_inventory_lookup':
        return CrossInventoryLookupPage();
      case '/so_pick_progress':
        return SOPickProgressPage();
      case '/so_pick_duration':
        return SOPickDurationPage();
      case '/wh_movement':
        return WHMovementPage();
      case '/inventory_transfer':
        return InventoryTransferPage();
      case '/dock_loading_zone_less':
        return DockLoadingZoneLessPage();
      case '/update_shipped_status':
        return UpdateShippedStatusPage();

      /// shipping ⬆

      /// SmallParcel ⬇
      case '/sp_bulk_pick':
        return SPBulkPickPage();
      case '/sp_bp_history':
        return SPBpHistoryPage();
      case '/sp_packing_gls':
        return SPPackingGlsPage();
      case '/sp_packing_queue':
        return SPPackingQueuePage();
      case '/sp_packing_ups':
        return SPPackingUpsPage();
      case '/sp_packing_usps':
        return SPPackingUspsPage();
      case '/sales_sample_packing':
        return SalesSamplePackingPage();
      case '/sales_sample_history':
        return SalesSampleHistoryPage();
      case '/sp_packing_shipment_bypass':
        return SPPackingShipmentBypassPage();
      case '/sp_packing_purolator':
        return SPPackingPurolatorPage();
      case '/purolator_closeout':
        return PurolatorCloseoutPage();
      case '/sp_packing_lso':
        return SPPackingLsoPage();
      case '/sp_packing_easy_post':
        return SPPackingEasyPostPage();
      case '/sp_packing_history':
        return SPPackingHistoryPage();
      case '/sp_order_groups':
        return SPOrderGroupsPage();
      case '/sp_bp_batch_delete':
        return SPBPBatchDeletePage();
      case '/bp_tos_log':
        return BPTOSLogPage();
      case '/bp_tos_log_summary':
        return BPTosLogSummaryPage();
      case '/sp_box_receive':
        return SPBoxReceivePage();
      case '/label_cancelation':
        return LabelCancelationPage();
      case '/sp_packing':
        return SPPackingPage();

      /// SmallParcel ⬆

      /// Inventory ⬇
      case '/bin_count':
        return BinCountPage();
      case '/bin_count_history':
        return BinCountHistoryPage();
      case '/bin_count_check_list':
        return BinCountCheckListPage();
      case '/bin_count_summary':
        return BinCountSummaryPage();
      case '/lpn_condense':
        return LPNCondensePage();
      case '/item_scan':
        return ItemScanPage();
      case '/replenishment':
        return ReplenishmentPage();
      case '/pallet_movement_hist':
        return PalletMovementHistPage();
      case '/cycle_count_list':
        return CycleCountListPage();
      case '/area_count_list':
        return AreaCountListPage();
      case '/cycle_count_history':
        return CycleCountHistoryPage();
      case '/inventory_movement':
        return InventoryMovementPage();
      case '/pallet_movement':
        return PalletMovementPage();
      case '/cycle_count_review':
        return CycleCountReviewPage();
      case '/bulk_pallet_movement':
        return BulkPalletMovementPage();
      case '/item_total':
        return ItemTotalPage();
      case '/bin_snapshot':
        return BinSnapshotPage();
      case '/precount_list':
        return PrecountListPage();
      case '/ns_adjustment_review':
        return NSAdjustmentReviewPage();
      case '/ns_adjustment_history':
        return NSAdjustmentHistoryPage();
      case '/cancel_orders_review':
        return CancelOrdersReviewPage();
      case '/rack_replenishment':
        return RackReplenishmentPage();
      case '/bin_count_adjustment':
        return BinCountAdjustmentPage();
      case '/replenishment_history':
        return ReplenishmentHistoryPage();
      case '/cycle_count_v2':
        return CycleCountV2Page();
      case '/fulfillment_adjustment_request':
        return FulfillmentAdjustmentRequestPage();
      case '/warehouse_usage':
        return WarehouseUsagePage();
      case '/bulk_hold':
        return BulkHoldPage();
      case '/internal_request_return_list':
        return InternalRequestReturnListPage();
      case '/pallet_quantity':
        return PalletQuantityPage();
      case '/bulk_plate_number':
        return BulkPlateNumberPage();
      case '/bpn_movement':
        return BPNMovementPage();
      case '/bpn_history':
        return BPNHistoryPage();
      case '/recount':
        return RecountPage();
      case '/bpn_bulk_count':
        return BPNBulkCountPage();
      case '/partial_pallet_list':
        return PartialPalletListPage();
      case '/lpn_reprint_review':
        return LPNReprintReviewPage();
      case '/mp_items_receive':
        return MPItemsReceivePage();
      case '/package_receipt':
        return PackageReceiptPage();
      case '/interdept_item_transfer':
        return InterDeptItemTransferPage();
      case '/inventory_count_progress_dashboard':
        return InventoryCountProgressDashboardPage();

      /// Inventory ⬆

      case '/pdf':
        return PDFPage(arguments['url'] ?? '');
      case '/scan':
        return ScanPage();
    }

    return null;
  }
}
