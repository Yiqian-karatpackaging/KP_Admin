import 'package:kp_admin/src/common/pdf_page.dart';
import 'package:kp_admin/src/common/scan_page.dart';
import 'package:kp_admin/src/dashboard/dashboard_page.dart';
import 'package:kp_admin/src/deleted_history/deleted_history.dart';
import 'package:kp_admin/src/inventory/cycle_count_list/cycle_count_list_page.dart';
import 'package:kp_admin/src/login/login_page.dart';
import 'package:kp_admin/src/manufacturing/manufacturing.dart';
import 'package:kp_admin/src/receiving/receiving.dart';
import 'package:kp_admin/src/shipping/shipping.dart';
import 'package:kp_admin/src/shipping/update_shipped_status/update_shipped_status.dart';
import 'package:kp_admin/src/system_configuration/system_configuration.dart';
import 'package:kp_admin/src/small_parcel/small_parcel.dart';
import 'package:kp_admin/src/inventory/inventory.dart';
import 'package:kp_admin/src/outbound/outbound.dart';
import 'package:kp_admin/src/support_docs/support_docs.dart';
import 'package:kp_admin/src/purchasing/purchasing.dart';
import 'package:kp_admin/src/sales/sales.dart';
import 'package:kp_admin/src/returns/returns.dart';
import 'package:kp_admin/src/system_review/system_review.dart';
import 'package:kp_admin/src/will_call_schedule/will_call_schedule.dart';

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

      /// Support Docs ⬇
      case '/po_support_doc':
        return POSupportDocPage();
      case '/so_support_doc':
        return SOSupportDocPage();
      case '/scan_doc':
        return ScanDocPage();
      case '/so_box_doc':
        return SOBoxDocPage();
      case '/to_support_doc':
        return ToSupportDocPage();
      case '/deleted_history':
        return DeletedHistoryPage();
      /// Support Docs ⬆

      /// Purchasing ⬇
      case '/purchase_order':
        return PurchaseOrderPage();
      case '/po_request':
        return PORequestPage();
      case '/po_request_approval':
        return PORequestApprovalPage();
      case '/po_received':
        return POReceivedPage();
      case '/ns_transfer_order':
        return NSTransferOrderPage();
      case '/to_received':
        return TOReceivedPage();
        case '/internal_usage_request':
      return InternalUsageRequestPage();
      case '/sales_order_shortage_review':
        return SalesOrderShortageReviewPage();
      /// Purchasing ⬆

      /// Manufacturing ⬇
      case '/work_order_queue':
        return const WorkOrderQueuePage();
      case '/incoming_containers':
        return const IncomingContainersPage();
      case '/manufacturing_po_received':
        return const ManufacturingPoReceivedPage();
      case '/manufacturing_receive':
        return const ManufacturingReceivePage();
      case '/raw_material_movement':
        return const RawMaterialMovementPage();
      case '/assembly_build_history':
        return const AssemblyBuildHistoryPage();
      case '/plastic_extrusion':
        return const PlasticExtrusionPage();
      case '/plastic_thermoforming':
        return const PlasticThermoformingPage();
      case '/paper_slitting':
        return const PaperSlittingPage();
      case '/manu_completed_containers':
        return const ManuCompletedContainersPage();
      case '/manu_yard_management':
        return const ManuYardManagementPage();
      case '/plastic_recycle':
        return const PlasticRecyclePage();
      case '/plastic_print':
        return const PlasticPrintPage();
      case '/paper_printing':
        return const PaperPrintingPage();
      case '/paper_punching':
        return const PaperPunchingPage();
      case '/paper_forming':
        return const PaperFormingPage();
      case '/manufacturing_audit':
        return const ManufacturingAuditPage();
      case '/plastic_pre_recycle':
        return const PlasticPreRecyclePage();
      case '/manufacturing_to_receive':
        return const ManufacturingToReceivePage();
      case '/qc_hold_review':
        return const QCHoldReviewPage();
      case '/qc_plate_number':
        return const QCPlateNumberPage();
      case '/qc_items':
        return const QCItemsPage();
      case '/qpn_release':
        return const QPNReleasePage();
      case '/qpn_release_items':
        return const QPNReleaseItemsPage();
      case '/plastic_thermoforming_inline':
        return const PlasticThermoformingInlinePage();
      case '/plastic_recycle_history':
        return const PlasticRecycleHistoryPage();
      case '/plastic_pre_recycle_history':
        return const PlasticPreRecycleHistoryPage();
      /// Manufacturing ⬆

      /// Sales ⬇
      case '/shipping_quote':
        return const ShippingQuotePage();
      case '/so_cubic_feet':
        return const SOCubicFeetPage();
      case '/ups_quote_item_only':
        return const UPSQuoteItemOnlyPage();
      case '/blue_ship_quote':
        return const BlueShipQuotePage();
      case '/freight_view_quote':
        return const FreightViewQuotePage();
      case '/freight_view_history':
        return const FreightViewHistoryPage();
      case '/freight_view_bol':
        return const FreightViewBolPage();
      case '/rack_queue':
        return const RackQueuePage();
      /// Sales ⬆

      /// Receiving ⬇
      case '/receiving_incoming_containers':
        return const ReceivingIncomingContainersPage();
      case '/yard_managment':
        return const YardManagmentPage();
      case '/completed_containers':
        return const CompletedContainersPage();
      case '/receive_scan':
        return const ReceiveScanPage();
      case '/place_holder_pallet':
        return const PlaceHolderPalletPage();
      case '/receive_pallet_movement':
        return const ReceivePalletMovementPage();
      case '/place_holder_list':
        return const PlaceHolderListPage();
      case '/container_inventory':
        return const ContainerInventoryPage();
      case '/yard_containers':
        return const YardContainersPage();
      case '/to_queue':
        return const TOQueuePage();
      case '/to_containers':
        return const TOContainersPage();
      case '/to_yard_management':
        return const ToYardManagementPage();
      case '/to_completed_containers':
        return const ToCompletedContainersPage();
      case '/transfer_inventory':
        return const TransferInventoryPage();
      case '/to_receive_scan':
        return const ToReceiveScanPage();
      /// Receiving ⬆

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

      /// Outbound ⬇
      case '/dispatch':
        return DispatchPage();
      case '/order_schedule':
        return OrderSchedulePage();
      case '/dispatch_commit':
        return DispatchCommitPage();
      case '/invoice_signature':
        return InvoiceSignaturePage();
      case '/manifest':
        return ManifestPage();
      case '/3pl_driver_sign_out':
        return DriverSignOutPage();
      case '/manifest_history':
        return ManifestHistoryPage();
      case '/driver_sign_in':
        return DriverSignInPage();
      case '/3p_pickup_queue':
        return PickupQueuePage();
      case '/3p_pickup_schedul':
        return PickupSchedulPage();
      case '/do_dispatch':
        return DoDispatchPage();
      case '/do_manifest_history':
        return DoManifestHistoryPage();
      case '/delivery_orders':
        return DeliveryOrdersPage();
      case '/route_prep':
        return RoutePrepPage();
      case '/driver_routes':
        return DriverRoutesPage();
      case '/drivers_mileage':
        return DriversMileagePage();
      case '/manifest_history_v2':
        return ManifestHistoryV2Page();
      case '/vehicle_utilization':
        return VehicleUtilizationPage();
      /// Outbound ⬆

      /// Small Parcel ⬇
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

      /// Small Parcel ⬆

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

      /// Returns ⬇
      case '/return_authorizations':
        return const ReturnAuthorizationsPage();
      case '/ra_receive':
        return const RaReceivePage();
      case '/ra_completed':
        return const RaCompletedPage();
      case '/damaged_plate_number':
        return const DamagedPlateNumberPage();
      case '/expired_items':
        return const ExpiredItemsPage();
      case '/damage_items':
        return const DamageItemsPage();
      case '/ns_damage_item_review':
        return const NsDamageItemReviewPage();
      case '/dpn_movement':
        return const DpnMovementPage();
      case '/ra_return_label':
        return const RaReturnLabelPage();
      case '/unknown_returns':
        return const UnknownReturnsPage();
      case '/repackage':
        return const RepackagePage();
      case '/repacked_item':
        return const RepackedItemPage();
      case '/dpn_transfer':
        return const DpnTransferPage();
      case '/put_away_id':
        return const PutAwayIdPage();
      case '/put_away':
        return const PutAwayPage();
      case '/put_away_history':
        return const PutAwayHistoryPage();
      /// Returns ⬆

      /// System Review ⬇
      case '/user_pick_history':
        return const UserPickHistoryPage();
      case '/picker_kpi_report':
        return const PickerKpiReportPage();
      case '/wh_bin_discrepancy':
        return const WhBinDiscrepancyPage();
      case '/slow_item_review':
        return const SlowItemReviewPage();
      case '/id_bin_review':
        return const IdBinReviewPage();
      case '/personal_bin_review':
        return const PersonalBinReviewPage();
      case '/temporary_bin_review':
        return const TemporaryBinReviewPage();
      case '/pick_qty_fulfillment_review':
        return const PickQtyFulfillmentReviewPage();
      case '/login_time':
        return const LoginTimePage();
      case '/ns_fulfilled_review':
        return const NsFulfilledReviewPage();
      case '/audit_complete_error_log':
        return const AuditCompleteErrorLogPage();
      case '/hold_history':
        return const HoldHistoryPage();
      case '/discontinued_item_review':
        return const DiscontinuedItemReviewPage();
      case '/checker_kpi_report':
        return const CheckerKpiReportPage();
      case '/receiving_kpi_report':
        return const ReceivingKpiReportPage();
      case '/packing_kpi_report':
        return const PackingKpiReportPage();
      case '/lpn_expiration_review':
        return const LpnExpirationReviewPage();
      case '/item_scan_history':
        return const ItemScanHistoryPage();
      case '/system_log':
        return const SystemLogPage();
      case '/completed_log':
        return const CompletedLogPage();
      case '/bin_review':
        return const BinReviewPage();
      case '/ca_inventory_percentage':
        return const CaInventoryPercentagePage();
      case '/bin_spec_history':
        return const BinSpecHistoryPage();
      case '/replenishment_kpi':
        return const ReplenishmentKpiPage();
      case '/velocity_class_history':
        return const VelocityClassHistoryPage();
      case '/over_stock_bin_clear_history':
        return const OverStockBinClearHistoryPage();
      case '/cycle_count_kpi':
        return const CycleCountKpiPage();
      case '/year_end_count_kpi':
        return const YearEndCountKpiPage();
      case '/internal_usage_history':
        return const InternalUsageHistoryPage();
      case '/rack_team_kpi':
        return const RackTeamKpiPage();
      case '/receiving_kpi_report_v2':
        return const ReceivingKpiReportV2Page();
      case '/pending_complete_po':
        return const PendingCompletePoPage();
      case '/so_pick_cancel_history':
        return const SoPickCancelHistoryPage();
      case '/reminder_message_list':
        return const ReminderMessageListPage();
      case '/so_duplicate_review':
        return const SoDuplicateReviewPage();
      case '/workload_statistics':
        return const WorkloadStatisticsPage();
      /// System Review ⬆

      /// Deleted History ⬇
      case '/pick_audit_deleted':
        return PickAuditDeletedPage();
      case '/receive_scan_deleted':
        return ReceiveScanDeletedPage();
      case '/sp_packing_deleted':
        return SpPackingDeletedPage();
      case '/manufacturing_deleted':
        return ManufacturingDeletedPage();
      /// Deleted History ⬆

    /// Deleted History ⬇
      case '/pre_pull_log':
        return PrePullLogPage();
      case '/will_call_duty':
        return WillCallDutyPage();
      /// Deleted History ⬆

      case '/pdf':
        return PDFPage(arguments['url'] ?? '');
      case '/scan':
        return ScanPage();
    }

    return null;
  }
}
