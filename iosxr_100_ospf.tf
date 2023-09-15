resource "iosxr_router_ospf" "ospf_process" {
  for_each       = var.routers_info
  device         = each.key
  process_name   = local.ospf_process_id
  hello_interval = local.hello_interval
  dead_interval  = local.dead_interval
  priority       = local.priority

  router_id = each.value.loopback_ipv4

  areas = [
    {
      area_id = "0"
    }
  ]

}