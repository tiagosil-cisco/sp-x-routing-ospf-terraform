resource "iosxr_router_ospf_area_interface" "interfaces" {
  for_each                    = local.ospf_interfaces
  device                      = each.value.device
  process_name                = local.ospf_process_id
  area_id                     = each.value.area
  interface_name              = each.value.interface_id
  network_broadcast           = each.value.network_broadcast
  network_non_broadcast       = each.value.network_non_broadcast
  network_point_to_point      = each.value.network_point_to_point
  network_point_to_multipoint = each.value.network_point_to_multipoint
  passive_enable              = each.value.passive_enable

}