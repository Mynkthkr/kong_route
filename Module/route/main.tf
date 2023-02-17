resource "kong_route" "route" {
  name           = var.route_name
  protocols      = var.route_protocols
  hosts          = var.route_hosts
  paths          = var.route_paths
  strip_path     = var.route_strip_path
  preserve_host  = var.route_preserve_host
  regex_priority = var.route_regex_priority
  service_id     = var.service_id
}